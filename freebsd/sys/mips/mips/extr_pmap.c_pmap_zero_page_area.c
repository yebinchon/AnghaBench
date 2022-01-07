
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ caddr_t ;


 scalar_t__ MIPS_DIRECT_MAPPABLE (int ) ;
 scalar_t__ MIPS_PHYS_TO_DIRECT (int ) ;
 int VM_PAGE_TO_PHYS (int ) ;
 int bzero (char*,int) ;
 int mips_dcache_wbinv_range (scalar_t__,int) ;
 scalar_t__ pmap_lmem_map1 (int ) ;
 int pmap_lmem_unmap () ;

void
pmap_zero_page_area(vm_page_t m, int off, int size)
{
 vm_offset_t va;
 vm_paddr_t phys = VM_PAGE_TO_PHYS(m);

 if (MIPS_DIRECT_MAPPABLE(phys)) {
  va = MIPS_PHYS_TO_DIRECT(phys);
  bzero((char *)(caddr_t)va + off, size);
  mips_dcache_wbinv_range(va + off, size);
 } else {
  va = pmap_lmem_map1(phys);
  bzero((char *)va + off, size);
  mips_dcache_wbinv_range(va + off, size);
  pmap_lmem_unmap();
 }
}
