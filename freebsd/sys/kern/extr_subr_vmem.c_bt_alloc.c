
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vm_nfreetags; int vm_freetags; } ;
typedef TYPE_1__ vmem_t ;
typedef int bt_t ;


 int * LIST_FIRST (int *) ;
 int LIST_REMOVE (int *,int ) ;
 int MPASS (int ) ;
 int VMEM_ASSERT_LOCKED (TYPE_1__*) ;
 int bt_freelist ;

__attribute__((used)) static bt_t *
bt_alloc(vmem_t *vm)
{
 bt_t *bt;

 VMEM_ASSERT_LOCKED(vm);
 bt = LIST_FIRST(&vm->vm_freetags);
 MPASS(bt != ((void*)0));
 LIST_REMOVE(bt, bt_freelist);
 vm->vm_nfreetags--;

 return bt;
}
