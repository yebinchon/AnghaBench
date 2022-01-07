
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_extent_index {int ei_leaf_lo; int ei_leaf_hi; } ;
typedef int e4fs_daddr_t ;



__attribute__((used)) static inline void
ext4_index_store_pblock(struct ext4_extent_index *index, e4fs_daddr_t pb)
{

 index->ei_leaf_lo = pb & 0xffffffff;
 index->ei_leaf_hi = (pb >> 32) & 0xffff;
}
