
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct namedobj_instance {int max_blocks; int * idx_mask; } ;


 int IPFW_MAX_SETS ;
 int memcpy (int *,int *,int) ;

void
ipfw_objhash_bitmap_merge(struct namedobj_instance *ni, void **idx, int *blocks)
{
 int old_blocks, new_blocks;
 u_long *old_idx, *new_idx;
 int i;

 old_idx = ni->idx_mask;
 old_blocks = ni->max_blocks;
 new_idx = *idx;
 new_blocks = *blocks;

 for (i = 0; i < IPFW_MAX_SETS; i++) {
  memcpy(&new_idx[new_blocks * i], &old_idx[old_blocks * i],
      old_blocks * sizeof(u_long));
 }
}
