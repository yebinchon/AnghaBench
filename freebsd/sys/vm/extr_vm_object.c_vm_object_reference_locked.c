
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct vnode {int dummy; } ;
struct TYPE_4__ {scalar_t__ type; struct vnode* handle; int ref_count; } ;


 scalar_t__ OBJT_VNODE ;
 int VM_OBJECT_ASSERT_LOCKED (TYPE_1__*) ;
 int refcount_acquire (int *) ;
 int vref (struct vnode*) ;

void
vm_object_reference_locked(vm_object_t object)
{
 struct vnode *vp;

 VM_OBJECT_ASSERT_LOCKED(object);
 refcount_acquire(&object->ref_count);
 if (object->type == OBJT_VNODE) {
  vp = object->handle;
  vref(vp);
 }
}
