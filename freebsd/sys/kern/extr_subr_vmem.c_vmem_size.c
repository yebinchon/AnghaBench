
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vm_inuse; int vm_size; int vm_quantum_shift; int * vm_freelist; } ;
typedef TYPE_1__ vmem_t ;
typedef int vmem_size_t ;


 int LIST_EMPTY (int *) ;
 int ORDER2SIZE (int) ;


 int VMEM_LOCK (TYPE_1__*) ;

 int VMEM_MAXORDER ;
 int VMEM_UNLOCK (TYPE_1__*) ;
 int panic (char*) ;

vmem_size_t
vmem_size(vmem_t *vm, int typemask)
{
 int i;

 switch (typemask) {
 case 130:
  return vm->vm_inuse;
 case 129:
  return vm->vm_size - vm->vm_inuse;
 case 129|130:
  return vm->vm_size;
 case 128:
  VMEM_LOCK(vm);
  for (i = VMEM_MAXORDER - 1; i >= 0; i--) {
   if (LIST_EMPTY(&vm->vm_freelist[i]))
    continue;
   VMEM_UNLOCK(vm);
   return ((vmem_size_t)ORDER2SIZE(i) <<
       vm->vm_quantum_shift);
  }
  VMEM_UNLOCK(vm);
  return (0);
 default:
  panic("vmem_size");
 }
}
