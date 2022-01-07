
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int mmu_t ;


 scalar_t__ PAGE_SIZE ;
 int moea_kenter (int ,int ,int ) ;

vm_offset_t
moea_map(mmu_t mmu, vm_offset_t *virt, vm_paddr_t pa_start,
    vm_paddr_t pa_end, int prot)
{
 vm_offset_t sva, va;

 sva = *virt;
 va = sva;
 for (; pa_start < pa_end; pa_start += PAGE_SIZE, va += PAGE_SIZE)
  moea_kenter(mmu, va, pa_start);
 *virt = va;
 return (sva);
}
