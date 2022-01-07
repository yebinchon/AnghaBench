
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_mem_d {TYPE_1__* ops; } ;
struct netmap_if {int dummy; } ;
struct netmap_adapter {struct netmap_mem_d* nm_mem; } ;
struct TYPE_2__ {int (* nmd_if_delete ) (struct netmap_adapter*,struct netmap_if*) ;} ;


 int NMA_LOCK (struct netmap_mem_d*) ;
 int NMA_UNLOCK (struct netmap_mem_d*) ;
 int stub1 (struct netmap_adapter*,struct netmap_if*) ;

void
netmap_mem_if_delete(struct netmap_adapter *na, struct netmap_if *nif)
{
 struct netmap_mem_d *nmd = na->nm_mem;

 NMA_LOCK(nmd);
 nmd->ops->nmd_if_delete(na, nif);
 NMA_UNLOCK(nmd);
}
