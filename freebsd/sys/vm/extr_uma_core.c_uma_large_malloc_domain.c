
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_1__* uma_slab_t ;
struct domainset {int dummy; } ;
struct TYPE_5__ {int us_flags; int us_domain; int us_size; void* us_data; } ;


 struct domainset* DOMAINSET_FIXED (int) ;
 struct domainset* DOMAINSET_RR () ;
 int PHYS_TO_VM_PAGE (int ) ;
 int SKIP_NONE ;
 int UMA_ANYDOMAIN ;
 int UMA_SLAB_KERNEL ;
 int UMA_SLAB_MALLOC ;
 scalar_t__ VM_DOMAIN_EMPTY (int) ;
 scalar_t__ kmem_malloc_domainset (struct domainset*,int ,int) ;
 int pmap_kextract (scalar_t__) ;
 int slabzone ;
 int uma_total_inc (int ) ;
 int vm_phys_domain (int ) ;
 int vsetslab (scalar_t__,TYPE_1__*) ;
 TYPE_1__* zone_alloc_item (int ,int *,int,int) ;
 int zone_free_item (int ,TYPE_1__*,int *,int ) ;

void *
uma_large_malloc_domain(vm_size_t size, int domain, int wait)
{
 struct domainset *policy;
 vm_offset_t addr;
 uma_slab_t slab;

 if (domain != UMA_ANYDOMAIN) {

  if (VM_DOMAIN_EMPTY(domain))
   domain = UMA_ANYDOMAIN;
 }
 slab = zone_alloc_item(slabzone, ((void*)0), domain, wait);
 if (slab == ((void*)0))
  return (((void*)0));
 policy = (domain == UMA_ANYDOMAIN) ? DOMAINSET_RR() :
     DOMAINSET_FIXED(domain);
 addr = kmem_malloc_domainset(policy, size, wait);
 if (addr != 0) {
  vsetslab(addr, slab);
  slab->us_data = (void *)addr;
  slab->us_flags = UMA_SLAB_KERNEL | UMA_SLAB_MALLOC;
  slab->us_size = size;
  slab->us_domain = vm_phys_domain(PHYS_TO_VM_PAGE(
      pmap_kextract(addr)));
  uma_total_inc(size);
 } else {
  zone_free_item(slabzone, slab, ((void*)0), SKIP_NONE);
 }

 return ((void *)addr);
}
