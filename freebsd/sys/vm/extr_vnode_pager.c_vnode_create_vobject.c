
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vm_ooffset_t ;
typedef TYPE_1__* vm_object_t ;
struct vnode {TYPE_1__* v_object; } ;
struct vattr {scalar_t__ va_size; } ;
struct thread {int td_ucred; } ;
typedef scalar_t__ off_t ;
struct TYPE_5__ {int ref_count; } ;


 scalar_t__ FALSE ;
 scalar_t__ IDX_TO_OFF (int ) ;
 int INT_MAX ;
 int KASSERT (int ,char*) ;
 int VM_OBJECT_RLOCK (TYPE_1__*) ;
 int VM_OBJECT_RUNLOCK (TYPE_1__*) ;
 scalar_t__ VOP_GETATTR (struct vnode*,struct vattr*,int ) ;
 int refcount_release (int *) ;
 scalar_t__ vn_canvmio (struct vnode*) ;
 scalar_t__ vn_isdisk (struct vnode*,int *) ;
 TYPE_1__* vnode_pager_alloc (struct vnode*,scalar_t__,int ,int ,int ) ;
 int vrele (struct vnode*) ;

int
vnode_create_vobject(struct vnode *vp, off_t isize, struct thread *td)
{
 vm_object_t object;
 vm_ooffset_t size = isize;
 struct vattr va;

 if (!vn_isdisk(vp, ((void*)0)) && vn_canvmio(vp) == FALSE)
  return (0);

 object = vp->v_object;
 if (object != ((void*)0))
  return (0);

 if (size == 0) {
  if (vn_isdisk(vp, ((void*)0))) {
   size = IDX_TO_OFF(INT_MAX);
  } else {
   if (VOP_GETATTR(vp, &va, td->td_ucred))
    return (0);
   size = va.va_size;
  }
 }

 object = vnode_pager_alloc(vp, size, 0, 0, td->td_ucred);




 VM_OBJECT_RLOCK(object);
 refcount_release(&object->ref_count);
 VM_OBJECT_RUNLOCK(object);
 vrele(vp);

 KASSERT(vp->v_object != ((void*)0), ("vnode_create_vobject: NULL object"));

 return (0);
}
