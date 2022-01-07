
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_mem_d {int flags; int * pools; } ;


 int NETMAP_MEM_FINALIZED ;
 int NETMAP_POOLS_NR ;
 int NM_DEBUG_MEM ;
 int netmap_debug ;
 int netmap_reset_obj_allocator (int *) ;
 int nm_prinf (char*,struct netmap_mem_d*) ;

__attribute__((used)) static void
netmap_mem_reset_all(struct netmap_mem_d *nmd)
{
 int i;

 if (netmap_debug & NM_DEBUG_MEM)
  nm_prinf("resetting %p", nmd);
 for (i = 0; i < NETMAP_POOLS_NR; i++) {
  netmap_reset_obj_allocator(&nmd->pools[i]);
 }
 nmd->flags &= ~NETMAP_MEM_FINALIZED;
}
