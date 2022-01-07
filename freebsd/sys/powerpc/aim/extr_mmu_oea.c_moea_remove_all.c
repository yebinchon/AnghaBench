
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct pvo_head {int dummy; } ;
struct pvo_entry {int pvo_pmap; } ;
typedef int pmap_t ;
typedef int mmu_t ;
struct TYPE_8__ {int aflags; } ;


 struct pvo_entry* LIST_FIRST (struct pvo_head*) ;
 struct pvo_entry* LIST_NEXT (struct pvo_entry*,int ) ;
 int PGA_WRITEABLE ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PTE_CHG ;
 int moea_attr_clear (TYPE_1__*,int ) ;
 int moea_pvo_remove (struct pvo_entry*,int) ;
 scalar_t__ moea_query_bit (TYPE_1__*,int ) ;
 int pvh_global_lock ;
 int pvo_vlink ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int vm_page_aflag_clear (TYPE_1__*,int) ;
 int vm_page_dirty (TYPE_1__*) ;
 struct pvo_head* vm_page_to_pvoh (TYPE_1__*) ;

void
moea_remove_all(mmu_t mmu, vm_page_t m)
{
 struct pvo_head *pvo_head;
 struct pvo_entry *pvo, *next_pvo;
 pmap_t pmap;

 rw_wlock(&pvh_global_lock);
 pvo_head = vm_page_to_pvoh(m);
 for (pvo = LIST_FIRST(pvo_head); pvo != ((void*)0); pvo = next_pvo) {
  next_pvo = LIST_NEXT(pvo, pvo_vlink);

  pmap = pvo->pvo_pmap;
  PMAP_LOCK(pmap);
  moea_pvo_remove(pvo, -1);
  PMAP_UNLOCK(pmap);
 }
 if ((m->aflags & PGA_WRITEABLE) && moea_query_bit(m, PTE_CHG)) {
  moea_attr_clear(m, PTE_CHG);
  vm_page_dirty(m);
 }
 vm_page_aflag_clear(m, PGA_WRITEABLE);
 rw_wunlock(&pvh_global_lock);
}
