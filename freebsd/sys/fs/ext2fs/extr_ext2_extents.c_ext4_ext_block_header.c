
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_extent_header {int dummy; } ;



__attribute__((used)) static inline struct ext4_extent_header *
ext4_ext_block_header(char *bdata)
{

 return ((struct ext4_extent_header *)bdata);
}
