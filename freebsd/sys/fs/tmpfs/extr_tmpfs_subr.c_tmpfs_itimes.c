
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct timespec {int dummy; } ;
struct tmpfs_node {int tn_status; struct timespec tn_ctime; struct timespec tn_mtime; struct timespec tn_atime; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int RANDOM_FS_ATIME ;
 int TMPFS_NODE_ACCESSED ;
 int TMPFS_NODE_CHANGED ;
 int TMPFS_NODE_LOCK (struct tmpfs_node*) ;
 int TMPFS_NODE_MODIFIED ;
 int TMPFS_NODE_UNLOCK (struct tmpfs_node*) ;
 struct tmpfs_node* VP_TO_TMPFS_NODE (struct vnode*) ;
 int random_harvest_queue (struct tmpfs_node*,int,int ) ;
 int vfs_timestamp (struct timespec*) ;

void
tmpfs_itimes(struct vnode *vp, const struct timespec *acc,
    const struct timespec *mod)
{
 struct tmpfs_node *node;
 struct timespec now;

 ASSERT_VOP_LOCKED(vp, "tmpfs_itimes");
 node = VP_TO_TMPFS_NODE(vp);

 if ((node->tn_status & (TMPFS_NODE_ACCESSED | TMPFS_NODE_MODIFIED |
     TMPFS_NODE_CHANGED)) == 0)
  return;

 vfs_timestamp(&now);
 TMPFS_NODE_LOCK(node);
 if (node->tn_status & TMPFS_NODE_ACCESSED) {
  if (acc == ((void*)0))
    acc = &now;
  node->tn_atime = *acc;
 }
 if (node->tn_status & TMPFS_NODE_MODIFIED) {
  if (mod == ((void*)0))
   mod = &now;
  node->tn_mtime = *mod;
 }
 if (node->tn_status & TMPFS_NODE_CHANGED)
  node->tn_ctime = now;
 node->tn_status &= ~(TMPFS_NODE_ACCESSED | TMPFS_NODE_MODIFIED |
     TMPFS_NODE_CHANGED);
 TMPFS_NODE_UNLOCK(node);


 random_harvest_queue(node, sizeof(*node), RANDOM_FS_ATIME);
}
