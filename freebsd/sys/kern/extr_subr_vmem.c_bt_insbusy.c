
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int vm_inuse; int vm_nbusytag; } ;
typedef TYPE_1__ vmem_t ;
struct vmem_hashlist {int dummy; } ;
struct TYPE_9__ {scalar_t__ bt_type; scalar_t__ bt_size; int bt_start; } ;
typedef TYPE_2__ bt_t ;


 scalar_t__ BT_TYPE_BUSY ;
 int LIST_INSERT_HEAD (struct vmem_hashlist*,TYPE_2__*,int ) ;
 int MPASS (int) ;
 int VMEM_ASSERT_LOCKED (TYPE_1__*) ;
 struct vmem_hashlist* bt_hashhead (TYPE_1__*,int ) ;
 int bt_hashlist ;

__attribute__((used)) static void
bt_insbusy(vmem_t *vm, bt_t *bt)
{
 struct vmem_hashlist *list;

 VMEM_ASSERT_LOCKED(vm);
 MPASS(bt->bt_type == BT_TYPE_BUSY);

 list = bt_hashhead(vm, bt->bt_start);
 LIST_INSERT_HEAD(list, bt, bt_hashlist);
 vm->vm_nbusytag++;
 vm->vm_inuse += bt->bt_size;
}
