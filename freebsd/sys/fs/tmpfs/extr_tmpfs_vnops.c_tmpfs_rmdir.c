
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vop_rmdir_args {TYPE_2__* a_cnp; struct vnode* a_vp; struct vnode* a_dvp; } ;
struct vnode {int v_mount; } ;
struct TYPE_4__ {struct tmpfs_node* tn_parent; } ;
struct tmpfs_node {scalar_t__ tn_size; int tn_flags; int tn_status; int tn_links; TYPE_1__ tn_dir; } ;
struct tmpfs_mount {int dummy; } ;
struct tmpfs_dirent {int dummy; } ;
struct TYPE_5__ {int cn_flags; int cn_namelen; int cn_nameptr; } ;


 int APPEND ;
 int DOWHITEOUT ;
 int ENOTEMPTY ;
 int EPERM ;
 int IMMUTABLE ;
 int MPASS (int) ;
 int NOUNLINK ;
 int TMPFS_DIRENT_MATCHES (struct tmpfs_dirent*,int ,int ) ;
 int TMPFS_NODE_ACCESSED ;
 int TMPFS_NODE_CHANGED ;
 int TMPFS_NODE_LOCK (struct tmpfs_node*) ;
 int TMPFS_NODE_MODIFIED ;
 int TMPFS_NODE_UNLOCK (struct tmpfs_node*) ;
 struct tmpfs_mount* VFS_TO_TMPFS (int ) ;
 int VOP_ISLOCKED (struct vnode*) ;
 struct tmpfs_node* VP_TO_TMPFS_DIR (struct vnode*) ;
 int cache_purge (struct vnode*) ;
 int tmpfs_dir_detach (struct vnode*,struct tmpfs_dirent*) ;
 struct tmpfs_dirent* tmpfs_dir_lookup (struct tmpfs_node*,struct tmpfs_node*,TYPE_2__*) ;
 int tmpfs_dir_whiteout_add (struct vnode*,TYPE_2__*) ;
 int tmpfs_free_dirent (struct tmpfs_mount*,struct tmpfs_dirent*) ;
 int tmpfs_update (struct vnode*) ;
 scalar_t__ tmpfs_use_nc (struct vnode*) ;

__attribute__((used)) static int
tmpfs_rmdir(struct vop_rmdir_args *v)
{
 struct vnode *dvp = v->a_dvp;
 struct vnode *vp = v->a_vp;

 int error;
 struct tmpfs_dirent *de;
 struct tmpfs_mount *tmp;
 struct tmpfs_node *dnode;
 struct tmpfs_node *node;

 MPASS(VOP_ISLOCKED(dvp));
 MPASS(VOP_ISLOCKED(vp));

 tmp = VFS_TO_TMPFS(dvp->v_mount);
 dnode = VP_TO_TMPFS_DIR(dvp);
 node = VP_TO_TMPFS_DIR(vp);



  if (node->tn_size > 0) {
   error = ENOTEMPTY;
   goto out;
  }

 if ((dnode->tn_flags & APPEND)
     || (node->tn_flags & (NOUNLINK | IMMUTABLE | APPEND))) {
  error = EPERM;
  goto out;
 }



 MPASS(node->tn_dir.tn_parent == dnode);



 de = tmpfs_dir_lookup(dnode, node, v->a_cnp);
 MPASS(TMPFS_DIRENT_MATCHES(de,
     v->a_cnp->cn_nameptr,
     v->a_cnp->cn_namelen));


 if ((dnode->tn_flags & APPEND) != 0 ||
     (node->tn_flags & (NOUNLINK | IMMUTABLE | APPEND)) != 0) {
  error = EPERM;
  goto out;
 }



 tmpfs_dir_detach(dvp, de);
 if (v->a_cnp->cn_flags & DOWHITEOUT)
  tmpfs_dir_whiteout_add(dvp, v->a_cnp);


 TMPFS_NODE_LOCK(node);
 node->tn_links--;
 node->tn_dir.tn_parent = ((void*)0);
 node->tn_status |= TMPFS_NODE_ACCESSED | TMPFS_NODE_CHANGED |
     TMPFS_NODE_MODIFIED;

 TMPFS_NODE_UNLOCK(node);

 TMPFS_NODE_LOCK(dnode);
 dnode->tn_links--;
 dnode->tn_status |= TMPFS_NODE_ACCESSED | TMPFS_NODE_CHANGED |
     TMPFS_NODE_MODIFIED;
 TMPFS_NODE_UNLOCK(dnode);

 if (tmpfs_use_nc(dvp)) {
  cache_purge(dvp);
  cache_purge(vp);
 }




 tmpfs_free_dirent(tmp, de);




 dnode->tn_status |= TMPFS_NODE_CHANGED;
 tmpfs_update(dvp);

 error = 0;

out:
 return error;
}
