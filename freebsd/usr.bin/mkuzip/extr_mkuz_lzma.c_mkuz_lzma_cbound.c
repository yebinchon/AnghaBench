
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t lzma_stream_buffer_bound (size_t) ;

size_t
mkuz_lzma_cbound(size_t blksz)
{
 return (lzma_stream_buffer_bound(blksz));
}
