
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef scalar_t__ vm_paddr_t ;
typedef int vm_offset_t ;
typedef int boolean_t ;


 scalar_t__ DMAP_MAX_PHYSADDR ;
 scalar_t__ VM_PAGE_TO_PHYS (int ) ;
 int panic (char*) ;
 int sched_unpin () ;

void
pmap_unmap_io_transient(vm_page_t page[], vm_offset_t vaddr[], int count,
    boolean_t can_fault)
{
 vm_paddr_t paddr;
 int i;

 if (!can_fault)
  sched_unpin();
 for (i = 0; i < count; i++) {
  paddr = VM_PAGE_TO_PHYS(page[i]);
  if (paddr >= DMAP_MAX_PHYSADDR) {
   panic("RISCVTODO: pmap_unmap_io_transient: Unmap data");
  }
 }
}
