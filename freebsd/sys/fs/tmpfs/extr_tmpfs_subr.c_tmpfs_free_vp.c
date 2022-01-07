
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int * v_data; } ;
struct tmpfs_node {int tn_vpstate; int * tn_vnode; } ;


 int TMPFS_NODE_ASSERT_LOCKED (struct tmpfs_node*) ;
 int TMPFS_VNODE_WRECLAIM ;
 struct tmpfs_node* VP_TO_TMPFS_NODE (struct vnode*) ;
 int wakeup (int **) ;

void
tmpfs_free_vp(struct vnode *vp)
{
 struct tmpfs_node *node;

 node = VP_TO_TMPFS_NODE(vp);

 TMPFS_NODE_ASSERT_LOCKED(node);
 node->tn_vnode = ((void*)0);
 if ((node->tn_vpstate & TMPFS_VNODE_WRECLAIM) != 0)
  wakeup(&node->tn_vnode);
 node->tn_vpstate &= ~TMPFS_VNODE_WRECLAIM;
 vp->v_data = ((void*)0);
}
