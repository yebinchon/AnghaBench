
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct pvo_entry {scalar_t__ pvo_vaddr; } ;
struct pvo_dlist {int dummy; } ;
typedef TYPE_2__* pmap_t ;
typedef int mmu_t ;
struct TYPE_6__ {scalar_t__ resident_count; } ;
struct TYPE_7__ {int pmap_pvo; TYPE_1__ pm_stats; } ;


 int PMAP_LOCK (TYPE_2__*) ;
 int PMAP_UNLOCK (TYPE_2__*) ;
 scalar_t__ PVO_VADDR (struct pvo_entry*) ;
 struct pvo_entry* RB_NEXT (int ,int *,struct pvo_entry*) ;
 struct pvo_entry* RB_NFIND (int ,int *,struct pvo_entry*) ;
 int SLIST_EMPTY (struct pvo_dlist*) ;
 struct pvo_entry* SLIST_FIRST (struct pvo_dlist*) ;
 int SLIST_INIT (struct pvo_dlist*) ;
 int SLIST_INSERT_HEAD (struct pvo_dlist*,struct pvo_entry*,int ) ;
 int SLIST_REMOVE_HEAD (struct pvo_dlist*,int ) ;
 int free_pvo_entry (struct pvo_entry*) ;
 int moea64_pvo_remove_from_page (int ,struct pvo_entry*) ;
 int moea64_pvo_remove_from_pmap (int ,struct pvo_entry*) ;
 int pvo_dlink ;
 int pvo_tree ;

void
moea64_remove(mmu_t mmu, pmap_t pm, vm_offset_t sva, vm_offset_t eva)
{
 struct pvo_entry *pvo, *tpvo, key;
 struct pvo_dlist tofree;




 if (pm->pm_stats.resident_count == 0)
  return;

 key.pvo_vaddr = sva;

 SLIST_INIT(&tofree);

 PMAP_LOCK(pm);
 for (pvo = RB_NFIND(pvo_tree, &pm->pmap_pvo, &key);
     pvo != ((void*)0) && PVO_VADDR(pvo) < eva; pvo = tpvo) {
  tpvo = RB_NEXT(pvo_tree, &pm->pmap_pvo, pvo);






  moea64_pvo_remove_from_pmap(mmu, pvo);
  SLIST_INSERT_HEAD(&tofree, pvo, pvo_dlink);
 }
 PMAP_UNLOCK(pm);

 while (!SLIST_EMPTY(&tofree)) {
  pvo = SLIST_FIRST(&tofree);
  SLIST_REMOVE_HEAD(&tofree, pvo_dlink);
  moea64_pvo_remove_from_page(mmu, pvo);
  free_pvo_entry(pvo);
 }
}
