
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int idx; } ;
typedef TYPE_1__ xz_file_info ;
typedef int off_t ;


 TYPE_1__ XZ_FILE_INFO_INIT ;
 int lzma_index_end (int ,int *) ;
 int lzma_index_uncompressed_size (int ) ;
 int parse_indexes (TYPE_1__*,int) ;

off_t
unxz_len(int fd)
{
 xz_file_info xfi = XZ_FILE_INFO_INIT;
 if (!parse_indexes(&xfi, fd)) {
  off_t res = lzma_index_uncompressed_size(xfi.idx);
  lzma_index_end(xfi.idx, ((void*)0));
  return res;
 }
 return 0;
}
