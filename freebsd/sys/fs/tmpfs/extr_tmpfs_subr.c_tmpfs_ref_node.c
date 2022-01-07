
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpfs_node {int dummy; } ;


 int TMPFS_NODE_LOCK (struct tmpfs_node*) ;
 int TMPFS_NODE_UNLOCK (struct tmpfs_node*) ;
 int tmpfs_ref_node_locked (struct tmpfs_node*) ;

void
tmpfs_ref_node(struct tmpfs_node *node)
{

 TMPFS_NODE_LOCK(node);
 tmpfs_ref_node_locked(node);
 TMPFS_NODE_UNLOCK(node);
}
