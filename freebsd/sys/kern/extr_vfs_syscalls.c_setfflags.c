
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct vnode {scalar_t__ v_type; } ;
struct vattr {scalar_t__ va_flags; } ;
struct thread {int td_ucred; } ;
struct mount {int dummy; } ;


 int EOPNOTSUPP ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int PCATCH ;
 int PRIV_VFS_CHFLAGS_DEV ;
 int VATTR_NULL (struct vattr*) ;
 scalar_t__ VBLK ;
 scalar_t__ VCHR ;
 scalar_t__ VNOVAL ;
 int VOP_SETATTR (struct vnode*,struct vattr*,int ) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int V_WAIT ;
 int mac_vnode_check_setflags (int ,struct vnode*,scalar_t__) ;
 int priv_check (struct thread*,int ) ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (struct vnode*,int) ;
 int vn_start_write (struct vnode*,struct mount**,int) ;

__attribute__((used)) static int
setfflags(struct thread *td, struct vnode *vp, u_long flags)
{
 struct mount *mp;
 struct vattr vattr;
 int error;


 if (flags == VNOVAL)
  return (EOPNOTSUPP);







 if (vp->v_type == VCHR || vp->v_type == VBLK) {
  error = priv_check(td, PRIV_VFS_CHFLAGS_DEV);
  if (error != 0)
   return (error);
 }

 if ((error = vn_start_write(vp, &mp, V_WAIT | PCATCH)) != 0)
  return (error);
 VATTR_NULL(&vattr);
 vattr.va_flags = flags;
 vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);




  error = VOP_SETATTR(vp, &vattr, td->td_ucred);
 VOP_UNLOCK(vp, 0);
 vn_finished_write(mp);
 return (error);
}
