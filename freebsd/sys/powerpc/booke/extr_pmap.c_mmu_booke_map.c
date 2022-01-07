
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int vm_offset_t ;
typedef int mmu_t ;


 int Maxmem ;
 scalar_t__ PAGE_SIZE ;
 int PHYS_TO_DMAP (scalar_t__) ;
 scalar_t__ ctob (int ) ;
 int mmu_booke_kenter (int ,int ,scalar_t__) ;

__attribute__((used)) static vm_offset_t
mmu_booke_map(mmu_t mmu, vm_offset_t *virt, vm_paddr_t pa_start,
    vm_paddr_t pa_end, int prot)
{
 vm_offset_t sva = *virt;
 vm_offset_t va = sva;







 while (pa_start < pa_end) {
  mmu_booke_kenter(mmu, va, pa_start);
  va += PAGE_SIZE;
  pa_start += PAGE_SIZE;
 }
 *virt = va;

 return (sva);
}
