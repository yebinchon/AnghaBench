
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef scalar_t__ vm_paddr_t ;
typedef int vm_offset_t ;
typedef int boolean_t ;


 scalar_t__ DMAP_MAX_PHYSADDR ;
 int FALSE ;
 int KASSERT (int,char*) ;
 int M_BESTFIT ;
 int M_WAITOK ;
 int PAGE_SIZE ;
 int PHYS_TO_DMAP (scalar_t__) ;
 int TRUE ;
 scalar_t__ VM_PAGE_TO_PHYS (int ) ;
 scalar_t__ __predict_false (int) ;
 int kernel_arena ;
 int panic (char*) ;
 int sched_pin () ;
 int vmem_alloc (int ,int ,int,int *) ;

boolean_t
pmap_map_io_transient(vm_page_t page[], vm_offset_t vaddr[], int count,
    boolean_t can_fault)
{
 vm_paddr_t paddr;
 boolean_t needs_mapping;
 int error, i;





 needs_mapping = FALSE;
 for (i = 0; i < count; i++) {
  paddr = VM_PAGE_TO_PHYS(page[i]);
  if (__predict_false(paddr >= DMAP_MAX_PHYSADDR)) {
   error = vmem_alloc(kernel_arena, PAGE_SIZE,
       M_BESTFIT | M_WAITOK, &vaddr[i]);
   KASSERT(error == 0, ("vmem_alloc failed: %d", error));
   needs_mapping = TRUE;
  } else {
   vaddr[i] = PHYS_TO_DMAP(paddr);
  }
 }


 if (!needs_mapping)
  return (FALSE);

 if (!can_fault)
  sched_pin();
 for (i = 0; i < count; i++) {
  paddr = VM_PAGE_TO_PHYS(page[i]);
  if (paddr >= DMAP_MAX_PHYSADDR) {
   panic(
      "pmap_map_io_transient: TODO: Map out of DMAP data");
  }
 }

 return (needs_mapping);
}
