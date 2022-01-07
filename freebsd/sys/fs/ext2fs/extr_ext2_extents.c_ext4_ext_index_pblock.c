
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_extent_index {int ei_leaf_lo; scalar_t__ ei_leaf_hi; } ;
typedef int e4fs_daddr_t ;



__attribute__((used)) static inline e4fs_daddr_t
ext4_ext_index_pblock(struct ext4_extent_index *index)
{
 e4fs_daddr_t blk;

 blk = index->ei_leaf_lo;
 blk |= (e4fs_daddr_t)index->ei_leaf_hi << 32;

 return (blk);
}
