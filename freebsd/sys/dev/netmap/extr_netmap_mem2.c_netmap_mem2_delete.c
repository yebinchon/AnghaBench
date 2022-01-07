
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_mem_d {int * pools; } ;


 int NETMAP_POOLS_NR ;
 int NMA_LOCK_DESTROY (struct netmap_mem_d*) ;
 int netmap_destroy_obj_allocator (int *) ;
 struct netmap_mem_d nm_mem ;
 int nm_os_free (struct netmap_mem_d*) ;

__attribute__((used)) static void
netmap_mem2_delete(struct netmap_mem_d *nmd)
{
 int i;

 for (i = 0; i < NETMAP_POOLS_NR; i++) {
     netmap_destroy_obj_allocator(&nmd->pools[i]);
 }

 NMA_LOCK_DESTROY(nmd);
 if (nmd != &nm_mem)
  nm_os_free(nmd);
}
