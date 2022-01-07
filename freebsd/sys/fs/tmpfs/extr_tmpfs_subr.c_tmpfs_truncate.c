
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int v_mount; } ;
struct tmpfs_node {scalar_t__ tn_size; int tn_status; } ;
typedef scalar_t__ off_t ;
struct TYPE_2__ {scalar_t__ tm_maxfilesize; } ;


 int EFBIG ;
 int EINVAL ;
 int FALSE ;
 int TMPFS_NODE_CHANGED ;
 int TMPFS_NODE_MODIFIED ;
 TYPE_1__* VFS_TO_TMPFS (int ) ;
 struct tmpfs_node* VP_TO_TMPFS_NODE (struct vnode*) ;
 int tmpfs_reg_resize (struct vnode*,scalar_t__,int ) ;
 int tmpfs_update (struct vnode*) ;

int
tmpfs_truncate(struct vnode *vp, off_t length)
{
 int error;
 struct tmpfs_node *node;

 node = VP_TO_TMPFS_NODE(vp);

 if (length < 0) {
  error = EINVAL;
  goto out;
 }

 if (node->tn_size == length) {
  error = 0;
  goto out;
 }

 if (length > VFS_TO_TMPFS(vp->v_mount)->tm_maxfilesize)
  return (EFBIG);

 error = tmpfs_reg_resize(vp, length, FALSE);
 if (error == 0)
  node->tn_status |= TMPFS_NODE_CHANGED | TMPFS_NODE_MODIFIED;

out:
 tmpfs_update(vp);

 return (error);
}
