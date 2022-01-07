
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;


 int PAGE_SHIFT ;
 int atomic_clear_int (int *,unsigned long) ;
 int * vm_page_dump ;

void
dump_drop_page(vm_paddr_t pa)
{
 int idx, bit;

 pa >>= PAGE_SHIFT;
 idx = pa >> 5;
 bit = pa & 31;
 atomic_clear_int(&vm_page_dump[idx], 1ul << bit);
}
