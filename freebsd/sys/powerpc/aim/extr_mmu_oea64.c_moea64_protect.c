
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef scalar_t__ vm_offset_t ;
struct pvo_entry {scalar_t__ pvo_vaddr; } ;
typedef TYPE_2__* pmap_t ;
typedef int mmu_t ;
struct TYPE_13__ {TYPE_1__* p_vmspace; } ;
struct TYPE_12__ {int pmap_pvo; } ;
struct TYPE_11__ {TYPE_2__ vm_pmap; } ;


 int CTR4 (int ,char*,TYPE_2__*,scalar_t__,scalar_t__,int) ;
 int KASSERT (int,char*) ;
 int KTR_PMAP ;
 int PMAP_LOCK (TYPE_2__*) ;
 int PMAP_UNLOCK (TYPE_2__*) ;
 scalar_t__ PVO_VADDR (struct pvo_entry*) ;
 struct pvo_entry* RB_NEXT (int ,int *,struct pvo_entry*) ;
 struct pvo_entry* RB_NFIND (int ,int *,struct pvo_entry*) ;
 int VM_PROT_NONE ;
 int VM_PROT_READ ;
 TYPE_7__* curproc ;
 TYPE_2__* kernel_pmap ;
 int moea64_pvo_protect (int ,TYPE_2__*,struct pvo_entry*,int) ;
 int moea64_remove (int ,TYPE_2__*,scalar_t__,scalar_t__) ;
 int pvo_tree ;

void
moea64_protect(mmu_t mmu, pmap_t pm, vm_offset_t sva, vm_offset_t eva,
    vm_prot_t prot)
{
 struct pvo_entry *pvo, *tpvo, key;

 CTR4(KTR_PMAP, "moea64_protect: pm=%p sva=%#x eva=%#x prot=%#x", pm,
     sva, eva, prot);

 KASSERT(pm == &curproc->p_vmspace->vm_pmap || pm == kernel_pmap,
     ("moea64_protect: non current pmap"));

 if ((prot & VM_PROT_READ) == VM_PROT_NONE) {
  moea64_remove(mmu, pm, sva, eva);
  return;
 }

 PMAP_LOCK(pm);
 key.pvo_vaddr = sva;
 for (pvo = RB_NFIND(pvo_tree, &pm->pmap_pvo, &key);
     pvo != ((void*)0) && PVO_VADDR(pvo) < eva; pvo = tpvo) {
  tpvo = RB_NEXT(pvo_tree, &pm->pmap_pvo, pvo);
  moea64_pvo_protect(mmu, pm, pvo, prot);
 }
 PMAP_UNLOCK(pm);
}
