
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_page_t ;
typedef scalar_t__ vm_paddr_t ;
struct vm_phys_seg {scalar_t__ start; scalar_t__ end; int * first_page; } ;


 size_t atop (scalar_t__) ;
 int vm_phys_nsegs ;
 struct vm_phys_seg* vm_phys_segs ;

vm_page_t
vm_phys_paddr_to_vm_page(vm_paddr_t pa)
{
 struct vm_phys_seg *seg;
 int segind;

 for (segind = 0; segind < vm_phys_nsegs; segind++) {
  seg = &vm_phys_segs[segind];
  if (pa >= seg->start && pa < seg->end)
   return (&seg->first_page[atop(pa - seg->start)]);
 }
 return (((void*)0));
}
