
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct vnode {int dummy; } ;
struct vattr {int va_gid; int va_uid; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
typedef int gid_t ;


 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int PCATCH ;
 int VATTR_NULL (struct vattr*) ;
 int VOP_SETATTR (struct vnode*,struct vattr*,struct ucred*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int V_WAIT ;
 int mac_vnode_check_setowner (struct ucred*,struct vnode*,int ,int ) ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (struct vnode*,int) ;
 int vn_start_write (struct vnode*,struct mount**,int) ;

int
setfown(struct thread *td, struct ucred *cred, struct vnode *vp, uid_t uid,
    gid_t gid)
{
 struct mount *mp;
 struct vattr vattr;
 int error;

 if ((error = vn_start_write(vp, &mp, V_WAIT | PCATCH)) != 0)
  return (error);
 vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
 VATTR_NULL(&vattr);
 vattr.va_uid = uid;
 vattr.va_gid = gid;





  error = VOP_SETATTR(vp, &vattr, cred);
 VOP_UNLOCK(vp, 0);
 vn_finished_write(mp);
 return (error);
}
