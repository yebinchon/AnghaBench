
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct vnode {int dummy; } ;
struct TYPE_5__ {scalar_t__ type; int ref_count; scalar_t__ handle; } ;


 int KASSERT (int,char*) ;
 scalar_t__ OBJT_VNODE ;
 int VM_OBJECT_RUNLOCK (TYPE_1__*) ;
 scalar_t__ refcount_release (int *) ;
 int umtx_shm_object_terminated (TYPE_1__*) ;
 int umtx_shm_vnobj_persistent ;
 int vrele (struct vnode*) ;

__attribute__((used)) static void
vm_object_vndeallocate(vm_object_t object)
{
 struct vnode *vp = (struct vnode *) object->handle;

 KASSERT(object->type == OBJT_VNODE,
     ("vm_object_vndeallocate: not a vnode object"));
 KASSERT(vp != ((void*)0), ("vm_object_vndeallocate: missing vp"));

 if (refcount_release(&object->ref_count) &&
     !umtx_shm_vnobj_persistent)
  umtx_shm_object_terminated(object);

 VM_OBJECT_RUNLOCK(object);

 vrele(vp);
}
