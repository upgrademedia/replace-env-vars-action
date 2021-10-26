#!/usr/bin/env bash

set -e
FILENAME=$1

if [ -z $FILENAME ]; then
  echo 'The path to the file is required'
  exit 1
fi

while IFS='=' read -r var1 var2; do
  echo "Setting ${var1} to ${var2} "
  echo ${var[1]} | wc -l
  sed -i "s|__${var1}__|${var2}|g" $FILENAME
done < <(printenv)
