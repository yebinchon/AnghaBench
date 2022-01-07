
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vm_qcache_max; int vm_quantum_shift; TYPE_2__* vm_qcache; } ;
typedef TYPE_1__ vmem_t ;
typedef int vmem_size_t ;
typedef scalar_t__ vmem_addr_t ;
struct TYPE_6__ {int qc_cache; } ;
typedef TYPE_2__ qcache_t ;


 int MPASS (int) ;
 scalar_t__ VMEM_ADDR_QCACHE_MIN ;
 scalar_t__ __predict_true (int) ;
 int uma_zfree (int ,void*) ;
 int vmem_xfree (TYPE_1__*,scalar_t__,int) ;

void
vmem_free(vmem_t *vm, vmem_addr_t addr, vmem_size_t size)
{
 qcache_t *qc;
 MPASS(size > 0);

 if (size <= vm->vm_qcache_max &&
     __predict_true(addr >= VMEM_ADDR_QCACHE_MIN)) {
  qc = &vm->vm_qcache[(size - 1) >> vm->vm_quantum_shift];
  uma_zfree(qc->qc_cache, (void *)addr);
 } else
  vmem_xfree(vm, addr, size);
}
