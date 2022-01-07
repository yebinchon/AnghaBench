
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ pmap_t ;


 scalar_t__ PAGE_SIZE ;
 int invlpg (scalar_t__) ;
 scalar_t__ kernel_pmap ;

__attribute__((used)) static void
pmap_invalidate_range_int(pmap_t pmap, vm_offset_t sva, vm_offset_t eva)
{
 vm_offset_t addr;

 if (pmap == kernel_pmap)
  for (addr = sva; addr < eva; addr += PAGE_SIZE)
   invlpg(addr);
}
