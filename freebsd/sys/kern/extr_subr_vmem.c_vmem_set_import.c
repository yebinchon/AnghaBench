
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vm_import_quantum; void* vm_arg; int * vm_releasefn; int * vm_importfn; } ;
typedef TYPE_1__ vmem_t ;
typedef int vmem_size_t ;
typedef int vmem_release_t ;
typedef int vmem_import_t ;


 int VMEM_LOCK (TYPE_1__*) ;
 int VMEM_UNLOCK (TYPE_1__*) ;

void
vmem_set_import(vmem_t *vm, vmem_import_t *importfn,
     vmem_release_t *releasefn, void *arg, vmem_size_t import_quantum)
{

 VMEM_LOCK(vm);
 vm->vm_importfn = importfn;
 vm->vm_releasefn = releasefn;
 vm->vm_arg = arg;
 vm->vm_import_quantum = import_quantum;
 VMEM_UNLOCK(vm);
}
