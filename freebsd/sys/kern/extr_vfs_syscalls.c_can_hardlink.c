
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct vattr {scalar_t__ va_uid; int va_gid; } ;
struct ucred {scalar_t__ cr_uid; } ;


 int PRIV_VFS_LINK ;
 int VOP_GETATTR (struct vnode*,struct vattr*,struct ucred*) ;
 int groupmember (int ,struct ucred*) ;
 scalar_t__ hardlink_check_gid ;
 scalar_t__ hardlink_check_uid ;
 int priv_check_cred (struct ucred*,int ) ;

__attribute__((used)) static int
can_hardlink(struct vnode *vp, struct ucred *cred)
{
 struct vattr va;
 int error;

 if (!hardlink_check_uid && !hardlink_check_gid)
  return (0);

 error = VOP_GETATTR(vp, &va, cred);
 if (error != 0)
  return (error);

 if (hardlink_check_uid && cred->cr_uid != va.va_uid) {
  error = priv_check_cred(cred, PRIV_VFS_LINK);
  if (error != 0)
   return (error);
 }

 if (hardlink_check_gid && !groupmember(va.va_gid, cred)) {
  error = priv_check_cred(cred, PRIV_VFS_LINK);
  if (error != 0)
   return (error);
 }

 return (0);
}
