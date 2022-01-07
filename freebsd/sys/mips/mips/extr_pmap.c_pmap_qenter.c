
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;


 int PAGE_SIZE ;
 int VM_PAGE_TO_PHYS (int ) ;
 int mips_dcache_wbinv_range_index (int,int) ;
 int pmap_flush_pvcache (int ) ;
 int pmap_kenter (int,int ) ;

void
pmap_qenter(vm_offset_t va, vm_page_t *m, int count)
{
 int i;
 vm_offset_t origva = va;

 for (i = 0; i < count; i++) {
  pmap_flush_pvcache(m[i]);
  pmap_kenter(va, VM_PAGE_TO_PHYS(m[i]));
  va += PAGE_SIZE;
 }

 mips_dcache_wbinv_range_index(origva, PAGE_SIZE*count);
}
