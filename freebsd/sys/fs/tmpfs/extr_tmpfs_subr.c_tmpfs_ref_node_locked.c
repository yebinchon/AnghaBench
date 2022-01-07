
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpfs_node {scalar_t__ tn_refcount; } ;


 int KASSERT (int,char*) ;
 int TMPFS_NODE_ASSERT_LOCKED (struct tmpfs_node*) ;
 scalar_t__ UINT_MAX ;

void
tmpfs_ref_node_locked(struct tmpfs_node *node)
{

 TMPFS_NODE_ASSERT_LOCKED(node);
 KASSERT(node->tn_refcount > 0, ("node %p zero refcount", node));
 KASSERT(node->tn_refcount < UINT_MAX, ("node %p refcount %u", node,
     node->tn_refcount));
 node->tn_refcount++;
}
