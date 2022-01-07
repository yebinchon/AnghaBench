
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_radix_node {int dummy; } ;


 int uma_zfree (int ,struct vm_radix_node*) ;
 int vm_radix_node_zone ;

__attribute__((used)) static __inline void
vm_radix_node_put(struct vm_radix_node *rnode)
{

 uma_zfree(vm_radix_node_zone, rnode);
}
