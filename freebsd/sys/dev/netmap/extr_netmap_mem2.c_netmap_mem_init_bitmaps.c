
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_obj_pool {int objfree; unsigned int* bitmap; int name; } ;
struct netmap_mem_d {struct netmap_obj_pool* pools; } ;


 int ENOMEM ;
 size_t NETMAP_BUF_POOL ;
 int NETMAP_POOLS_NR ;
 int netmap_init_obj_allocator_bitmap (struct netmap_obj_pool*) ;
 int nm_prerr (char*,int ) ;

__attribute__((used)) static int
netmap_mem_init_bitmaps(struct netmap_mem_d *nmd)
{
 int i, error = 0;

 for (i = 0; i < NETMAP_POOLS_NR; i++) {
  struct netmap_obj_pool *p = &nmd->pools[i];

  error = netmap_init_obj_allocator_bitmap(p);
  if (error)
   return error;
 }




 if (nmd->pools[NETMAP_BUF_POOL].objfree < 2) {
  nm_prerr("%s: not enough buffers", nmd->pools[NETMAP_BUF_POOL].name);
  return ENOMEM;
 }

 nmd->pools[NETMAP_BUF_POOL].objfree -= 2;
 if (nmd->pools[NETMAP_BUF_POOL].bitmap) {




  nmd->pools[NETMAP_BUF_POOL].bitmap[0] = ~3U;
 }
 return 0;
}
