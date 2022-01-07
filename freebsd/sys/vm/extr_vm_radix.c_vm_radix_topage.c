
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
struct vm_radix_node {int dummy; } ;


 uintptr_t VM_RADIX_FLAGS ;

__attribute__((used)) static __inline vm_page_t
vm_radix_topage(struct vm_radix_node *rnode)
{

 return ((vm_page_t)((uintptr_t)rnode & ~VM_RADIX_FLAGS));
}
