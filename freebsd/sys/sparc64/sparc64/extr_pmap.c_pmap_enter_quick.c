
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int pmap_t ;


 int PMAP_ENTER_QUICK_LOCKED ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int pmap_enter_locked (int ,int ,int ,int,int ,int ) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int tte_list_global_lock ;

void
pmap_enter_quick(pmap_t pm, vm_offset_t va, vm_page_t m, vm_prot_t prot)
{

 rw_wlock(&tte_list_global_lock);
 PMAP_LOCK(pm);
 pmap_enter_locked(pm, va, m, prot & (VM_PROT_READ | VM_PROT_EXECUTE),
     PMAP_ENTER_QUICK_LOCKED, 0);
 rw_wunlock(&tte_list_global_lock);
 PMAP_UNLOCK(pm);
}
