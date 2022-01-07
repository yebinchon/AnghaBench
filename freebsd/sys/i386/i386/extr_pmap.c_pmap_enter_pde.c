
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int * vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef int u_int ;
struct spglist {int dummy; } ;
typedef TYPE_2__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_14__ {size_t wired_count; size_t resident_count; } ;
struct TYPE_15__ {TYPE_1__ pm_stats; } ;


 int CTR2 (int ,char*,scalar_t__,TYPE_2__*) ;
 int KASSERT (int,char*) ;
 int KERN_FAILURE ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int KTR_PMAP ;
 int MA_OWNED ;
 size_t NBPDR ;
 size_t PAGE_SIZE ;
 int PGA_WRITEABLE ;
 int PG_FRAME ;
 int PG_G ;
 int PG_M ;
 int PG_MANAGED ;
 int PG_PS ;
 int PG_RW ;
 int PG_V ;
 int PG_W ;
 int * PHYS_TO_VM_PAGE (int) ;
 int PMAP_ENTER_NOREPLACE ;
 int PMAP_LOCK_ASSERT (TYPE_2__*,int ) ;
 int RA_WLOCKED ;
 int SLIST_INIT (struct spglist*) ;
 TYPE_2__* kernel_pmap ;
 int panic (char*) ;
 int pde_store (int*,int) ;
 scalar_t__ pmap_insert_pt_page (TYPE_2__*,int *,int) ;
 int pmap_invalidate_all_int (TYPE_2__*) ;
 int pmap_invalidate_pde_page (TYPE_2__*,scalar_t__,int) ;
 int* pmap_pde (TYPE_2__*,scalar_t__) ;
 int pmap_pde_mappings ;
 int pmap_pv_insert_pde (TYPE_2__*,scalar_t__,int,int) ;
 int pmap_remove_pde (TYPE_2__*,int*,scalar_t__,struct spglist*) ;
 scalar_t__ pmap_remove_ptes (TYPE_2__*,scalar_t__,scalar_t__,struct spglist*) ;
 int pvh_global_lock ;
 int rw_assert (int *,int ) ;
 int vm_page_aflag_set (int *,int ) ;
 int vm_page_free_pages_toq (struct spglist*,int) ;

__attribute__((used)) static int
pmap_enter_pde(pmap_t pmap, vm_offset_t va, pd_entry_t newpde, u_int flags,
    vm_page_t m)
{
 struct spglist free;
 pd_entry_t oldpde, *pde;
 vm_page_t mt;

 rw_assert(&pvh_global_lock, RA_WLOCKED);
 KASSERT((newpde & (PG_M | PG_RW)) != PG_RW,
     ("pmap_enter_pde: newpde is missing PG_M"));
 KASSERT(pmap == kernel_pmap || (newpde & PG_W) == 0,
     ("pmap_enter_pde: cannot create wired user mapping"));
 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 pde = pmap_pde(pmap, va);
 oldpde = *pde;
 if ((oldpde & PG_V) != 0) {
  if ((flags & PMAP_ENTER_NOREPLACE) != 0) {
   CTR2(KTR_PMAP, "pmap_enter_pde: failure for va %#lx"
       " in pmap %p", va, pmap);
   return (KERN_FAILURE);
  }

  SLIST_INIT(&free);
  if ((oldpde & PG_PS) != 0) {




   (void)pmap_remove_pde(pmap, pde, va, &free);
   if ((oldpde & PG_G) == 0)
    pmap_invalidate_pde_page(pmap, va, oldpde);
  } else {
   if (pmap_remove_ptes(pmap, va, va + NBPDR, &free))
                 pmap_invalidate_all_int(pmap);
  }
  vm_page_free_pages_toq(&free, 1);
  if (pmap == kernel_pmap) {




   mt = PHYS_TO_VM_PAGE(*pde & PG_FRAME);
   if (pmap_insert_pt_page(pmap, mt, 0))
    panic("pmap_enter_pde: trie insert failed");
  } else
   KASSERT(*pde == 0, ("pmap_enter_pde: non-zero pde %p",
       pde));
 }
 if ((newpde & PG_MANAGED) != 0) {



  if (!pmap_pv_insert_pde(pmap, va, newpde, flags)) {
   CTR2(KTR_PMAP, "pmap_enter_pde: failure for va %#lx"
       " in pmap %p", va, pmap);
   return (KERN_RESOURCE_SHORTAGE);
  }
  if ((newpde & PG_RW) != 0) {
   for (mt = m; mt < &m[NBPDR / PAGE_SIZE]; mt++)
    vm_page_aflag_set(mt, PGA_WRITEABLE);
  }
 }




 if ((newpde & PG_W) != 0)
  pmap->pm_stats.wired_count += NBPDR / PAGE_SIZE;
 pmap->pm_stats.resident_count += NBPDR / PAGE_SIZE;





 pde_store(pde, newpde);

 pmap_pde_mappings++;
 CTR2(KTR_PMAP, "pmap_enter_pde: success for va %#lx"
     " in pmap %p", va, pmap);
 return (KERN_SUCCESS);
}
