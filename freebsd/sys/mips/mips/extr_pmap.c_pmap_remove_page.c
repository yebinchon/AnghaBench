
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct pmap {int dummy; } ;
typedef int pt_entry_t ;
typedef scalar_t__ pd_entry_t ;


 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (struct pmap*,int ) ;
 int PTE_V ;
 int RA_WLOCKED ;
 int pmap_invalidate_page (struct pmap*,int ) ;
 scalar_t__* pmap_pde (struct pmap*,int ) ;
 int * pmap_pde_to_pte (scalar_t__*,int ) ;
 int pmap_remove_pte (struct pmap*,int *,int ,scalar_t__) ;
 int pte_test (int *,int ) ;
 int pvh_global_lock ;
 int rw_assert (int *,int ) ;

__attribute__((used)) static void
pmap_remove_page(struct pmap *pmap, vm_offset_t va)
{
 pd_entry_t *pde;
 pt_entry_t *ptq;

 rw_assert(&pvh_global_lock, RA_WLOCKED);
 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 pde = pmap_pde(pmap, va);
 if (pde == ((void*)0) || *pde == 0)
  return;
 ptq = pmap_pde_to_pte(pde, va);




 if (!pte_test(ptq, PTE_V))
  return;

 (void)pmap_remove_pte(pmap, ptq, va, *pde);
 pmap_invalidate_page(pmap, va);
}
