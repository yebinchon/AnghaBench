
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_size_t ;
typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef int uma_zone_t ;
typedef int u_int8_t ;
struct TYPE_4__ {int flags; } ;


 int M_NODUMP ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int PG_ZERO ;
 scalar_t__ PHYS_TO_DMAP (scalar_t__) ;
 int UMA_SLAB_PRIV ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_WIRED ;
 scalar_t__ VM_PAGE_TO_PHYS (TYPE_1__*) ;
 int atomic_add_int (int *,int) ;
 int bzero (void*,int ) ;
 int dump_add_page (scalar_t__) ;
 int hw_direct_map ;
 int hw_uma_mdpages ;
 int malloc2vm_flags (int) ;
 int pmap_kenter (scalar_t__,scalar_t__) ;
 TYPE_1__* vm_page_alloc_domain (int *,int ,int,int) ;

void *
uma_small_alloc(uma_zone_t zone, vm_size_t bytes, int domain, u_int8_t *flags,
    int wait)
{
 void *va;
 vm_paddr_t pa;
 vm_page_t m;

 *flags = UMA_SLAB_PRIV;

 m = vm_page_alloc_domain(((void*)0), 0, domain,
     malloc2vm_flags(wait) | VM_ALLOC_WIRED | VM_ALLOC_NOOBJ);
 if (m == ((void*)0))
  return (((void*)0));

 pa = VM_PAGE_TO_PHYS(m);


 if ((vm_offset_t)pa != pa)
  return (((void*)0));






 if (!hw_direct_map) {
  pmap_kenter(pa, pa);
  va = (void *)(vm_offset_t)pa;
 } else {
  va = (void *)(vm_offset_t)PHYS_TO_DMAP(pa);
 }

 if ((wait & M_ZERO) && (m->flags & PG_ZERO) == 0)
  bzero(va, PAGE_SIZE);
 atomic_add_int(&hw_uma_mdpages, 1);

 return (va);
}
