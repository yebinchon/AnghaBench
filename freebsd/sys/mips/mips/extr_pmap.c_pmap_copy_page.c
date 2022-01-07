
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef void* caddr_t ;


 scalar_t__ MIPS_DIRECT_MAPPABLE (int ) ;
 scalar_t__ MIPS_PHYS_TO_DIRECT (int ) ;
 scalar_t__ PAGE_SIZE ;
 int VM_PAGE_TO_PHYS (int ) ;
 int bcopy (void*,void*,scalar_t__) ;
 int mips_dcache_wbinv_range (scalar_t__,scalar_t__) ;
 int mips_dcache_wbinv_range_index (scalar_t__,scalar_t__) ;
 int pmap_flush_pvcache (int ) ;
 scalar_t__ pmap_lmem_map2 (int ,int ) ;
 int pmap_lmem_unmap () ;

void
pmap_copy_page(vm_page_t src, vm_page_t dst)
{
 vm_offset_t va_src, va_dst;
 vm_paddr_t phys_src = VM_PAGE_TO_PHYS(src);
 vm_paddr_t phys_dst = VM_PAGE_TO_PHYS(dst);

 if (MIPS_DIRECT_MAPPABLE(phys_src) && MIPS_DIRECT_MAPPABLE(phys_dst)) {





  pmap_flush_pvcache(src);
  mips_dcache_wbinv_range_index(
      MIPS_PHYS_TO_DIRECT(phys_dst), PAGE_SIZE);
  va_src = MIPS_PHYS_TO_DIRECT(phys_src);
  va_dst = MIPS_PHYS_TO_DIRECT(phys_dst);
  bcopy((caddr_t)va_src, (caddr_t)va_dst, PAGE_SIZE);
  mips_dcache_wbinv_range(va_dst, PAGE_SIZE);
 } else {
  va_src = pmap_lmem_map2(phys_src, phys_dst);
  va_dst = va_src + PAGE_SIZE;
  bcopy((void *)va_src, (void *)va_dst, PAGE_SIZE);
  mips_dcache_wbinv_range(va_dst, PAGE_SIZE);
  pmap_lmem_unmap();
 }
}
