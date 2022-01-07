
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;


 int KASSERT (int,char*) ;
 int PAGE_MASK ;
 int VM_DMA32_BOUNDARY ;
 int VM_LOWMEM_BOUNDARY ;
 int vm_phys_create_seg (int,int) ;

void
vm_phys_add_seg(vm_paddr_t start, vm_paddr_t end)
{
 vm_paddr_t paddr;

 KASSERT((start & PAGE_MASK) == 0,
     ("vm_phys_define_seg: start is not page aligned"));
 KASSERT((end & PAGE_MASK) == 0,
     ("vm_phys_define_seg: end is not page aligned"));





 paddr = start;
 vm_phys_create_seg(paddr, end);
}
