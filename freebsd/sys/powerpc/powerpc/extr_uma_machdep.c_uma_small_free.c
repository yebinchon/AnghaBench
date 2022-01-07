
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int * vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef int u_int8_t ;


 scalar_t__ DMAP_TO_PHYS (scalar_t__) ;
 int KASSERT (int ,char*) ;
 scalar_t__ PAGE_SIZE ;
 int * PHYS_TO_VM_PAGE (scalar_t__) ;
 int VM_PAGE_TO_PHYS (int *) ;
 int atomic_subtract_int (int *,int) ;
 int dump_drop_page (int ) ;
 scalar_t__ hw_direct_map ;
 int hw_uma_mdpages ;
 int kernel_pmap ;
 int pmap_remove (int ,scalar_t__,scalar_t__) ;
 int vm_page_free (int *) ;
 int vm_page_unwire_noq (int *) ;

void
uma_small_free(void *mem, vm_size_t size, u_int8_t flags)
{
 vm_page_t m;

 if (!hw_direct_map)
  pmap_remove(kernel_pmap,(vm_offset_t)mem,
      (vm_offset_t)mem + PAGE_SIZE);

 if (hw_direct_map)
  m = PHYS_TO_VM_PAGE(DMAP_TO_PHYS((vm_offset_t)mem));
 else
  m = PHYS_TO_VM_PAGE((vm_offset_t)mem);
 KASSERT(m != ((void*)0),
     ("Freeing UMA block at %p with no associated page", mem));



 vm_page_unwire_noq(m);
 vm_page_free(m);
 atomic_subtract_int(&hw_uma_mdpages, 1);
}
