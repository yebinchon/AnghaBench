
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef TYPE_1__* vm_page_t ;
typedef int vm_offset_t ;
typedef int u_int ;
typedef int pmap_t ;
typedef int mmu_t ;
typedef int int8_t ;
struct TYPE_4__ {int object; } ;


 int ENOMEM ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int PMAP_ENTER_NOSLEEP ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int VM_OBJECT_ASSERT_UNLOCKED (int ) ;
 int moea_enter_locked (int ,int ,TYPE_1__*,int ,int,int ) ;
 int pvh_global_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int vm_wait (int *) ;

int
moea_enter(mmu_t mmu, pmap_t pmap, vm_offset_t va, vm_page_t m, vm_prot_t prot,
    u_int flags, int8_t psind)
{
 int error;

 for (;;) {
  rw_wlock(&pvh_global_lock);
  PMAP_LOCK(pmap);
  error = moea_enter_locked(pmap, va, m, prot, flags, psind);
  rw_wunlock(&pvh_global_lock);
  PMAP_UNLOCK(pmap);
  if (error != ENOMEM)
   return (KERN_SUCCESS);
  if ((flags & PMAP_ENTER_NOSLEEP) != 0)
   return (KERN_RESOURCE_SHORTAGE);
  VM_OBJECT_ASSERT_UNLOCKED(m->object);
  vm_wait(((void*)0));
 }
}
