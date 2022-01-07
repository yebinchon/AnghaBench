
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
typedef int uint16_t ;


 int VM_RADIX_WIDTH ;

__attribute__((used)) static __inline vm_pindex_t
vm_radix_trimkey(vm_pindex_t index, uint16_t level)
{
 vm_pindex_t ret;

 ret = index;
 if (level > 0) {
  ret >>= level * VM_RADIX_WIDTH;
  ret <<= level * VM_RADIX_WIDTH;
 }
 return (ret);
}
