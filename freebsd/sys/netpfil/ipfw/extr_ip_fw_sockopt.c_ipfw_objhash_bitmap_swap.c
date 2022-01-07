
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct namedobj_instance {int max_blocks; int * idx_mask; } ;



void
ipfw_objhash_bitmap_swap(struct namedobj_instance *ni, void **idx, int *blocks)
{
 int old_blocks;
 u_long *old_idx;

 old_idx = ni->idx_mask;
 old_blocks = ni->max_blocks;

 ni->idx_mask = *idx;
 ni->max_blocks = *blocks;


 *idx = old_idx;
 *blocks = old_blocks;
}
