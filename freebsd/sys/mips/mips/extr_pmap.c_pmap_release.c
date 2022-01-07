
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_2__* pmap_t ;
struct TYPE_4__ {scalar_t__ resident_count; } ;
struct TYPE_5__ {scalar_t__ pm_segtab; TYPE_1__ pm_stats; } ;


 int KASSERT (int,char*) ;
 int MIPS_DIRECT_TO_PHYS (scalar_t__) ;
 int PHYS_TO_VM_PAGE (int ) ;
 int vm_page_free_zero (int ) ;
 int vm_page_unwire_noq (int ) ;

void
pmap_release(pmap_t pmap)
{
 vm_offset_t ptdva;
 vm_page_t ptdpg;

 KASSERT(pmap->pm_stats.resident_count == 0,
     ("pmap_release: pmap resident count %ld != 0",
     pmap->pm_stats.resident_count));

 ptdva = (vm_offset_t)pmap->pm_segtab;
 ptdpg = PHYS_TO_VM_PAGE(MIPS_DIRECT_TO_PHYS(ptdva));

 vm_page_unwire_noq(ptdpg);
 vm_page_free_zero(ptdpg);
}
