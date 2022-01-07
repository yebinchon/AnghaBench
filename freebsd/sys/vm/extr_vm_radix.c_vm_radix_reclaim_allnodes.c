
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_radix_node {int dummy; } ;
struct vm_radix {int dummy; } ;


 struct vm_radix_node* vm_radix_getroot (struct vm_radix*) ;
 int vm_radix_isleaf (struct vm_radix_node*) ;
 int vm_radix_reclaim_allnodes_int (struct vm_radix_node*) ;
 int vm_radix_setroot (struct vm_radix*,int *) ;

void
vm_radix_reclaim_allnodes(struct vm_radix *rtree)
{
 struct vm_radix_node *root;

 root = vm_radix_getroot(rtree);
 if (root == ((void*)0))
  return;
 vm_radix_setroot(rtree, ((void*)0));
 if (!vm_radix_isleaf(root))
  vm_radix_reclaim_allnodes_int(root);
}
