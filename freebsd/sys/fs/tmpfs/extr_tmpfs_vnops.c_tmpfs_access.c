
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_access_args {int a_accmode; struct ucred* a_cred; struct vnode* a_vp; } ;
struct vnode {int v_type; TYPE_1__* v_mount; } ;
struct ucred {int dummy; } ;
struct tmpfs_node {int tn_flags; int tn_gid; int tn_uid; int tn_mode; } ;
typedef int accmode_t ;
struct TYPE_2__ {int mnt_flag; } ;


 int EINVAL ;
 int EPERM ;
 int EROFS ;
 int IMMUTABLE ;
 int MNT_RDONLY ;
 int MPASS (int ) ;





 int VOP_ISLOCKED (struct vnode*) ;
 struct tmpfs_node* VP_TO_TMPFS_NODE (struct vnode*) ;


 int VWRITE ;
 int vaccess (int,int ,int ,int ,int,struct ucred*,int *) ;

int
tmpfs_access(struct vop_access_args *v)
{
 struct vnode *vp = v->a_vp;
 accmode_t accmode = v->a_accmode;
 struct ucred *cred = v->a_cred;

 int error;
 struct tmpfs_node *node;

 MPASS(VOP_ISLOCKED(vp));

 node = VP_TO_TMPFS_NODE(vp);

 switch (vp->v_type) {
 case 132:

 case 130:

 case 129:
  if (accmode & VWRITE && vp->v_mount->mnt_flag & MNT_RDONLY) {
   error = EROFS;
   goto out;
  }
  break;

 case 134:

 case 133:

 case 128:

 case 131:
  break;

 default:
  error = EINVAL;
  goto out;
 }

 if (accmode & VWRITE && node->tn_flags & IMMUTABLE) {
  error = EPERM;
  goto out;
 }

 error = vaccess(vp->v_type, node->tn_mode, node->tn_uid,
     node->tn_gid, accmode, cred, ((void*)0));

out:
 MPASS(VOP_ISLOCKED(vp));

 return error;
}
