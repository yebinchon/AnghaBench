
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;


 int CACHEOP_R4K_INDEX_WB_INV ;
 int CACHE_R4K_SD ;
 int MIPS_PHYS_TO_KSEG0 (int) ;
 int cache_op_r4k_line (int,int) ;
 int cache_r4k_op_32lines_64 (int,int) ;
 int round_line64 (int) ;
 int sdcache_size ;
 int trunc_line64 (int) ;

void
mipsNN_sdcache_wbinv_range_index_64(vm_offset_t va, vm_size_t size)
{
 vm_offset_t eva;







 va = MIPS_PHYS_TO_KSEG0(va & (sdcache_size - 1));

 eva = round_line64(va + size);
 va = trunc_line64(va);

 while ((eva - va) >= (32 * 64)) {
  cache_r4k_op_32lines_64(va,
      CACHE_R4K_SD|CACHEOP_R4K_INDEX_WB_INV);
  va += (32 * 64);
 }

 while (va < eva) {
  cache_op_r4k_line(va, CACHE_R4K_SD|CACHEOP_R4K_INDEX_WB_INV);
  va += 64;
 }
}
