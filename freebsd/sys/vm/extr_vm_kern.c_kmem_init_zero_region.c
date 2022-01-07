
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ vm_offset_t ;
struct TYPE_5__ {int flags; } ;


 scalar_t__ PAGE_SIZE ;
 int PG_ZERO ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int VM_PROT_READ ;
 scalar_t__ ZERO_REGION_SIZE ;
 int kernel_pmap ;
 scalar_t__ kva_alloc (scalar_t__) ;
 int pmap_protect (int ,scalar_t__,scalar_t__,int ) ;
 int pmap_qenter (scalar_t__,TYPE_1__**,int) ;
 int pmap_zero_page (TYPE_1__*) ;
 TYPE_1__* vm_page_alloc (int *,int ,int) ;
 void const* zero_region ;

void
kmem_init_zero_region(void)
{
 vm_offset_t addr, i;
 vm_page_t m;






 addr = kva_alloc(ZERO_REGION_SIZE);
 m = vm_page_alloc(((void*)0), 0, VM_ALLOC_NORMAL |
     VM_ALLOC_NOOBJ | VM_ALLOC_WIRED | VM_ALLOC_ZERO);
 if ((m->flags & PG_ZERO) == 0)
  pmap_zero_page(m);
 for (i = 0; i < ZERO_REGION_SIZE; i += PAGE_SIZE)
  pmap_qenter(addr + i, &m, 1);
 pmap_protect(kernel_pmap, addr, addr + ZERO_REGION_SIZE, VM_PROT_READ);

 zero_region = (const void *)addr;
}
