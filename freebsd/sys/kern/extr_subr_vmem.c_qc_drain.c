
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int vm_qcache_max; int vm_quantum_shift; TYPE_1__* vm_qcache; } ;
typedef TYPE_2__ vmem_t ;
struct TYPE_4__ {int qc_cache; } ;


 int UMA_RECLAIM_DRAIN ;
 int uma_zone_reclaim (int ,int ) ;

__attribute__((used)) static void
qc_drain(vmem_t *vm)
{
 int qcache_idx_max;
 int i;

 qcache_idx_max = vm->vm_qcache_max >> vm->vm_quantum_shift;
 for (i = 0; i < qcache_idx_max; i++)
  uma_zone_reclaim(vm->vm_qcache[i].qc_cache, UMA_RECLAIM_DRAIN);
}
