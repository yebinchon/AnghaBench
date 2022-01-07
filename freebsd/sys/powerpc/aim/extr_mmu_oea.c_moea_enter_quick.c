
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int pmap_t ;
typedef int mmu_t ;


 int PMAP_ENTER_QUICK_LOCKED ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int moea_enter_locked (int ,int ,int ,int,int ,int ) ;
 int pvh_global_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;

void
moea_enter_quick(mmu_t mmu, pmap_t pm, vm_offset_t va, vm_page_t m,
    vm_prot_t prot)
{

 rw_wlock(&pvh_global_lock);
 PMAP_LOCK(pm);
 moea_enter_locked(pm, va, m, prot & (VM_PROT_READ | VM_PROT_EXECUTE),
     PMAP_ENTER_QUICK_LOCKED, 0);
 rw_wunlock(&pvh_global_lock);
 PMAP_UNLOCK(pm);
}
