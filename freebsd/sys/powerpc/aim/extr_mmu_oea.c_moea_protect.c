
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef scalar_t__ vm_offset_t ;
struct TYPE_14__ {int pte_lo; } ;
struct TYPE_12__ {TYPE_5__ pte; } ;
struct pvo_entry {scalar_t__ pvo_vaddr; TYPE_2__ pvo_pte; } ;
struct pte {int dummy; } ;
typedef TYPE_3__* pmap_t ;
typedef int mmu_t ;
struct TYPE_15__ {TYPE_1__* p_vmspace; } ;
struct TYPE_13__ {int pmap_pvo; } ;
struct TYPE_11__ {TYPE_3__ vm_pmap; } ;


 int KASSERT (int,char*) ;
 int PMAP_LOCK (TYPE_3__*) ;
 int PMAP_UNLOCK (TYPE_3__*) ;
 int PTE_BR ;
 int PTE_PP ;
 scalar_t__ PVO_VADDR (struct pvo_entry*) ;
 struct pvo_entry* RB_NEXT (int ,int *,struct pvo_entry*) ;
 struct pvo_entry* RB_NFIND (int ,int *,struct pvo_entry*) ;
 int VM_PROT_NONE ;
 int VM_PROT_READ ;
 TYPE_8__* curproc ;
 TYPE_3__* kernel_pmap ;
 int moea_pte_change (struct pte*,TYPE_5__*,scalar_t__) ;
 struct pte* moea_pvo_to_pte (struct pvo_entry*,int) ;
 int moea_remove (int ,TYPE_3__*,scalar_t__,scalar_t__) ;
 int moea_table_mutex ;
 int mtx_unlock (int *) ;
 int pvh_global_lock ;
 int pvo_tree ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;

void
moea_protect(mmu_t mmu, pmap_t pm, vm_offset_t sva, vm_offset_t eva,
    vm_prot_t prot)
{
 struct pvo_entry *pvo, *tpvo, key;
 struct pte *pt;

 KASSERT(pm == &curproc->p_vmspace->vm_pmap || pm == kernel_pmap,
     ("moea_protect: non current pmap"));

 if ((prot & VM_PROT_READ) == VM_PROT_NONE) {
  moea_remove(mmu, pm, sva, eva);
  return;
 }

 rw_wlock(&pvh_global_lock);
 PMAP_LOCK(pm);
 key.pvo_vaddr = sva;
 for (pvo = RB_NFIND(pvo_tree, &pm->pmap_pvo, &key);
     pvo != ((void*)0) && PVO_VADDR(pvo) < eva; pvo = tpvo) {
  tpvo = RB_NEXT(pvo_tree, &pm->pmap_pvo, pvo);





  pt = moea_pvo_to_pte(pvo, -1);



  pvo->pvo_pte.pte.pte_lo &= ~PTE_PP;
  pvo->pvo_pte.pte.pte_lo |= PTE_BR;




  if (pt != ((void*)0)) {
   moea_pte_change(pt, &pvo->pvo_pte.pte, pvo->pvo_vaddr);
   mtx_unlock(&moea_table_mutex);
  }
 }
 rw_wunlock(&pvh_global_lock);
 PMAP_UNLOCK(pm);
}
