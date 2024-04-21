#!/usr/bin/env bash
set -e
SOURCE_PROJECT=$( pwd )
WEBAPP_SOURCE="$SOURCE_PROJECT/webapp-tuantv"
STENCIL_COMPONENT_SOURCE="$SOURCE_PROJECT/stencil-componentlibrary"
main() {
  (cd $STENCIL_COMPONENT_SOURCE/
  npm run build
  rm -rf $WEBAPP_SOURCE/public/stencil-componentlibrary
  cp -r dist/stencil-componentlibrary $WEBAPP_SOURCE/public/stencil-componentlibrary
  )
}

main