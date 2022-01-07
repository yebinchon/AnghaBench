
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ vm_nbusytag; int vm_inuse; } ;
typedef TYPE_1__ vmem_t ;
struct TYPE_8__ {scalar_t__ bt_size; } ;
typedef TYPE_2__ bt_t ;


 int LIST_REMOVE (TYPE_2__*,int ) ;
 int MPASS (int) ;
 int VMEM_ASSERT_LOCKED (TYPE_1__*) ;
 int bt_hashlist ;

__attribute__((used)) static void
bt_rembusy(vmem_t *vm, bt_t *bt)
{

 VMEM_ASSERT_LOCKED(vm);
 MPASS(vm->vm_nbusytag > 0);
 vm->vm_inuse -= bt->bt_size;
 vm->vm_nbusytag--;
 LIST_REMOVE(bt, bt_hashlist);
}
