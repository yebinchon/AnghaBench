
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_size_t ;
typedef TYPE_1__* vm_page_t ;
typedef int vm_paddr_t ;
typedef int uma_zone_t ;
typedef int u_int8_t ;
struct TYPE_3__ {int flags; int phys_addr; } ;


 int M_NODUMP ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int PG_ZERO ;
 scalar_t__ PHYS_TO_DMAP (int ) ;
 int UMA_SLAB_PRIV ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_WIRED ;
 int bzero (void*,int ) ;
 int dump_add_page (int ) ;
 int malloc2vm_flags (int) ;
 TYPE_1__* vm_page_alloc_domain (int *,int ,int,int) ;

void *
uma_small_alloc(uma_zone_t zone, vm_size_t bytes, int domain, u_int8_t *flags,
    int wait)
{
 vm_page_t m;
 vm_paddr_t pa;
 void *va;

 *flags = UMA_SLAB_PRIV;
 m = vm_page_alloc_domain(((void*)0), 0, domain,
     malloc2vm_flags(wait) | VM_ALLOC_NOOBJ | VM_ALLOC_WIRED);
 if (m == ((void*)0))
  return (((void*)0));
 pa = m->phys_addr;
 if ((wait & M_NODUMP) == 0)
  dump_add_page(pa);
 va = (void *)PHYS_TO_DMAP(pa);
 if ((wait & M_ZERO) && (m->flags & PG_ZERO) == 0)
  bzero(va, PAGE_SIZE);
 return (va);
}
