
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int u_int ;
typedef int pmap_t ;
typedef int int8_t ;


 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int pmap_enter_locked (int ,int ,int ,int ,int ,int ) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int tte_list_global_lock ;

int
pmap_enter(pmap_t pm, vm_offset_t va, vm_page_t m, vm_prot_t prot,
    u_int flags, int8_t psind)
{
 int rv;

 rw_wlock(&tte_list_global_lock);
 PMAP_LOCK(pm);
 rv = pmap_enter_locked(pm, va, m, prot, flags, psind);
 rw_wunlock(&tte_list_global_lock);
 PMAP_UNLOCK(pm);
 return (rv);
}
