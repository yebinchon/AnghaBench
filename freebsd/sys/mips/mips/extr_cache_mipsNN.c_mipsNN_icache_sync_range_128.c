
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;


 int CACHEOP_R4K_HIT_INV ;
 int CACHE_R4K_I ;
 int SYNC ;
 int cache_op_r4k_line (int,int) ;
 int cache_r4k_op_32lines_128 (int,int) ;
 int mips_intern_dcache_wb_range (int,int) ;
 int round_line128 (int) ;
 int trunc_line128 (int) ;

void
mipsNN_icache_sync_range_128(vm_offset_t va, vm_size_t size)
{
 vm_offset_t eva;

 eva = round_line128(va + size);
 va = trunc_line128(va);

 mips_intern_dcache_wb_range(va, (eva - va));

 while ((eva - va) >= (32 * 128)) {
  cache_r4k_op_32lines_128(va, CACHE_R4K_I|CACHEOP_R4K_HIT_INV);
  va += (32 * 128);
 }

 while (va < eva) {
  cache_op_r4k_line(va, CACHE_R4K_I|CACHEOP_R4K_HIT_INV);
  va += 128;
 }

 SYNC;
}
