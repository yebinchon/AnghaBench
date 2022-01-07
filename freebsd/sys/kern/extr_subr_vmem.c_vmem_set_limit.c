
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vm_limit; } ;
typedef TYPE_1__ vmem_t ;
typedef int vmem_size_t ;


 int VMEM_LOCK (TYPE_1__*) ;
 int VMEM_UNLOCK (TYPE_1__*) ;

void
vmem_set_limit(vmem_t *vm, vmem_size_t limit)
{

 VMEM_LOCK(vm);
 vm->vm_limit = limit;
 VMEM_UNLOCK(vm);
}
