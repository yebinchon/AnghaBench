
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_mem_d {int active; int nm_grp; scalar_t__ lasterr; TYPE_1__* ops; int * pools; } ;
struct netmap_adapter {scalar_t__ active_fds; } ;
struct TYPE_2__ {int (* nmd_deref ) (struct netmap_mem_d*) ;} ;


 size_t NETMAP_BUF_POOL ;
 int NMA_LOCK (struct netmap_mem_d*) ;
 int NMA_UNLOCK (struct netmap_mem_d*) ;
 int netmap_mem_init_bitmaps (struct netmap_mem_d*) ;
 int netmap_mem_unmap (int *,struct netmap_adapter*) ;
 int stub1 (struct netmap_mem_d*) ;

int
netmap_mem_deref(struct netmap_mem_d *nmd, struct netmap_adapter *na)
{
 int last_user = 0;
 NMA_LOCK(nmd);
 if (na->active_fds <= 0)
  netmap_mem_unmap(&nmd->pools[NETMAP_BUF_POOL], na);
 if (nmd->active == 1) {
  last_user = 1;





  netmap_mem_init_bitmaps(nmd);
 }
 nmd->ops->nmd_deref(nmd);

 nmd->active--;
 if (last_user) {
  nmd->nm_grp = -1;
  nmd->lasterr = 0;
 }

 NMA_UNLOCK(nmd);
 return last_user;
}
