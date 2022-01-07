
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;


 scalar_t__ DEVMAP_PADDR_NOTFOUND ;
 int PAGE_MASK ;
 scalar_t__ devmap_vtop (void*,int ) ;
 int kva_free (int,int ) ;
 int pmap_kremove_device (int,int ) ;
 int round_page (int ) ;
 int trunc_page (int) ;

void
pmap_unmapdev(vm_offset_t va, vm_size_t size)
{
 vm_offset_t offset;


 if (devmap_vtop((void*)va, size) != DEVMAP_PADDR_NOTFOUND)
  return;

 offset = va & PAGE_MASK;
 va = trunc_page(va);
 size = round_page(size + offset);

 pmap_kremove_device(va, size);
 kva_free(va, size);
}
