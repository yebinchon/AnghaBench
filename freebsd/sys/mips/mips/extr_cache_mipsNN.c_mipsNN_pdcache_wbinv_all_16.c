
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 int CACHEOP_R4K_INDEX_WB_INV ;
 int CACHE_R4K_D ;
 scalar_t__ MIPS_PHYS_TO_KSEG0 (int ) ;
 int SYNC ;
 int cache_r4k_op_32lines_16 (scalar_t__,int) ;
 scalar_t__ pdcache_size ;

void
mipsNN_pdcache_wbinv_all_16(void)
{
 vm_offset_t va, eva;

 va = MIPS_PHYS_TO_KSEG0(0);
 eva = va + pdcache_size;






 while (va < eva) {
  cache_r4k_op_32lines_16(va,
      CACHE_R4K_D|CACHEOP_R4K_INDEX_WB_INV);
  va += (32 * 16);
 }

 SYNC;
}
