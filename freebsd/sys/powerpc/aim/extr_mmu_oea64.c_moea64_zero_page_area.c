
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_paddr_t ;
typedef int mmu_t ;
typedef scalar_t__ caddr_t ;


 int PAGE_SIZE ;
 scalar_t__ PHYS_TO_DMAP (int ) ;
 int VM_PAGE_TO_PHYS (int ) ;
 int bzero (scalar_t__,int) ;
 scalar_t__ hw_direct_map ;
 int moea64_scratchpage_mtx ;
 scalar_t__* moea64_scratchpage_va ;
 int moea64_set_scratchpage_pa (int ,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*) ;

void
moea64_zero_page_area(mmu_t mmu, vm_page_t m, int off, int size)
{
 vm_paddr_t pa = VM_PAGE_TO_PHYS(m);

 if (size + off > PAGE_SIZE)
  panic("moea64_zero_page: size + off > PAGE_SIZE");

 if (hw_direct_map) {
  bzero((caddr_t)(uintptr_t)PHYS_TO_DMAP(pa) + off, size);
 } else {
  mtx_lock(&moea64_scratchpage_mtx);
  moea64_set_scratchpage_pa(mmu, 0, pa);
  bzero((caddr_t)moea64_scratchpage_va[0] + off, size);
  mtx_unlock(&moea64_scratchpage_mtx);
 }
}
