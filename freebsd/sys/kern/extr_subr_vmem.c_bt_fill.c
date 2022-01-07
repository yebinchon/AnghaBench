
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ vm_nfreetags; int vm_freetags; struct TYPE_7__* vm_arg; } ;
typedef TYPE_1__ vmem_t ;
typedef int bt_t ;


 int BT_FLAGS ;
 scalar_t__ BT_MAXALLOC ;
 int ENOMEM ;
 int LIST_INSERT_HEAD (int *,int *,int ) ;
 int M_NOVM ;
 int M_NOWAIT ;
 int M_USE_RESERVE ;
 int VMEM_ASSERT_LOCKED (TYPE_1__*) ;
 int VMEM_LOCK (TYPE_1__*) ;
 int VMEM_UNLOCK (TYPE_1__*) ;
 int bt_freelist ;
 TYPE_1__* kernel_arena ;
 int * uma_zalloc (int ,int) ;
 int vmem_bt_zone ;

__attribute__((used)) static int
bt_fill(vmem_t *vm, int flags)
{
 bt_t *bt;

 VMEM_ASSERT_LOCKED(vm);





 flags &= BT_FLAGS;
 if (vm != kernel_arena && vm->vm_arg != kernel_arena)
  flags &= ~M_USE_RESERVE;







 while (vm->vm_nfreetags < BT_MAXALLOC) {
  bt = uma_zalloc(vmem_bt_zone,
      (flags & M_USE_RESERVE) | M_NOWAIT | M_NOVM);
  if (bt == ((void*)0)) {
   VMEM_UNLOCK(vm);
   bt = uma_zalloc(vmem_bt_zone, flags);
   VMEM_LOCK(vm);
   if (bt == ((void*)0))
    break;
  }
  LIST_INSERT_HEAD(&vm->vm_freetags, bt, bt_freelist);
  vm->vm_nfreetags++;
 }

 if (vm->vm_nfreetags < BT_MAXALLOC)
  return ENOMEM;

 return 0;
}
