
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqfs_node {int mn_refcount; } ;


 int atomic_add_int (int *,int) ;

__attribute__((used)) static __inline void
mqnode_addref(struct mqfs_node *node)
{
 atomic_add_int(&node->mn_refcount, 1);
}
