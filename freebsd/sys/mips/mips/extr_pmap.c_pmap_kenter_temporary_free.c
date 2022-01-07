
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int pt_entry_t ;


 scalar_t__ MIPS_DIRECT_MAPPABLE (int ) ;
 int PTE_G ;
 int crashdumpva ;
 int kernel_pmap ;
 int pmap_invalidate_page (int ,int ) ;
 int * pmap_pte (int ,int ) ;

void
pmap_kenter_temporary_free(vm_paddr_t pa)
{

 pt_entry_t *pte;

 if (MIPS_DIRECT_MAPPABLE(pa)) {

  return;
 }

 pte = pmap_pte(kernel_pmap, crashdumpva);
 *pte = PTE_G;
 pmap_invalidate_page(kernel_pmap, crashdumpva);

}
