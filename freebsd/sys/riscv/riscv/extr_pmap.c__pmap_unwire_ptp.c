
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
struct spglist {int dummy; } ;
typedef int pmap_t ;
typedef int pd_entry_t ;
struct TYPE_6__ {scalar_t__ pindex; } ;


 int MA_OWNED ;
 scalar_t__ NUL1E ;
 TYPE_1__* PHYS_TO_VM_PAGE (int ) ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int PTE_TO_PHYS (int ) ;
 int TRUE ;
 int pmap_add_delayed_free_list (TYPE_1__*,struct spglist*,int ) ;
 int pmap_clear (int *) ;
 int pmap_distribute_l1 (int ,int ,int ) ;
 int pmap_invalidate_page (int ,int ) ;
 int * pmap_l1 (int ,int ) ;
 int pmap_l1_index (int ) ;
 int * pmap_l2 (int ,int ) ;
 int pmap_load (int *) ;
 int pmap_resident_count_dec (int ,int) ;
 int pmap_unwire_ptp (int ,int ,TYPE_1__*,struct spglist*) ;
 int vm_wire_sub (int) ;

__attribute__((used)) static void
_pmap_unwire_ptp(pmap_t pmap, vm_offset_t va, vm_page_t m, struct spglist *free)
{
 vm_paddr_t phys;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 if (m->pindex >= NUL1E) {
  pd_entry_t *l1;
  l1 = pmap_l1(pmap, va);
  pmap_clear(l1);
  pmap_distribute_l1(pmap, pmap_l1_index(va), 0);
 } else {
  pd_entry_t *l2;
  l2 = pmap_l2(pmap, va);
  pmap_clear(l2);
 }
 pmap_resident_count_dec(pmap, 1);
 if (m->pindex < NUL1E) {
  pd_entry_t *l1;
  vm_page_t pdpg;

  l1 = pmap_l1(pmap, va);
  phys = PTE_TO_PHYS(pmap_load(l1));
  pdpg = PHYS_TO_VM_PAGE(phys);
  pmap_unwire_ptp(pmap, va, pdpg, free);
 }
 pmap_invalidate_page(pmap, va);

 vm_wire_sub(1);





 pmap_add_delayed_free_list(m, free, TRUE);
}
