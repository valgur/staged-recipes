#!/bin/bash

autoreconf -fiv

./configure --prefix=$PREFIX \
    --enable-shared=yes \
    --enable-static=yes \
    --with-jpeg8
make
make check
make install
