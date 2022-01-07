
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ vm_nfreetags; } ;
typedef TYPE_1__ vmem_t ;
typedef int vmem_size_t ;
typedef int vmem_addr_t ;


 scalar_t__ BT_MAXALLOC ;
 int BT_TYPE_SPAN_STATIC ;
 int ENOMEM ;
 int VMEM_FLAGS ;
 int VMEM_LOCK (TYPE_1__*) ;
 int VMEM_UNLOCK (TYPE_1__*) ;
 scalar_t__ bt_fill (TYPE_1__*,int) ;
 int vmem_add1 (TYPE_1__*,int ,int ,int ) ;

int
vmem_add(vmem_t *vm, vmem_addr_t addr, vmem_size_t size, int flags)
{
 int error;

 error = 0;
 flags &= VMEM_FLAGS;
 VMEM_LOCK(vm);
 if (vm->vm_nfreetags >= BT_MAXALLOC || bt_fill(vm, flags) == 0)
  vmem_add1(vm, addr, size, BT_TYPE_SPAN_STATIC);
 else
  error = ENOMEM;
 VMEM_UNLOCK(vm);

 return (error);
}
