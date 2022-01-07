
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt_entry_t ;


 int PAGE_SIZE ;
 int PTE_G ;
 int kernel_pmap ;
 int mips_dcache_wbinv_range_index (int ,int ) ;
 int pmap_invalidate_page (int ,int ) ;
 int * pmap_pte (int ,int ) ;

void
pmap_kremove(vm_offset_t va)
{
 pt_entry_t *pte;




 mips_dcache_wbinv_range_index(va, PAGE_SIZE);

 pte = pmap_pte(kernel_pmap, va);
 *pte = PTE_G;
 pmap_invalidate_page(kernel_pmap, va);
}
