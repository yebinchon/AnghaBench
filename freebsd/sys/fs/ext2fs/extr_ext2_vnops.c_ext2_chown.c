
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct inode {scalar_t__ i_uid; scalar_t__ i_gid; int i_mode; int i_flag; } ;
typedef scalar_t__ gid_t ;


 int IN_CHANGE ;
 int ISGID ;
 int ISUID ;
 int PRIV_VFS_CHOWN ;
 int PRIV_VFS_RETAINSUGID ;
 int VADMIN ;
 scalar_t__ VNOVAL ;
 int VOP_ACCESS (struct vnode*,int ,struct ucred*,struct thread*) ;
 struct inode* VTOI (struct vnode*) ;
 int groupmember (scalar_t__,struct ucred*) ;
 int priv_check_cred (struct ucred*,int ) ;

__attribute__((used)) static int
ext2_chown(struct vnode *vp, uid_t uid, gid_t gid, struct ucred *cred,
    struct thread *td)
{
 struct inode *ip = VTOI(vp);
 uid_t ouid;
 gid_t ogid;
 int error = 0;

 if (uid == (uid_t)VNOVAL)
  uid = ip->i_uid;
 if (gid == (gid_t)VNOVAL)
  gid = ip->i_gid;




 if ((error = VOP_ACCESS(vp, VADMIN, cred, td)))
  return (error);





 if (uid != ip->i_uid || (gid != ip->i_gid &&
     !groupmember(gid, cred))) {
  error = priv_check_cred(cred, PRIV_VFS_CHOWN);
  if (error)
   return (error);
 }
 ogid = ip->i_gid;
 ouid = ip->i_uid;
 ip->i_gid = gid;
 ip->i_uid = uid;
 ip->i_flag |= IN_CHANGE;
 if ((ip->i_mode & (ISUID | ISGID)) && (ouid != uid || ogid != gid)) {
  if (priv_check_cred(cred, PRIV_VFS_RETAINSUGID) != 0)
   ip->i_mode &= ~(ISUID | ISGID);
 }
 return (0);
}
