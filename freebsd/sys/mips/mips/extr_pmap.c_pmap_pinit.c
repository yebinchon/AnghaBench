
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_2__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_5__ {int pm_stats; int pm_pvchunk; TYPE_1__* pm_asid; int pm_active; int * pm_segtab; } ;
struct TYPE_4__ {scalar_t__ gen; int asid; } ;


 int CPU_ZERO (int *) ;
 int MAXCPU ;
 scalar_t__ MIPS_PHYS_TO_DIRECT (int ) ;
 int NUSERPGTBLS ;
 int PMAP_ASID_RESERVED ;
 int TAILQ_INIT (int *) ;
 int VM_ALLOC_NORMAL ;
 int VM_PAGE_TO_PHYS (int *) ;
 int bzero (int *,int) ;
 int * pmap_alloc_direct_page (int ,int) ;
 int pmap_grow_direct_page (int) ;

int
pmap_pinit(pmap_t pmap)
{
 vm_offset_t ptdva;
 vm_page_t ptdpg;
 int i, req_class;




 req_class = VM_ALLOC_NORMAL;
 while ((ptdpg = pmap_alloc_direct_page(NUSERPGTBLS, req_class)) ==
     ((void*)0))
  pmap_grow_direct_page(req_class);

 ptdva = MIPS_PHYS_TO_DIRECT(VM_PAGE_TO_PHYS(ptdpg));
 pmap->pm_segtab = (pd_entry_t *)ptdva;
 CPU_ZERO(&pmap->pm_active);
 for (i = 0; i < MAXCPU; i++) {
  pmap->pm_asid[i].asid = PMAP_ASID_RESERVED;
  pmap->pm_asid[i].gen = 0;
 }
 TAILQ_INIT(&pmap->pm_pvchunk);
 bzero(&pmap->pm_stats, sizeof pmap->pm_stats);

 return (1);
}
