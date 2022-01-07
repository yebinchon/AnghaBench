
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
struct TYPE_3__ {int mas1; scalar_t__ phys; scalar_t__ size; scalar_t__ virt; } ;
typedef TYPE_1__ tlb_entry_t ;


 int KASSERT (int,char*) ;
 int MAS1_VALID ;
 int PAGE_SIZE ;
 int TLB1_ENTRIES ;
 int _TLB_ENTRY_IO ;
 int _TLB_ENTRY_SHARED ;
 int ilog2 (scalar_t__) ;
 int pmap_bootstrapped ;
 scalar_t__ rounddown (scalar_t__,int ) ;
 scalar_t__ roundup (scalar_t__,int ) ;
 scalar_t__ roundup2 (scalar_t__,int) ;
 scalar_t__ tlb1_map_base ;
 int tlb1_read_entry (TYPE_1__*,int) ;
 int tlb1_set_entry (scalar_t__,scalar_t__,scalar_t__,int) ;

vm_offset_t
pmap_early_io_map(vm_paddr_t pa, vm_size_t size)
{
 vm_paddr_t pa_base;
 vm_offset_t va, sz;
 int i;
 tlb_entry_t e;

 KASSERT(!pmap_bootstrapped, ("Do not use after PMAP is up!"));

 for (i = 0; i < TLB1_ENTRIES; i++) {
  tlb1_read_entry(&e, i);
  if (!(e.mas1 & MAS1_VALID))
   continue;
  if (pa >= e.phys && (pa + size) <=
      (e.phys + e.size))
   return (e.virt + (pa - e.phys));
 }

 pa_base = rounddown(pa, PAGE_SIZE);
 size = roundup(size + (pa - pa_base), PAGE_SIZE);
 tlb1_map_base = roundup2(tlb1_map_base, 1 << (ilog2(size) & ~1));
 va = tlb1_map_base + (pa - pa_base);

 do {
  sz = 1 << (ilog2(size) & ~1);
  tlb1_set_entry(tlb1_map_base, pa_base, sz,
      _TLB_ENTRY_SHARED | _TLB_ENTRY_IO);
  size -= sz;
  pa_base += sz;
  tlb1_map_base += sz;
 } while (size > 0);

 return (va);
}
