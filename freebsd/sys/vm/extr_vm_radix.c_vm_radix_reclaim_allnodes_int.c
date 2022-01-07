
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_radix_node {scalar_t__ rn_count; struct vm_radix_node** rn_child; } ;


 int KASSERT (int,char*) ;
 scalar_t__ VM_RADIX_COUNT ;
 int vm_radix_isleaf (struct vm_radix_node*) ;
 int vm_radix_node_put (struct vm_radix_node*) ;

__attribute__((used)) static void
vm_radix_reclaim_allnodes_int(struct vm_radix_node *rnode)
{
 int slot;

 KASSERT(rnode->rn_count <= VM_RADIX_COUNT,
     ("vm_radix_reclaim_allnodes_int: bad count in rnode %p", rnode));
 for (slot = 0; rnode->rn_count != 0; slot++) {
  if (rnode->rn_child[slot] == ((void*)0))
   continue;
  if (!vm_radix_isleaf(rnode->rn_child[slot]))
   vm_radix_reclaim_allnodes_int(rnode->rn_child[slot]);
  rnode->rn_child[slot] = ((void*)0);
  rnode->rn_count--;
 }
 vm_radix_node_put(rnode);
}
