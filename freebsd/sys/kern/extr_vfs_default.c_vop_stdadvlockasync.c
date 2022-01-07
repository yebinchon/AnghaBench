
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vop_advlockasync_args {TYPE_1__* a_fl; struct vnode* a_vp; } ;
struct vnode {int v_lockf; } ;
struct vattr {scalar_t__ va_size; } ;
struct TYPE_4__ {int td_ucred; } ;
struct TYPE_3__ {scalar_t__ l_whence; } ;


 int LK_RETRY ;
 int LK_SHARED ;
 scalar_t__ SEEK_END ;
 int VOP_GETATTR (struct vnode*,struct vattr*,int ) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 TYPE_2__* curthread ;
 int lf_advlockasync (struct vop_advlockasync_args*,int *,scalar_t__) ;
 int vn_lock (struct vnode*,int) ;

int
vop_stdadvlockasync(struct vop_advlockasync_args *ap)
{
 struct vnode *vp;
 struct vattr vattr;
 int error;

 vp = ap->a_vp;
 if (ap->a_fl->l_whence == SEEK_END) {

  vn_lock(vp, LK_SHARED | LK_RETRY);
  error = VOP_GETATTR(vp, &vattr, curthread->td_ucred);
  VOP_UNLOCK(vp, 0);
  if (error)
   return (error);
 } else
  vattr.va_size = 0;

 return (lf_advlockasync(ap, &(vp->v_lockf), vattr.va_size));
}
