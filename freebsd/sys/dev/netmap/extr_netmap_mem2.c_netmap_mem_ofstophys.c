
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int vm_ooffset_t ;
struct netmap_mem_d {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* nmd_ofstophys ) (struct netmap_mem_d*,int ) ;} ;


 int NMA_LOCK (struct netmap_mem_d*) ;
 int NMA_SPINLOCK (struct netmap_mem_d*) ;
 int NMA_UNLOCK (struct netmap_mem_d*) ;
 int stub1 (struct netmap_mem_d*,int ) ;

vm_paddr_t
netmap_mem_ofstophys(struct netmap_mem_d *nmd, vm_ooffset_t off)
{
 vm_paddr_t pa;







 NMA_LOCK(nmd);

 pa = nmd->ops->nmd_ofstophys(nmd, off);
 NMA_UNLOCK(nmd);

 return pa;
}
