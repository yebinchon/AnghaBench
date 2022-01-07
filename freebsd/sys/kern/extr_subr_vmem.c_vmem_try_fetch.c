
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ vm_qcache_max; scalar_t__ vm_size; scalar_t__ vm_inuse; int (* vm_reclaimfn ) (TYPE_1__*,int) ;} ;
typedef TYPE_1__ vmem_t ;
typedef scalar_t__ vmem_size_t ;


 int M_NOWAIT ;
 int VMEM_ASSERT_LOCKED (TYPE_1__*) ;
 int VMEM_CONDVAR_WAIT (TYPE_1__*) ;
 int VMEM_LOCK (TYPE_1__*) ;
 int VMEM_UNLOCK (TYPE_1__*) ;
 int qc_drain (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int) ;
 scalar_t__ vmem_import (TYPE_1__*,scalar_t__ const,scalar_t__,int) ;

__attribute__((used)) static int
vmem_try_fetch(vmem_t *vm, const vmem_size_t size, vmem_size_t align, int flags)
{
 vmem_size_t avail;

 VMEM_ASSERT_LOCKED(vm);






 if (vmem_import(vm, size, align, flags) == 0)
  return (1);





 if (vm->vm_qcache_max != 0 || vm->vm_reclaimfn != ((void*)0)) {
  avail = vm->vm_size - vm->vm_inuse;
  VMEM_UNLOCK(vm);
  if (vm->vm_qcache_max != 0)
   qc_drain(vm);
  if (vm->vm_reclaimfn != ((void*)0))
   vm->vm_reclaimfn(vm, flags);
  VMEM_LOCK(vm);

  if (vm->vm_size - vm->vm_inuse > avail)
   return (1);
 }
 if ((flags & M_NOWAIT) != 0)
  return (0);
 VMEM_CONDVAR_WAIT(vm);
 return (1);
}
