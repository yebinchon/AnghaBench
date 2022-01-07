
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vm_nfreetags; int vm_freetags; } ;
typedef TYPE_1__ vmem_t ;
typedef int bt_t ;


 int * LIST_FIRST (int *) ;
 int LIST_INSERT_HEAD (int *,int *,int ) ;
 int MPASS (int) ;
 int VMEM_ASSERT_LOCKED (TYPE_1__*) ;
 int bt_freelist ;

__attribute__((used)) static inline void
bt_free(vmem_t *vm, bt_t *bt)
{

 VMEM_ASSERT_LOCKED(vm);
 MPASS(LIST_FIRST(&vm->vm_freetags) != bt);
 LIST_INSERT_HEAD(&vm->vm_freetags, bt, bt_freelist);
 vm->vm_nfreetags++;
}
