
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_long ;
struct namedobj_instance {int max_blocks; int* idx_mask; int* free_off; } ;


 int BLOCK_ITEMS ;

int
ipfw_objhash_free_idx(struct namedobj_instance *ni, uint16_t idx)
{
 u_long *mask;
 int i, v;

 i = idx / BLOCK_ITEMS;
 v = idx % BLOCK_ITEMS;

 if (i >= ni->max_blocks)
  return (1);

 mask = &ni->idx_mask[i];

 if ((*mask & ((u_long)1 << v)) != 0)
  return (1);


 *mask |= (u_long)1 << v;


 if (ni->free_off[0] > i)
  ni->free_off[0] = i;

 return (0);
}
