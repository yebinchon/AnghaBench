
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_size_t ;
typedef TYPE_1__* vm_page_t ;
typedef int vm_paddr_t ;
typedef int uma_zone_t ;
typedef int u_int8_t ;
struct TYPE_4__ {int flags; } ;


 int MIPS_KSEG0_LARGEST_PHYS ;
 scalar_t__ MIPS_PHYS_TO_DIRECT (int ) ;
 int M_NODUMP ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int PG_ZERO ;
 int UMA_SLAB_PRIV ;
 int VM_ALLOC_NOWAIT ;
 int VM_ALLOC_WAITFAIL ;
 int VM_ALLOC_WAITOK ;
 int VM_ALLOC_WIRED ;
 int VM_FREELIST_DIRECT ;
 int VM_PAGE_TO_PHYS (TYPE_1__*) ;
 int bzero (void*,int ) ;
 int dump_add_page (int ) ;
 int malloc2vm_flags (int) ;
 TYPE_1__* vm_page_alloc_freelist_domain (int,int ,int) ;
 scalar_t__ vm_page_reclaim_contig (int,int,int ,int ,int ,int ) ;
 int vm_wait (int *) ;

void *
uma_small_alloc(uma_zone_t zone, vm_size_t bytes, int domain, u_int8_t *flags,
    int wait)
{
 vm_paddr_t pa;
 vm_page_t m;
 int pflags;
 void *va;

 *flags = UMA_SLAB_PRIV;
 pflags = malloc2vm_flags(wait) | VM_ALLOC_WIRED;

 pflags &= ~(VM_ALLOC_WAITOK | VM_ALLOC_WAITFAIL);
 pflags |= VM_ALLOC_NOWAIT;


 for (;;) {
  m = vm_page_alloc_freelist_domain(domain, VM_FREELIST_DIRECT,
      pflags);

  if (m == ((void*)0) && vm_page_reclaim_contig(pflags, 1,
      0, MIPS_KSEG0_LARGEST_PHYS, PAGE_SIZE, 0))
   continue;

  if (m != ((void*)0))
   break;
  if ((wait & M_NOWAIT) != 0)
   return (((void*)0));
  vm_wait(((void*)0));
 }

 pa = VM_PAGE_TO_PHYS(m);
 if ((wait & M_NODUMP) == 0)
  dump_add_page(pa);
 va = (void *)MIPS_PHYS_TO_DIRECT(pa);
 if ((wait & M_ZERO) && (m->flags & PG_ZERO) == 0)
  bzero(va, PAGE_SIZE);
 return (va);
}
