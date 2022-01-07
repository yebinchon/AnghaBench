
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_prot_t ;
typedef int vm_ooffset_t ;
typedef TYPE_1__* vm_object_t ;
struct vnode {scalar_t__ v_type; TYPE_1__* v_object; } ;
struct vattr {int va_flags; scalar_t__ va_nlink; int va_size; } ;
struct ucred {int dummy; } ;
struct thread {struct ucred* td_ucred; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_9__ {scalar_t__ type; struct vnode* handle; } ;


 int APPEND ;
 int AUDIT_ARG_VNODE1 (struct vnode*) ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 scalar_t__ FALSE ;
 int IMMUTABLE ;
 int KASSERT (int,char*) ;
 int LK_SHARED ;
 int MAP_NOSYNC ;
 int MAP_SHARED ;
 scalar_t__ OBJT_DEFAULT ;
 scalar_t__ OBJT_SWAP ;
 scalar_t__ OBJT_VNODE ;
 int SF_SNAPSHOT ;
 scalar_t__ TRUE ;
 int VM_OBJECT_WLOCK (TYPE_1__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_1__*) ;
 int VM_PROT_WRITE ;
 int VOP_GETATTR (struct vnode*,struct vattr*,struct ucred*) ;
 scalar_t__ VREG ;
 int mac_vnode_check_mmap (struct ucred*,struct vnode*,int,int) ;
 int round_page (int ) ;
 int vfs_mark_atime (struct vnode*,struct ucred*) ;
 int vget (struct vnode*,int ,struct thread*) ;
 int vm_object_color (TYPE_1__*,int ) ;
 int vm_object_reference_locked (TYPE_1__*) ;
 TYPE_1__* vm_pager_allocate (scalar_t__,struct vnode*,int ,int,int ,struct ucred*) ;
 int vm_pager_update_writecount (TYPE_1__*,int ,int ) ;
 int vput (struct vnode*) ;

int
vm_mmap_vnode(struct thread *td, vm_size_t objsize,
    vm_prot_t prot, vm_prot_t *maxprotp, int *flagsp,
    struct vnode *vp, vm_ooffset_t *foffp, vm_object_t *objp,
    boolean_t *writecounted)
{
 struct vattr va;
 vm_object_t obj;
 vm_ooffset_t foff;
 struct ucred *cred;
 int error, flags;
 bool writex;

 cred = td->td_ucred;
 writex = (*maxprotp & VM_PROT_WRITE) != 0 &&
     (*flagsp & MAP_SHARED) != 0;
 if ((error = vget(vp, LK_SHARED, td)) != 0)
  return (error);
 AUDIT_ARG_VNODE1(vp);
 foff = *foffp;
 flags = *flagsp;
 obj = vp->v_object;
 if (vp->v_type == VREG) {



  if (obj == ((void*)0)) {
   error = EINVAL;
   goto done;
  }
  if (obj->type == OBJT_VNODE && obj->handle != vp) {
   vput(vp);
   vp = (struct vnode *)obj->handle;




   error = vget(vp, LK_SHARED, td);
   if (error != 0)
    return (error);
  }
  if (writex) {
   *writecounted = TRUE;
   vm_pager_update_writecount(obj, 0, objsize);
  }
 } else {
  error = EINVAL;
  goto done;
 }
 if ((error = VOP_GETATTR(vp, &va, cred)))
  goto done;






 if ((flags & MAP_SHARED) != 0) {
  if ((va.va_flags & (SF_SNAPSHOT|IMMUTABLE|APPEND)) != 0) {
   if (prot & VM_PROT_WRITE) {
    error = EPERM;
    goto done;
   }
   *maxprotp &= ~VM_PROT_WRITE;
  }
 }





 objsize = round_page(va.va_size);
 if (va.va_nlink == 0)
  flags |= MAP_NOSYNC;
 if (obj->type == OBJT_VNODE) {
  obj = vm_pager_allocate(OBJT_VNODE, vp, objsize, prot, foff,
      cred);
  if (obj == ((void*)0)) {
   error = ENOMEM;
   goto done;
  }
 } else {
  KASSERT(obj->type == OBJT_DEFAULT || obj->type == OBJT_SWAP,
      ("wrong object type"));
  VM_OBJECT_WLOCK(obj);
  vm_object_reference_locked(obj);



  VM_OBJECT_WUNLOCK(obj);
 }
 *objp = obj;
 *flagsp = flags;

 vfs_mark_atime(vp, cred);

done:
 if (error != 0 && *writecounted) {
  *writecounted = FALSE;
  vm_pager_update_writecount(obj, objsize, 0);
 }
 vput(vp);
 return (error);
}
