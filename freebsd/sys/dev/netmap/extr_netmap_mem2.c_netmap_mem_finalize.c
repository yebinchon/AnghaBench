
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_mem_d {int lasterr; int * pools; TYPE_1__* ops; int active; } ;
struct netmap_adapter {scalar_t__ pdev; } ;
struct TYPE_2__ {int (* nmd_finalize ) (struct netmap_mem_d*) ;} ;


 int ENOMEM ;
 size_t NETMAP_BUF_POOL ;
 int NMA_LOCK (struct netmap_mem_d*) ;
 int NMA_UNLOCK (struct netmap_mem_d*) ;
 scalar_t__ netmap_mem_config (struct netmap_mem_d*) ;
 int netmap_mem_deref (struct netmap_mem_d*,struct netmap_adapter*) ;
 int netmap_mem_map (int *,struct netmap_adapter*) ;
 scalar_t__ nm_mem_assign_group (struct netmap_mem_d*,scalar_t__) ;
 int stub1 (struct netmap_mem_d*) ;

int
netmap_mem_finalize(struct netmap_mem_d *nmd, struct netmap_adapter *na)
{
 int lasterr = 0;
 if (nm_mem_assign_group(nmd, na->pdev) < 0) {
  return ENOMEM;
 }

 NMA_LOCK(nmd);

 if (netmap_mem_config(nmd))
  goto out;

 nmd->active++;

 nmd->lasterr = nmd->ops->nmd_finalize(nmd);

 if (!nmd->lasterr && na->pdev) {
  nmd->lasterr = netmap_mem_map(&nmd->pools[NETMAP_BUF_POOL], na);
 }

out:
 lasterr = nmd->lasterr;
 NMA_UNLOCK(nmd);

 if (lasterr)
  netmap_mem_deref(nmd, na);

 return lasterr;
}
