
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_mem_d {int flags; int lasterr; TYPE_1__* params; int * pools; } ;
struct TYPE_2__ {int size; int num; } ;


 int NETMAP_MEM_FINALIZED ;
 int NETMAP_POOLS_NR ;
 int netmap_config_obj_allocator (int *,int ,int ) ;
 int netmap_mem_params_changed (TYPE_1__*) ;
 int netmap_reset_obj_allocator (int *) ;
 int nm_prdis (char*) ;

__attribute__((used)) static int
netmap_mem2_config(struct netmap_mem_d *nmd)
{
 int i;

 if (!netmap_mem_params_changed(nmd->params))
  goto out;

 nm_prdis("reconfiguring");

 if (nmd->flags & NETMAP_MEM_FINALIZED) {

  for (i = 0; i < NETMAP_POOLS_NR; i++) {
   netmap_reset_obj_allocator(&nmd->pools[i]);
  }
  nmd->flags &= ~NETMAP_MEM_FINALIZED;
 }

 for (i = 0; i < NETMAP_POOLS_NR; i++) {
  nmd->lasterr = netmap_config_obj_allocator(&nmd->pools[i],
    nmd->params[i].num, nmd->params[i].size);
  if (nmd->lasterr)
   goto out;
 }

out:

 return nmd->lasterr;
}
