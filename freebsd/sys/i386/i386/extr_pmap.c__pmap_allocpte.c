
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_paddr_t ;
typedef size_t u_int ;
typedef TYPE_3__* pmap_t ;
typedef scalar_t__ pd_entry_t ;
struct TYPE_11__ {int resident_count; } ;
struct TYPE_13__ {scalar_t__* pm_pdir; TYPE_1__ pm_stats; } ;
struct TYPE_12__ {int flags; } ;


 int PG_A ;
 int PG_M ;
 int PG_RW ;
 int PG_U ;
 int PG_V ;
 int PG_ZERO ;
 size_t PMAP_ENTER_NOSLEEP ;
 int PMAP_LOCK (TYPE_3__*) ;
 int PMAP_UNLOCK (TYPE_3__*) ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int VM_PAGE_TO_PHYS (TYPE_2__*) ;
 int pmap_zero_page (TYPE_2__*) ;
 int pvh_global_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 TYPE_2__* vm_page_alloc (int *,size_t,int) ;
 int vm_wait (int *) ;

__attribute__((used)) static vm_page_t
_pmap_allocpte(pmap_t pmap, u_int ptepindex, u_int flags)
{
 vm_paddr_t ptepa;
 vm_page_t m;




 if ((m = vm_page_alloc(((void*)0), ptepindex, VM_ALLOC_NOOBJ |
     VM_ALLOC_WIRED | VM_ALLOC_ZERO)) == ((void*)0)) {
  if ((flags & PMAP_ENTER_NOSLEEP) == 0) {
   PMAP_UNLOCK(pmap);
   rw_wunlock(&pvh_global_lock);
   vm_wait(((void*)0));
   rw_wlock(&pvh_global_lock);
   PMAP_LOCK(pmap);
  }





  return (((void*)0));
 }
 if ((m->flags & PG_ZERO) == 0)
  pmap_zero_page(m);






 pmap->pm_stats.resident_count++;

 ptepa = VM_PAGE_TO_PHYS(m);
 pmap->pm_pdir[ptepindex] =
  (pd_entry_t) (ptepa | PG_U | PG_RW | PG_V | PG_A | PG_M);

 return (m);
}
