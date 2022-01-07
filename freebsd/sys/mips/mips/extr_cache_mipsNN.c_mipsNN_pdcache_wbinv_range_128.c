
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;


 int CACHEOP_R4K_HIT_WB_INV ;
 int CACHE_R4K_D ;
 int SYNC ;
 int cache_op_r4k_line (int,int) ;
 int cache_r4k_op_32lines_128 (int,int) ;
 int round_line128 (int) ;
 int trunc_line128 (int) ;

void
mipsNN_pdcache_wbinv_range_128(vm_offset_t va, vm_size_t size)
{
 vm_offset_t eva;

 eva = round_line128(va + size);
 va = trunc_line128(va);

 while ((eva - va) >= (32 * 128)) {
  cache_r4k_op_32lines_128(va,
      CACHE_R4K_D|CACHEOP_R4K_HIT_WB_INV);
  va += (32 * 128);
 }

 while (va < eva) {
  cache_op_r4k_line(va, CACHE_R4K_D|CACHEOP_R4K_HIT_WB_INV);
  va += 128;
 }

 SYNC;
}
