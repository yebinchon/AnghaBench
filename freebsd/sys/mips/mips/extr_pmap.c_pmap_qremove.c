
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt_entry_t ;


 int PAGE_SIZE ;
 int PTE_G ;
 int kernel_pmap ;
 int mips_dcache_wbinv_range_index (int,int) ;
 int pmap_invalidate_range (int ,int,int) ;
 int * pmap_pte (int ,int) ;

void
pmap_qremove(vm_offset_t va, int count)
{
 pt_entry_t *pte;
 vm_offset_t origva;

 if (count < 1)
  return;
 mips_dcache_wbinv_range_index(va, PAGE_SIZE * count);
 origva = va;
 do {
  pte = pmap_pte(kernel_pmap, va);
  *pte = PTE_G;
  va += PAGE_SIZE;
 } while (--count > 0);
 pmap_invalidate_range(kernel_pmap, origva, va);
}
