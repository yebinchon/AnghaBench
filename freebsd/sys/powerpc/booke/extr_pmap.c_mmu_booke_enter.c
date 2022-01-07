
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int u_int ;
typedef int pmap_t ;
typedef int mmu_t ;
typedef int int8_t ;


 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int mmu_booke_enter_locked (int ,int ,int ,int ,int ,int ,int ) ;
 int pvh_global_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;

__attribute__((used)) static int
mmu_booke_enter(mmu_t mmu, pmap_t pmap, vm_offset_t va, vm_page_t m,
    vm_prot_t prot, u_int flags, int8_t psind)
{
 int error;

 rw_wlock(&pvh_global_lock);
 PMAP_LOCK(pmap);
 error = mmu_booke_enter_locked(mmu, pmap, va, m, prot, flags, psind);
 PMAP_UNLOCK(pmap);
 rw_wunlock(&pvh_global_lock);
 return (error);
}
