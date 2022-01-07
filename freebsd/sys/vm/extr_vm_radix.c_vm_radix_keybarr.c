
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_pindex_t ;
struct vm_radix_node {scalar_t__ rn_clev; scalar_t__ rn_owner; } ;
typedef int boolean_t ;


 int FALSE ;
 scalar_t__ VM_RADIX_LIMIT ;
 scalar_t__ vm_radix_trimkey (scalar_t__,scalar_t__) ;

__attribute__((used)) static __inline boolean_t
vm_radix_keybarr(struct vm_radix_node *rnode, vm_pindex_t idx)
{

 if (rnode->rn_clev < VM_RADIX_LIMIT) {
  idx = vm_radix_trimkey(idx, rnode->rn_clev + 1);
  return (idx != rnode->rn_owner);
 }
 return (FALSE);
}
