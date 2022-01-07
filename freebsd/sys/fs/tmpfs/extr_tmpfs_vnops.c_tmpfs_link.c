
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_link_args {struct componentname* a_cnp; struct vnode* a_vp; struct vnode* a_tdvp; } ;
struct vnode {int v_mount; } ;
struct tmpfs_node {scalar_t__ tn_links; int tn_flags; int tn_status; } ;
struct tmpfs_dirent {int dummy; } ;
struct componentname {int cn_flags; int cn_namelen; int cn_nameptr; } ;


 int APPEND ;
 int EMLINK ;
 int EPERM ;
 int HASBUF ;
 int IMMUTABLE ;
 int ISWHITEOUT ;
 int MPASS (int) ;
 scalar_t__ TMPFS_LINK_MAX ;
 int TMPFS_NODE_CHANGED ;
 int VFS_TO_TMPFS (int ) ;
 int VOP_ISLOCKED (struct vnode*) ;
 struct tmpfs_node* VP_TO_TMPFS_NODE (struct vnode*) ;
 int tmpfs_alloc_dirent (int ,struct tmpfs_node*,int ,int ,struct tmpfs_dirent**) ;
 int tmpfs_dir_attach (struct vnode*,struct tmpfs_dirent*) ;
 int tmpfs_dir_whiteout_remove (struct vnode*,struct componentname*) ;
 int tmpfs_update (struct vnode*) ;

__attribute__((used)) static int
tmpfs_link(struct vop_link_args *v)
{
 struct vnode *dvp = v->a_tdvp;
 struct vnode *vp = v->a_vp;
 struct componentname *cnp = v->a_cnp;

 int error;
 struct tmpfs_dirent *de;
 struct tmpfs_node *node;

 MPASS(VOP_ISLOCKED(dvp));
 MPASS(cnp->cn_flags & HASBUF);
 MPASS(dvp != vp);
 node = VP_TO_TMPFS_NODE(vp);



 MPASS(node->tn_links <= TMPFS_LINK_MAX);
 if (node->tn_links == TMPFS_LINK_MAX) {
  error = EMLINK;
  goto out;
 }


 if (node->tn_flags & (IMMUTABLE | APPEND)) {
  error = EPERM;
  goto out;
 }


 error = tmpfs_alloc_dirent(VFS_TO_TMPFS(vp->v_mount), node,
     cnp->cn_nameptr, cnp->cn_namelen, &de);
 if (error != 0)
  goto out;


 if (cnp->cn_flags & ISWHITEOUT)
  tmpfs_dir_whiteout_remove(dvp, cnp);
 tmpfs_dir_attach(dvp, de);


 node->tn_status |= TMPFS_NODE_CHANGED;
 tmpfs_update(vp);

 error = 0;

out:
 return error;
}
