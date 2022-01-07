
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_priv_d {int dummy; } ;
struct netmap_mem_d {TYPE_1__* ops; } ;
struct netmap_if {int dummy; } ;
struct netmap_adapter {struct netmap_mem_d* nm_mem; } ;
struct TYPE_2__ {struct netmap_if* (* nmd_if_new ) (struct netmap_adapter*,struct netmap_priv_d*) ;} ;


 int NMA_LOCK (struct netmap_mem_d*) ;
 int NMA_UNLOCK (struct netmap_mem_d*) ;
 struct netmap_if* stub1 (struct netmap_adapter*,struct netmap_priv_d*) ;

struct netmap_if *
netmap_mem_if_new(struct netmap_adapter *na, struct netmap_priv_d *priv)
{
 struct netmap_if *nifp;
 struct netmap_mem_d *nmd = na->nm_mem;

 NMA_LOCK(nmd);
 nifp = nmd->ops->nmd_if_new(na, priv);
 NMA_UNLOCK(nmd);

 return nifp;
}
