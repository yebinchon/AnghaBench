
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int vm_offset_t ;


 scalar_t__ MIPS_DIRECT_MAPPABLE (scalar_t__) ;
 int MIPS_PHYS_TO_DIRECT (scalar_t__) ;
 scalar_t__ PAGE_SIZE ;
 int pmap_kenter (int ,scalar_t__) ;

vm_offset_t
pmap_map(vm_offset_t *virt, vm_paddr_t start, vm_paddr_t end, int prot)
{
 vm_offset_t va, sva;

 if (MIPS_DIRECT_MAPPABLE(end - 1))
  return (MIPS_PHYS_TO_DIRECT(start));

 va = sva = *virt;
 while (start < end) {
  pmap_kenter(va, start);
  va += PAGE_SIZE;
  start += PAGE_SIZE;
 }
 *virt = va;
 return (sva);
}
