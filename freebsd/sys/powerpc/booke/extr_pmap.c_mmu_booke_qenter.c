
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int mmu_t ;


 scalar_t__ PAGE_SIZE ;
 int VM_PAGE_TO_PHYS (int ) ;
 int mmu_booke_kenter (int ,int ,int ) ;

__attribute__((used)) static void
mmu_booke_qenter(mmu_t mmu, vm_offset_t sva, vm_page_t *m, int count)
{
 vm_offset_t va;

 va = sva;
 while (count-- > 0) {
  mmu_booke_kenter(mmu, va, VM_PAGE_TO_PHYS(*m));
  va += PAGE_SIZE;
  m++;
 }
}
