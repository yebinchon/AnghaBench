
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct inode {int i_mode; int i_flag; int i_gid; } ;


 int ALLPERMS ;
 int EFTYPE ;
 int IN_CHANGE ;
 int ISGID ;
 int PRIV_VFS_SETGID ;
 int PRIV_VFS_STICKYFILE ;
 int S_ISTXT ;
 int VADMIN ;
 scalar_t__ VDIR ;
 int VOP_ACCESS (struct vnode*,int ,struct ucred*,struct thread*) ;
 struct inode* VTOI (struct vnode*) ;
 int groupmember (int ,struct ucred*) ;
 int priv_check_cred (struct ucred*,int ) ;

__attribute__((used)) static int
ext2_chmod(struct vnode *vp, int mode, struct ucred *cred, struct thread *td)
{
 struct inode *ip = VTOI(vp);
 int error;





 if ((error = VOP_ACCESS(vp, VADMIN, cred, td)))
  return (error);





 if (vp->v_type != VDIR && (mode & S_ISTXT)) {
  error = priv_check_cred(cred, PRIV_VFS_STICKYFILE);
  if (error)
   return (EFTYPE);
 }
 if (!groupmember(ip->i_gid, cred) && (mode & ISGID)) {
  error = priv_check_cred(cred, PRIV_VFS_SETGID);
  if (error)
   return (error);
 }
 ip->i_mode &= ~ALLPERMS;
 ip->i_mode |= (mode & ALLPERMS);
 ip->i_flag |= IN_CHANGE;
 return (0);
}
