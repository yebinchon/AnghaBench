
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int mmu_t ;


 int PAGE_SIZE ;
 scalar_t__ PHYS_TO_DMAP (int ) ;
 int VM_PAGE_TO_PHYS (int ) ;
 int bcopy (void*,void*,int ) ;
 scalar_t__ hw_direct_map ;
 int moea64_scratchpage_mtx ;
 scalar_t__* moea64_scratchpage_va ;
 int moea64_set_scratchpage_pa (int ,int,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
moea64_copy_page(mmu_t mmu, vm_page_t msrc, vm_page_t mdst)
{
 vm_offset_t dst;
 vm_offset_t src;

 dst = VM_PAGE_TO_PHYS(mdst);
 src = VM_PAGE_TO_PHYS(msrc);

 if (hw_direct_map) {
  bcopy((void *)PHYS_TO_DMAP(src), (void *)PHYS_TO_DMAP(dst),
      PAGE_SIZE);
 } else {
  mtx_lock(&moea64_scratchpage_mtx);

  moea64_set_scratchpage_pa(mmu, 0, src);
  moea64_set_scratchpage_pa(mmu, 1, dst);

  bcopy((void *)moea64_scratchpage_va[0],
      (void *)moea64_scratchpage_va[1], PAGE_SIZE);

  mtx_unlock(&moea64_scratchpage_mtx);
 }
}
