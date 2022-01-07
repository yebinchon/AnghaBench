
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_mem_d {TYPE_1__* ops; } ;
struct netmap_lut {int dummy; } ;
struct TYPE_2__ {int (* nmd_get_lut ) (struct netmap_mem_d*,struct netmap_lut*) ;} ;


 int NMA_LOCK (struct netmap_mem_d*) ;
 int NMA_UNLOCK (struct netmap_mem_d*) ;
 int stub1 (struct netmap_mem_d*,struct netmap_lut*) ;

int
netmap_mem_get_lut(struct netmap_mem_d *nmd, struct netmap_lut *lut)
{
 int rv;

 NMA_LOCK(nmd);
 rv = nmd->ops->nmd_get_lut(nmd, lut);
 NMA_UNLOCK(nmd);

 return rv;
}
