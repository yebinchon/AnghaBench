
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_radix_node {int dummy; } ;
struct vm_radix {uintptr_t rt_root; } ;



__attribute__((used)) static __inline void
vm_radix_setroot(struct vm_radix *rtree, struct vm_radix_node *rnode)
{

 rtree->rt_root = (uintptr_t)rnode;
}
