
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef int mmu_t ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ PHYS_TO_DMAP (int ) ;
 int VM_PAGE_TO_PHYS (int ) ;
 scalar_t__ cacheline_size ;
 int hw_direct_map ;
 int moea64_scratchpage_mtx ;
 scalar_t__* moea64_scratchpage_va ;
 int moea64_set_scratchpage_pa (int ,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
moea64_zero_page(mmu_t mmu, vm_page_t m)
{
 vm_paddr_t pa = VM_PAGE_TO_PHYS(m);
 vm_offset_t va, off;

 if (!hw_direct_map) {
  mtx_lock(&moea64_scratchpage_mtx);

  moea64_set_scratchpage_pa(mmu, 0, pa);
  va = moea64_scratchpage_va[0];
 } else {
  va = PHYS_TO_DMAP(pa);
 }

 for (off = 0; off < PAGE_SIZE; off += cacheline_size)
  __asm __volatile("dcbz 0,%0" :: "r"(va + off));

 if (!hw_direct_map)
  mtx_unlock(&moea64_scratchpage_mtx);
}
