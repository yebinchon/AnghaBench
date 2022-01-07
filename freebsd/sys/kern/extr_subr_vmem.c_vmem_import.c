
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* vm_importfn ) (int ,scalar_t__,int,int *) ;scalar_t__ vm_quantum_mask; scalar_t__ vm_limit; scalar_t__ vm_size; scalar_t__ vm_nfreetags; int vm_arg; int vm_import_quantum; } ;
typedef TYPE_1__ vmem_t ;
typedef scalar_t__ vmem_size_t ;
typedef int vmem_addr_t ;


 scalar_t__ BT_MAXALLOC ;
 int BT_TYPE_SPAN ;
 int EINVAL ;
 int ENOMEM ;
 int MPASS (int) ;
 int VMEM_LOCK (TYPE_1__*) ;
 int VMEM_UNLOCK (TYPE_1__*) ;
 scalar_t__ roundup (scalar_t__,int ) ;
 int stub1 (int ,scalar_t__,int,int *) ;
 int vmem_add1 (TYPE_1__*,int ,scalar_t__,int ) ;

__attribute__((used)) static int
vmem_import(vmem_t *vm, vmem_size_t size, vmem_size_t align, int flags)
{
 vmem_addr_t addr;
 int error;

 if (vm->vm_importfn == ((void*)0))
  return (EINVAL);





 if (align != vm->vm_quantum_mask + 1)
  size = (align * 2) + size;
 size = roundup(size, vm->vm_import_quantum);

 if (vm->vm_limit != 0 && vm->vm_limit < vm->vm_size + size)
  return (ENOMEM);





 MPASS(vm->vm_nfreetags >= BT_MAXALLOC);
 vm->vm_nfreetags -= BT_MAXALLOC;
 VMEM_UNLOCK(vm);
 error = (vm->vm_importfn)(vm->vm_arg, size, flags, &addr);
 VMEM_LOCK(vm);
 vm->vm_nfreetags += BT_MAXALLOC;
 if (error)
  return (ENOMEM);

 vmem_add1(vm, addr, size, BT_TYPE_SPAN);

 return 0;
}
