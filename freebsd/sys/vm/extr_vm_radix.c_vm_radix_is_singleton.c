
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_radix_node {int dummy; } ;
struct vm_radix {int dummy; } ;
typedef int boolean_t ;


 int FALSE ;
 struct vm_radix_node* vm_radix_getroot (struct vm_radix*) ;
 int vm_radix_isleaf (struct vm_radix_node*) ;

boolean_t
vm_radix_is_singleton(struct vm_radix *rtree)
{
 struct vm_radix_node *rnode;

 rnode = vm_radix_getroot(rtree);
 if (rnode == ((void*)0))
  return (FALSE);
 return (vm_radix_isleaf(rnode));
}
