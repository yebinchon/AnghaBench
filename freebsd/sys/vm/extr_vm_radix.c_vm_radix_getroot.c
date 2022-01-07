
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_radix_node {int dummy; } ;
struct vm_radix {scalar_t__ rt_root; } ;



__attribute__((used)) static __inline struct vm_radix_node *
vm_radix_getroot(struct vm_radix *rtree)
{

 return ((struct vm_radix_node *)rtree->rt_root);
}
