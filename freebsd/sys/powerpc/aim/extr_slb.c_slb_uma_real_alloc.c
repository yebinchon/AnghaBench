
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_size_t ;
typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef int uma_zone_t ;
typedef int u_int8_t ;
struct TYPE_4__ {int flags; } ;


 int DMAP_BASE_ADDRESS ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int PG_ZERO ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 int UMA_SLAB_PRIV ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_WIRED ;
 int VM_MEMATTR_DEFAULT ;
 int VM_PAGE_TO_PHYS (TYPE_1__*) ;
 int bzero (void*,int ) ;
 scalar_t__ hw_direct_map ;
 int malloc2vm_flags (int) ;
 scalar_t__ platform_real_maxaddr () ;
 int pmap_kenter (scalar_t__,int) ;
 TYPE_1__* vm_page_alloc_contig_domain (int *,int ,int,int,int,int ,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void *
slb_uma_real_alloc(uma_zone_t zone, vm_size_t bytes, int domain,
    u_int8_t *flags, int wait)
{
 static vm_offset_t realmax = 0;
 void *va;
 vm_page_t m;

 if (realmax == 0)
  realmax = platform_real_maxaddr();

 *flags = UMA_SLAB_PRIV;
 m = vm_page_alloc_contig_domain(((void*)0), 0, domain,
     malloc2vm_flags(wait) | VM_ALLOC_NOOBJ | VM_ALLOC_WIRED,
     1, 0, realmax, PAGE_SIZE, PAGE_SIZE, VM_MEMATTR_DEFAULT);
 if (m == ((void*)0))
  return (((void*)0));

 if (hw_direct_map)
  va = (void *)PHYS_TO_DMAP(VM_PAGE_TO_PHYS(m));
 else {
  va = (void *)(VM_PAGE_TO_PHYS(m) | DMAP_BASE_ADDRESS);
  pmap_kenter((vm_offset_t)va, VM_PAGE_TO_PHYS(m));
 }

 if ((wait & M_ZERO) && (m->flags & PG_ZERO) == 0)
  bzero(va, PAGE_SIZE);

 return (va);
}
