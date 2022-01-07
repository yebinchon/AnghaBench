
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct vattr {scalar_t__ va_size; } ;
struct ucred {int dummy; } ;


 int AUDIT_CLOSE_FLAGS ;
 int AUDIT_WORKER_LOCK () ;
 int AUDIT_WORKER_UNLOCK () ;
 int KASSERT (int,char*) ;
 int LK_RETRY ;
 int LK_SHARED ;
 scalar_t__ VOP_GETATTR (struct vnode*,struct vattr*,struct ucred*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 struct ucred* audit_cred ;
 scalar_t__ audit_file_rotate_wait ;
 scalar_t__ audit_size ;
 int audit_syscalls_enabled_update () ;
 int audit_trail_enabled ;
 struct vnode* audit_vp ;
 int crfree (struct ucred*) ;
 int curthread ;
 int vn_close (struct vnode*,int ,struct ucred*,int ) ;
 int vn_lock (struct vnode*,int) ;

void
audit_rotate_vnode(struct ucred *cred, struct vnode *vp)
{
 struct ucred *old_audit_cred;
 struct vnode *old_audit_vp;
 struct vattr vattr;

 KASSERT((cred != ((void*)0) && vp != ((void*)0)) || (cred == ((void*)0) && vp == ((void*)0)),
     ("audit_rotate_vnode: cred %p vp %p", cred, vp));

 if (vp != ((void*)0)) {
  vn_lock(vp, LK_SHARED | LK_RETRY);
  if (VOP_GETATTR(vp, &vattr, cred) != 0)
   vattr.va_size = 0;
  VOP_UNLOCK(vp, 0);
 } else {
  vattr.va_size = 0;
 }





 AUDIT_WORKER_LOCK();
 old_audit_cred = audit_cred;
 old_audit_vp = audit_vp;
 audit_cred = cred;
 audit_vp = vp;
 audit_size = vattr.va_size;
 audit_file_rotate_wait = 0;
 audit_trail_enabled = (audit_vp != ((void*)0));
 audit_syscalls_enabled_update();
 AUDIT_WORKER_UNLOCK();




 if (old_audit_vp != ((void*)0)) {
  vn_close(old_audit_vp, AUDIT_CLOSE_FLAGS, old_audit_cred,
      curthread);
  crfree(old_audit_cred);
 }
}
