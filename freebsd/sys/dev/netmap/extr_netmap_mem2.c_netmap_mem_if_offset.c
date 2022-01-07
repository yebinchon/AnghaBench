
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_mem_d {TYPE_1__* ops; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* nmd_if_offset ) (struct netmap_mem_d*,void const*) ;} ;


 int NMA_LOCK (struct netmap_mem_d*) ;
 int NMA_UNLOCK (struct netmap_mem_d*) ;
 int stub1 (struct netmap_mem_d*,void const*) ;

ssize_t
netmap_mem_if_offset(struct netmap_mem_d *nmd, const void *off)
{
 ssize_t rv;

 NMA_LOCK(nmd);
 rv = nmd->ops->nmd_if_offset(nmd, off);
 NMA_UNLOCK(nmd);

 return rv;
}
