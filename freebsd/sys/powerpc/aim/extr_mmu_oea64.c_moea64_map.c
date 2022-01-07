
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef int mmu_t ;


 scalar_t__ LPTE_M ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ PHYS_TO_DMAP (scalar_t__) ;
 int VM_MEMATTR_DEFAULT ;
 scalar_t__ hw_direct_map ;
 scalar_t__ moea64_calc_wimg (scalar_t__,int ) ;
 int moea64_kenter (int ,scalar_t__,scalar_t__) ;

vm_offset_t
moea64_map(mmu_t mmu, vm_offset_t *virt, vm_paddr_t pa_start,
    vm_paddr_t pa_end, int prot)
{
 vm_offset_t sva, va;

 if (hw_direct_map) {






  for (va = pa_start; va < pa_end; va += PAGE_SIZE)
   if (moea64_calc_wimg(va, VM_MEMATTR_DEFAULT) != LPTE_M)
    break;
  if (va == pa_end)
   return (PHYS_TO_DMAP(pa_start));
 }
 sva = *virt;
 va = sva;

 for (; pa_start < pa_end; pa_start += PAGE_SIZE, va += PAGE_SIZE)
  moea64_kenter(mmu, va, pa_start);
 *virt = va;

 return (sva);
}
