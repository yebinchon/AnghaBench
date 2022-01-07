
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
typedef int uint16_t ;


 int VM_RADIX_MASK ;
 int VM_RADIX_WIDTH ;

__attribute__((used)) static __inline int
vm_radix_slot(vm_pindex_t index, uint16_t level)
{

 return ((index >> (level * VM_RADIX_WIDTH)) & VM_RADIX_MASK);
}
