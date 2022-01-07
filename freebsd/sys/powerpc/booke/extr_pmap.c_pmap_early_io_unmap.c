
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
struct TYPE_4__ {int mas1; scalar_t__ virt; scalar_t__ size; } ;
typedef TYPE_1__ tlb_entry_t ;


 int MAS1_VALID ;
 int PAGE_SIZE ;
 int TLB1_ENTRIES ;
 scalar_t__ roundup (scalar_t__,int ) ;
 scalar_t__ tlb1_map_base ;
 int tlb1_read_entry (TYPE_1__*,int) ;
 int tlb1_write_entry (TYPE_1__*,int) ;

void
pmap_early_io_unmap(vm_offset_t va, vm_size_t size)
{
 int i;
 tlb_entry_t e;
 vm_size_t isize;

 size = roundup(size, PAGE_SIZE);
 isize = size;
 for (i = 0; i < TLB1_ENTRIES && size > 0; i++) {
  tlb1_read_entry(&e, i);
  if (!(e.mas1 & MAS1_VALID))
   continue;
  if (va <= e.virt && (va + isize) >= (e.virt + e.size)) {
   size -= e.size;
   e.mas1 &= ~MAS1_VALID;
   tlb1_write_entry(&e, i);
  }
 }
 if (tlb1_map_base == va + isize)
  tlb1_map_base -= isize;
}
