
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
struct vm_page {int dummy; } ;


 scalar_t__ PAGE_SIZE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 scalar_t__ pmap_map (int *,int,int,int) ;
 int trunc_page (int ) ;
 scalar_t__ vm_page_array ;
 int vm_page_array_size ;

__attribute__((used)) static vm_paddr_t
vm_page_array_alloc(vm_offset_t *vaddr, vm_paddr_t end, vm_paddr_t page_range)
{
 vm_paddr_t new_end;






 *vaddr += PAGE_SIZE;




 new_end = trunc_page(end - page_range * sizeof(struct vm_page));
 vm_page_array = (vm_page_t)pmap_map(vaddr, new_end, end,
     VM_PROT_READ | VM_PROT_WRITE);
 vm_page_array_size = page_range;

 return (new_end);
}
