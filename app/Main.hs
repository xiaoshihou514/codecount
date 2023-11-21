module Main where

import Fs
import Git
import Print
import System.Directory (getCurrentDirectory)

main :: IO ()
main = do
  currentDir <- getCurrentDirectory
  gitDir <- findGitDir currentDir
  counts <- traverseCount gitDir
  prettyPrint counts
  return 0
