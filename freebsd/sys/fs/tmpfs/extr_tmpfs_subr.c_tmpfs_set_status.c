
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpfs_node {int tn_status; } ;
struct tmpfs_mount {scalar_t__ tm_ronly; } ;


 int TMPFS_NODE_LOCK (struct tmpfs_node*) ;
 int TMPFS_NODE_UNLOCK (struct tmpfs_node*) ;

void
tmpfs_set_status(struct tmpfs_mount *tm, struct tmpfs_node *node, int status)
{

 if ((node->tn_status & status) == status || tm->tm_ronly)
  return;
 TMPFS_NODE_LOCK(node);
 node->tn_status |= status;
 TMPFS_NODE_UNLOCK(node);
}
