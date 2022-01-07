
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_offset_t ;
typedef TYPE_3__* pmap_t ;
typedef scalar_t__ pd_entry_t ;
struct TYPE_13__ {int resident_count; } ;
struct TYPE_15__ {TYPE_1__ pm_stats; } ;
struct TYPE_14__ {scalar_t__ pindex; } ;


 int MA_OWNED ;
 int MIPS_DIRECT_TO_PHYS (scalar_t__*) ;
 scalar_t__ NUPDE ;
 TYPE_2__* PHYS_TO_VM_PAGE (int ) ;
 int PMAP_LOCK_ASSERT (TYPE_3__*,int ) ;
 scalar_t__* pmap_pde (TYPE_3__*,int ) ;
 scalar_t__* pmap_segmap (TYPE_3__*,int ) ;
 int pmap_unwire_ptp (TYPE_3__*,int ,TYPE_2__*) ;
 int vm_page_free_zero (TYPE_2__*) ;
 int vm_wire_sub (int) ;

__attribute__((used)) static void
_pmap_unwire_ptp(pmap_t pmap, vm_offset_t va, vm_page_t m)
{
 pd_entry_t *pde;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 pde = pmap_pde(pmap, va);

 *pde = 0;
 pmap->pm_stats.resident_count--;
 vm_page_free_zero(m);
 vm_wire_sub(1);
}
