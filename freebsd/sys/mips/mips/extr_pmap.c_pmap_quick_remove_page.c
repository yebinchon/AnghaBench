
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vm_offset_t ;
typedef scalar_t__ pt_entry_t ;


 int KASSERT (int,char*) ;
 scalar_t__* MIPS_KSEG0_END ;
 scalar_t__* MIPS_KSEG0_START ;
 int PAGE_SIZE ;
 scalar_t__* PCPU_GET (int ) ;
 scalar_t__ PTE_G ;
 int critical_exit () ;
 int kernel_pmap ;
 int mips_dcache_wbinv_range (scalar_t__*,int ) ;
 int qmap_addr ;
 int qmap_ptep ;
 int tlb_invalidate_address (int ,scalar_t__*) ;

void
pmap_quick_remove_page(vm_offset_t addr)
{
 mips_dcache_wbinv_range(addr, PAGE_SIZE);


 pt_entry_t *pte;

 if (addr >= MIPS_KSEG0_START && addr < MIPS_KSEG0_END)
  return;

 pte = PCPU_GET(qmap_ptep);

 KASSERT(*pte != PTE_G,
     ("pmap_quick_remove_page: PTE not in use"));
 KASSERT(PCPU_GET(qmap_addr) == addr,
     ("pmap_quick_remove_page: invalid address"));

 *pte = PTE_G;
 tlb_invalidate_address(kernel_pmap, addr);
 critical_exit();

}
