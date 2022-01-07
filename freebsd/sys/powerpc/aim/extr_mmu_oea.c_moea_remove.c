
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct pvo_entry {scalar_t__ pvo_vaddr; } ;
typedef TYPE_1__* pmap_t ;
typedef int mmu_t ;
struct TYPE_5__ {int pmap_pvo; } ;


 int PMAP_LOCK (TYPE_1__*) ;
 int PMAP_UNLOCK (TYPE_1__*) ;
 scalar_t__ PVO_VADDR (struct pvo_entry*) ;
 struct pvo_entry* RB_NEXT (int ,int *,struct pvo_entry*) ;
 struct pvo_entry* RB_NFIND (int ,int *,struct pvo_entry*) ;
 int moea_pvo_remove (struct pvo_entry*,int) ;
 int pvh_global_lock ;
 int pvo_tree ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;

void
moea_remove(mmu_t mmu, pmap_t pm, vm_offset_t sva, vm_offset_t eva)
{
 struct pvo_entry *pvo, *tpvo, key;

 rw_wlock(&pvh_global_lock);
 PMAP_LOCK(pm);
 key.pvo_vaddr = sva;
 for (pvo = RB_NFIND(pvo_tree, &pm->pmap_pvo, &key);
     pvo != ((void*)0) && PVO_VADDR(pvo) < eva; pvo = tpvo) {
  tpvo = RB_NEXT(pvo_tree, &pm->pmap_pvo, pvo);
  moea_pvo_remove(pvo, -1);
 }
 PMAP_UNLOCK(pm);
 rw_wunlock(&pvh_global_lock);
}
