
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpfs_node {int dummy; } ;
struct tmpfs_mount {int dummy; } ;


 int TMPFS_LOCK (struct tmpfs_mount*) ;
 int TMPFS_NODE_LOCK (struct tmpfs_node*) ;
 int TMPFS_NODE_UNLOCK (struct tmpfs_node*) ;
 int TMPFS_UNLOCK (struct tmpfs_mount*) ;
 int tmpfs_free_node_locked (struct tmpfs_mount*,struct tmpfs_node*,int) ;

void
tmpfs_free_node(struct tmpfs_mount *tmp, struct tmpfs_node *node)
{

 TMPFS_LOCK(tmp);
 TMPFS_NODE_LOCK(node);
 if (!tmpfs_free_node_locked(tmp, node, 0)) {
  TMPFS_NODE_UNLOCK(node);
  TMPFS_UNLOCK(tmp);
 }
}
