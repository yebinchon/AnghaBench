
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* PCPU_GET (int ) ;
 scalar_t__ PTE_G ;
 int cmap1_addr ;
 int cmap1_ptep ;
 int cmap2_addr ;
 int cmap2_ptep ;
 int critical_exit () ;
 int kernel_pmap ;
 int tlb_invalidate_address (int ,scalar_t__*) ;

__attribute__((used)) static __inline void
pmap_lmem_unmap(void)
{
  *PCPU_GET(cmap1_ptep) = PTE_G;
 tlb_invalidate_address(kernel_pmap, PCPU_GET(cmap1_addr));
 if (*PCPU_GET(cmap2_ptep) != PTE_G) {
  *PCPU_GET(cmap2_ptep) = PTE_G;
  tlb_invalidate_address(kernel_pmap, PCPU_GET(cmap2_addr));
  }
 critical_exit();
}
