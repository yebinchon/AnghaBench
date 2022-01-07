
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_radix_node {int dummy; } ;
typedef int boolean_t ;


 uintptr_t VM_RADIX_ISLEAF ;

__attribute__((used)) static __inline boolean_t
vm_radix_isleaf(struct vm_radix_node *rnode)
{

 return (((uintptr_t)rnode & VM_RADIX_ISLEAF) != 0);
}
