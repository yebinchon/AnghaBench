
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 int CACHEOP_R4K_INDEX_INV ;
 int CACHE_R4K_I ;
 scalar_t__ MIPS_PHYS_TO_KSEG0 (int ) ;
 int SYNC ;
 int cache_r4k_op_32lines_128 (scalar_t__,int) ;
 int mips_intern_dcache_wbinv_all () ;
 scalar_t__ picache_size ;

void
mipsNN_icache_sync_all_128(void)
{
 vm_offset_t va, eva;

 va = MIPS_PHYS_TO_KSEG0(0);
 eva = va + picache_size;






 mips_intern_dcache_wbinv_all();

 while (va < eva) {
  cache_r4k_op_32lines_128(va, CACHE_R4K_I|CACHEOP_R4K_INDEX_INV);
  va += (32 * 128);
 }

 SYNC;
}
