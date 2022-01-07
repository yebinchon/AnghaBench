
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t compressBound (size_t) ;

size_t
mkuz_zlib_cbound(size_t blksz)
{
 return (compressBound(blksz));
}
