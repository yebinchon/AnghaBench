
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct vnode {TYPE_1__* v_mount; } ;
struct ucred {int dummy; } ;
struct tmpfs_node {scalar_t__ tn_uid; scalar_t__ tn_gid; int tn_flags; int tn_mode; int tn_status; } ;
struct thread {int dummy; } ;
typedef scalar_t__ gid_t ;
struct TYPE_2__ {int mnt_flag; } ;


 int APPEND ;
 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int EPERM ;
 int EROFS ;
 int IMMUTABLE ;
 int MNT_RDONLY ;
 int MPASS (int) ;
 int PRIV_VFS_CHOWN ;
 int PRIV_VFS_RETAINSUGID ;
 int S_ISGID ;
 int S_ISUID ;
 int TMPFS_NODE_CHANGED ;
 int VADMIN ;
 scalar_t__ VNOVAL ;
 int VOP_ACCESS (struct vnode*,int ,struct ucred*,struct thread*) ;
 struct tmpfs_node* VP_TO_TMPFS_NODE (struct vnode*) ;
 int groupmember (scalar_t__,struct ucred*) ;
 int priv_check_cred (struct ucred*,int ) ;

int
tmpfs_chown(struct vnode *vp, uid_t uid, gid_t gid, struct ucred *cred,
    struct thread *p)
{
 int error;
 struct tmpfs_node *node;
 uid_t ouid;
 gid_t ogid;

 ASSERT_VOP_ELOCKED(vp, "chown");

 node = VP_TO_TMPFS_NODE(vp);


 MPASS(uid != VNOVAL || gid != VNOVAL);
 if (uid == VNOVAL)
  uid = node->tn_uid;
 if (gid == VNOVAL)
  gid = node->tn_gid;
 MPASS(uid != VNOVAL && gid != VNOVAL);


 if (vp->v_mount->mnt_flag & MNT_RDONLY)
  return EROFS;


 if (node->tn_flags & (IMMUTABLE | APPEND))
  return EPERM;





 if ((error = VOP_ACCESS(vp, VADMIN, cred, p)))
  return (error);






 if ((uid != node->tn_uid ||
     (gid != node->tn_gid && !groupmember(gid, cred))) &&
     (error = priv_check_cred(cred, PRIV_VFS_CHOWN)))
  return (error);

 ogid = node->tn_gid;
 ouid = node->tn_uid;

 node->tn_uid = uid;
 node->tn_gid = gid;

 node->tn_status |= TMPFS_NODE_CHANGED;

 if ((node->tn_mode & (S_ISUID | S_ISGID)) && (ouid != uid || ogid != gid)) {
  if (priv_check_cred(cred, PRIV_VFS_RETAINSUGID))
   node->tn_mode &= ~(S_ISUID | S_ISGID);
 }

 ASSERT_VOP_ELOCKED(vp, "chown2");

 return (0);
}
