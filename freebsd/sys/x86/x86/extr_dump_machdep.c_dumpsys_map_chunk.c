
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;


 int PAGE_SIZE ;
 void* pmap_kenter_temporary (int ,int) ;
 int trunc_page (scalar_t__) ;

void
dumpsys_map_chunk(vm_paddr_t pa, size_t chunk, void **va)
{
 int i;
 vm_paddr_t a;

 for (i = 0; i < chunk; i++) {
  a = pa + i * PAGE_SIZE;
  *va = pmap_kenter_temporary(trunc_page(a), i);
 }
}
