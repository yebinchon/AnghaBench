
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint8_t ;
typedef int pte_t ;
typedef scalar_t__ pmap_t ;
typedef int mmu_t ;


 int KASSERT (int,char*) ;
 scalar_t__ PAGE_SIZE ;
 int PMAP_LOCK (scalar_t__) ;
 scalar_t__ PMAP_REMOVE_DONE (scalar_t__) ;
 int PMAP_UNLOCK (scalar_t__) ;
 int PTBL_HOLD_FLAG (scalar_t__) ;
 scalar_t__ PTE_ISVALID (int *) ;
 int VM_MAXUSER_ADDRESS ;
 int VM_MAX_KERNEL_ADDRESS ;
 scalar_t__ kernel_pmap ;
 int * pte_find (int ,scalar_t__,int ) ;
 int pte_remove (int ,scalar_t__,int ,int ) ;
 int pvh_global_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int virtual_avail ;

__attribute__((used)) static void
mmu_booke_remove(mmu_t mmu, pmap_t pmap, vm_offset_t va, vm_offset_t endva)
{
 pte_t *pte;
 uint8_t hold_flag;

 int su = (pmap == kernel_pmap);




 if (su) {
  KASSERT(((va >= virtual_avail) &&
      (va <= VM_MAX_KERNEL_ADDRESS)),
      ("mmu_booke_remove: kernel pmap, non kernel va"));
 } else {
  KASSERT((va <= VM_MAXUSER_ADDRESS),
      ("mmu_booke_remove: user pmap, non user va"));
 }

 if (PMAP_REMOVE_DONE(pmap)) {

  return;
 }

 hold_flag = PTBL_HOLD_FLAG(pmap);


 rw_wlock(&pvh_global_lock);
 PMAP_LOCK(pmap);
 for (; va < endva; va += PAGE_SIZE) {
  pte = pte_find(mmu, pmap, va);
  if ((pte != ((void*)0)) && PTE_ISVALID(pte))
   pte_remove(mmu, pmap, va, hold_flag);
 }
 PMAP_UNLOCK(pmap);
 rw_wunlock(&pvh_global_lock);


}
