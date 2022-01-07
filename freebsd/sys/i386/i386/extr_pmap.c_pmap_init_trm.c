
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_5__ {int flags; } ;


 int M_WAITOK ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int PG_A ;
 int PG_M ;
 int PG_RW ;
 int PG_V ;
 int PG_ZERO ;
 int* PTD ;
 size_t TRPTDI ;
 int TRUE ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int VM_ALLOC_NOBUSY ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_WAITOK ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int VM_MEMATTR_DEFAULT ;
 int VM_PAGE_TO_PHYS (TYPE_1__*) ;
 int kernel_pmap ;
 int pmap_cache_bits (int ,int ,int ) ;
 int pmap_trm_arena ;
 int pmap_trm_import ;
 int pmap_zero_page (TYPE_1__*) ;
 int trm_guard ;
 TYPE_1__* vm_page_alloc (int *,int ,int) ;
 int vmem_create (char*,int ,int ,int,int ,int ) ;
 int vmem_set_import (int ,int ,int *,int *,int ) ;

void
pmap_init_trm(void)
{
 vm_page_t pd_m;

 TUNABLE_INT_FETCH("machdep.trm_guard", &trm_guard);
 if ((trm_guard & PAGE_MASK) != 0)
  trm_guard = 0;
 pmap_trm_arena = vmem_create("i386trampoline", 0, 0, 1, 0, M_WAITOK);
 vmem_set_import(pmap_trm_arena, pmap_trm_import, ((void*)0), ((void*)0), PAGE_SIZE);
 pd_m = vm_page_alloc(((void*)0), 0, VM_ALLOC_NOOBJ | VM_ALLOC_NOBUSY |
     VM_ALLOC_NORMAL | VM_ALLOC_WIRED | VM_ALLOC_WAITOK | VM_ALLOC_ZERO);
 if ((pd_m->flags & PG_ZERO) == 0)
  pmap_zero_page(pd_m);
 PTD[TRPTDI] = VM_PAGE_TO_PHYS(pd_m) | PG_M | PG_A | PG_RW | PG_V |
     pmap_cache_bits(kernel_pmap, VM_MEMATTR_DEFAULT, TRUE);
}
