
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct netmap_mem_d {int flags; TYPE_1__* pools; } ;
struct TYPE_2__ {size_t _clustsize; size_t numclusters; } ;


 int NETMAP_MEM_FINALIZED ;
 size_t NETMAP_POOLS_NR ;

int
netmap_mem2_get_pool_info(struct netmap_mem_d* nmd, u_int pool, u_int *clustsize, u_int *numclusters)
{
 if (!nmd || !clustsize || !numclusters || pool >= NETMAP_POOLS_NR)
  return 1;

 if (!(nmd->flags & NETMAP_MEM_FINALIZED)) {
  *clustsize = *numclusters = 0;
  return 1;
 }
 *clustsize = nmd->pools[pool]._clustsize;
 *numclusters = nmd->pools[pool].numclusters;
 return 0;
}
