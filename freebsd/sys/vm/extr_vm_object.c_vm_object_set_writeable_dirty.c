
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct TYPE_4__ {scalar_t__ type; int flags; int generation; } ;


 scalar_t__ OBJT_VNODE ;
 int OBJ_TMPFS_NODE ;
 int VM_OBJECT_ASSERT_LOCKED (TYPE_1__*) ;
 int atomic_add_int (int *,int) ;

void
vm_object_set_writeable_dirty(vm_object_t object)
{

 VM_OBJECT_ASSERT_LOCKED(object);


 if (object->type != OBJT_VNODE &&
     (object->flags & OBJ_TMPFS_NODE) == 0)
  return;
 atomic_add_int(&object->generation, 1);
}
