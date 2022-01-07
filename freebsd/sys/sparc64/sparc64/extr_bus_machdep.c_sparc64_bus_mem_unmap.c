
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef TYPE_1__* bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;
struct TYPE_3__ {int * bst_cookie; } ;


 scalar_t__ PAGE_SIZE ;
 int kernel_pmap ;
 int kva_free (scalar_t__,scalar_t__) ;
 int pmap_kremove_flags (scalar_t__) ;
 scalar_t__ rman_get_virtual (int *) ;
 scalar_t__ round_page (scalar_t__) ;
 int tlb_range_demap (int ,scalar_t__,scalar_t__) ;
 scalar_t__ trunc_page (scalar_t__) ;

int
sparc64_bus_mem_unmap(bus_space_tag_t tag, bus_space_handle_t handle,
    bus_size_t size)
{
 vm_offset_t sva;
 vm_offset_t va;
 vm_offset_t endva;

 if (tag->bst_cookie == ((void*)0) ||
     (sva = (vm_offset_t)rman_get_virtual(tag->bst_cookie)) == 0)
  return (0);
 sva = trunc_page(sva);
 endva = sva + round_page(size);
 for (va = sva; va < endva; va += PAGE_SIZE)
  pmap_kremove_flags(va);
 tlb_range_demap(kernel_pmap, sva, sva + size - 1);
 kva_free(sva, size);
 return (0);
}
