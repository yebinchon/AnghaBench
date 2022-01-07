
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vm_quantum_mask; int vm_quantum_shift; int vm_qcache_max; char* vm_name; TYPE_2__* vm_qcache; } ;
typedef TYPE_1__ vmem_t ;
typedef int vmem_size_t ;
struct TYPE_6__ {int qc_size; int qc_cache; int qc_name; TYPE_1__* qc_vmem; } ;
typedef TYPE_2__ qcache_t ;


 int MIN (int,int ) ;
 int MPASS (int) ;
 int UMA_ZONE_VM ;
 int VMEM_QCACHE_IDX_MAX ;
 int qc_import ;
 int qc_release ;
 int snprintf (int ,int,char*,char*,int) ;
 int uma_zcache_create (int ,int,int *,int *,int *,int *,int ,int ,TYPE_2__*,int ) ;

__attribute__((used)) static void
qc_init(vmem_t *vm, vmem_size_t qcache_max)
{
 qcache_t *qc;
 vmem_size_t size;
 int qcache_idx_max;
 int i;

 MPASS((qcache_max & vm->vm_quantum_mask) == 0);
 qcache_idx_max = MIN(qcache_max >> vm->vm_quantum_shift,
     VMEM_QCACHE_IDX_MAX);
 vm->vm_qcache_max = qcache_idx_max << vm->vm_quantum_shift;
 for (i = 0; i < qcache_idx_max; i++) {
  qc = &vm->vm_qcache[i];
  size = (i + 1) << vm->vm_quantum_shift;
  snprintf(qc->qc_name, sizeof(qc->qc_name), "%s-%zu",
      vm->vm_name, size);
  qc->qc_vmem = vm;
  qc->qc_size = size;
  qc->qc_cache = uma_zcache_create(qc->qc_name, size,
      ((void*)0), ((void*)0), ((void*)0), ((void*)0), qc_import, qc_release, qc,
      UMA_ZONE_VM);
  MPASS(qc->qc_cache);
 }
}
