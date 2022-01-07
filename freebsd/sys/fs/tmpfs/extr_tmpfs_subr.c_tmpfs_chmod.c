
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; TYPE_1__* v_mount; } ;
struct ucred {int dummy; } ;
struct tmpfs_node {int tn_flags; int tn_mode; int tn_status; int tn_gid; } ;
struct thread {int dummy; } ;
typedef int mode_t ;
struct TYPE_2__ {int mnt_flag; } ;


 int ALLPERMS ;
 int APPEND ;
 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int EFTYPE ;
 int EPERM ;
 int EROFS ;
 int IMMUTABLE ;
 int MNT_RDONLY ;
 int PRIV_VFS_SETGID ;
 int PRIV_VFS_STICKYFILE ;
 int S_ISGID ;
 int S_ISTXT ;
 int TMPFS_NODE_CHANGED ;
 int VADMIN ;
 scalar_t__ VDIR ;
 int VOP_ACCESS (struct vnode*,int ,struct ucred*,struct thread*) ;
 struct tmpfs_node* VP_TO_TMPFS_NODE (struct vnode*) ;
 int groupmember (int ,struct ucred*) ;
 int priv_check_cred (struct ucred*,int ) ;

int
tmpfs_chmod(struct vnode *vp, mode_t mode, struct ucred *cred, struct thread *p)
{
 int error;
 struct tmpfs_node *node;

 ASSERT_VOP_ELOCKED(vp, "chmod");

 node = VP_TO_TMPFS_NODE(vp);


 if (vp->v_mount->mnt_flag & MNT_RDONLY)
  return EROFS;


 if (node->tn_flags & (IMMUTABLE | APPEND))
  return EPERM;





 if ((error = VOP_ACCESS(vp, VADMIN, cred, p)))
  return (error);






 if (vp->v_type != VDIR && (mode & S_ISTXT)) {
  if (priv_check_cred(cred, PRIV_VFS_STICKYFILE))
   return (EFTYPE);
 }
 if (!groupmember(node->tn_gid, cred) && (mode & S_ISGID)) {
  error = priv_check_cred(cred, PRIV_VFS_SETGID);
  if (error)
   return (error);
 }


 node->tn_mode &= ~ALLPERMS;
 node->tn_mode |= mode & ALLPERMS;

 node->tn_status |= TMPFS_NODE_CHANGED;

 ASSERT_VOP_ELOCKED(vp, "chmod2");

 return (0);
}
