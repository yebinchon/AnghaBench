
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; int * v_rdev; } ;
struct vattr {scalar_t__ va_uid; } ;
struct thread {TYPE_1__* td_ucred; } ;
struct revoke_args {int path; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct TYPE_3__ {scalar_t__ cr_uid; } ;


 int AUDITVNODE1 ;
 int EINVAL ;
 int FOLLOW ;
 int LOCKLEAF ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int,int ,int ,struct thread*) ;
 int PRIV_VFS_ADMIN ;
 int REVOKEALL ;
 int UIO_USERSPACE ;
 scalar_t__ VCHR ;
 int VOP_GETATTR (struct vnode*,struct vattr*,TYPE_1__*) ;
 int VOP_REVOKE (struct vnode*,int ) ;
 int mac_vnode_check_revoke (TYPE_1__*,struct vnode*) ;
 int namei (struct nameidata*) ;
 int priv_check (struct thread*,int ) ;
 int vcount (struct vnode*) ;
 int vput (struct vnode*) ;

int
sys_revoke(struct thread *td, struct revoke_args *uap)
{
 struct vnode *vp;
 struct vattr vattr;
 struct nameidata nd;
 int error;

 NDINIT(&nd, LOOKUP, FOLLOW | LOCKLEAF | AUDITVNODE1, UIO_USERSPACE,
     uap->path, td);
 if ((error = namei(&nd)) != 0)
  return (error);
 vp = nd.ni_vp;
 NDFREE(&nd, NDF_ONLY_PNBUF);
 if (vp->v_type != VCHR || vp->v_rdev == ((void*)0)) {
  error = EINVAL;
  goto out;
 }





 error = VOP_GETATTR(vp, &vattr, td->td_ucred);
 if (error != 0)
  goto out;
 if (td->td_ucred->cr_uid != vattr.va_uid) {
  error = priv_check(td, PRIV_VFS_ADMIN);
  if (error != 0)
   goto out;
 }
 if (vcount(vp) > 1)
  VOP_REVOKE(vp, REVOKEALL);
out:
 vput(vp);
 return (error);
}
