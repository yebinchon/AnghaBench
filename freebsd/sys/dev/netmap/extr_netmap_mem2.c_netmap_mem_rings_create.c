
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_mem_d {TYPE_1__* ops; } ;
struct netmap_adapter {struct netmap_mem_d* nm_mem; } ;
struct TYPE_2__ {int (* nmd_rings_create ) (struct netmap_adapter*) ;} ;


 int NMA_LOCK (struct netmap_mem_d*) ;
 int NMA_UNLOCK (struct netmap_mem_d*) ;
 int stub1 (struct netmap_adapter*) ;

int
netmap_mem_rings_create(struct netmap_adapter *na)
{
 int rv;
 struct netmap_mem_d *nmd = na->nm_mem;

 NMA_LOCK(nmd);
 rv = nmd->ops->nmd_rings_create(na);
 NMA_UNLOCK(nmd);

 return rv;
}
