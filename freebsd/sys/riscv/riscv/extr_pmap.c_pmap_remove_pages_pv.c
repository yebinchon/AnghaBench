
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
struct spglist {int dummy; } ;
struct md_page {int pv_list; int pv_gen; } ;
typedef TYPE_3__* pv_entry_t ;
typedef int pmap_t ;
struct TYPE_12__ {int pv_va; } ;
struct TYPE_10__ {int pv_list; int pv_gen; } ;
struct TYPE_11__ {int aflags; scalar_t__ valid; size_t ref_count; int phys_addr; TYPE_1__ md; } ;


 int FALSE ;
 int KASSERT (int,char*) ;
 size_t Ln_ENTRIES ;
 int PGA_WRITEABLE ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,TYPE_3__*,int ) ;
 scalar_t__ VM_PAGE_BITS_ALL ;
 struct md_page* pa_to_pvh (int ) ;
 int pmap_add_delayed_free_list (TYPE_2__*,struct spglist*,int ) ;
 TYPE_2__* pmap_remove_pt_page (int ,int ) ;
 int pmap_resident_count_dec (int ,int) ;
 int pv_next ;
 int vm_page_aflag_clear (TYPE_2__*,int) ;

__attribute__((used)) static void
pmap_remove_pages_pv(pmap_t pmap, vm_page_t m, pv_entry_t pv,
    struct spglist *free, bool superpage)
{
 struct md_page *pvh;
 vm_page_t mpte, mt;

 if (superpage) {
  pmap_resident_count_dec(pmap, Ln_ENTRIES);
  pvh = pa_to_pvh(m->phys_addr);
  TAILQ_REMOVE(&pvh->pv_list, pv, pv_next);
  pvh->pv_gen++;
  if (TAILQ_EMPTY(&pvh->pv_list)) {
   for (mt = m; mt < &m[Ln_ENTRIES]; mt++)
    if (TAILQ_EMPTY(&mt->md.pv_list) &&
        (mt->aflags & PGA_WRITEABLE) != 0)
     vm_page_aflag_clear(mt, PGA_WRITEABLE);
  }
  mpte = pmap_remove_pt_page(pmap, pv->pv_va);
  if (mpte != ((void*)0)) {
   KASSERT(mpte->valid == VM_PAGE_BITS_ALL,
       ("pmap_remove_pages: pte page not promoted"));
   pmap_resident_count_dec(pmap, 1);
   KASSERT(mpte->ref_count == Ln_ENTRIES,
       ("pmap_remove_pages: pte page ref count error"));
   mpte->ref_count = 0;
   pmap_add_delayed_free_list(mpte, free, FALSE);
  }
 } else {
  pmap_resident_count_dec(pmap, 1);
  TAILQ_REMOVE(&m->md.pv_list, pv, pv_next);
  m->md.pv_gen++;
  if (TAILQ_EMPTY(&m->md.pv_list) &&
      (m->aflags & PGA_WRITEABLE) != 0) {
   pvh = pa_to_pvh(m->phys_addr);
   if (TAILQ_EMPTY(&pvh->pv_list))
    vm_page_aflag_clear(m, PGA_WRITEABLE);
  }
 }
}
