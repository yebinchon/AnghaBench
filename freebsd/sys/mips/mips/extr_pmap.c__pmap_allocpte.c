
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef int u_int ;
typedef TYPE_3__* pmap_t ;
typedef int * pd_entry_t ;
struct TYPE_13__ {int resident_count; } ;
struct TYPE_15__ {TYPE_1__ pm_stats; int ** pm_segtab; } ;
struct TYPE_14__ {int ref_count; } ;


 int MIPS_DIRECT_TO_PHYS (int *) ;
 scalar_t__ MIPS_PHYS_TO_DIRECT (int ) ;
 int NPDEPG ;
 unsigned int NUPDE ;
 unsigned int PDRSHIFT ;
 TYPE_2__* PHYS_TO_VM_PAGE (int ) ;
 int PMAP_ENTER_NOSLEEP ;
 int PMAP_LOCK (TYPE_3__*) ;
 int PMAP_UNLOCK (TYPE_3__*) ;
 unsigned int SEGSHIFT ;
 int VM_ALLOC_NORMAL ;
 int VM_PAGE_TO_PHYS (TYPE_2__*) ;
 TYPE_2__* pmap_alloc_direct_page (unsigned int,int) ;
 int pmap_grow_direct_page (int) ;
 int pvh_global_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int vm_page_free_zero (TYPE_2__*) ;
 int vm_page_unwire_noq (TYPE_2__*) ;

__attribute__((used)) static vm_page_t
_pmap_allocpte(pmap_t pmap, unsigned ptepindex, u_int flags)
{
 vm_offset_t pageva;
 vm_page_t m;
 int req_class;




 req_class = VM_ALLOC_NORMAL;
 if ((m = pmap_alloc_direct_page(ptepindex, req_class)) == ((void*)0)) {
  if ((flags & PMAP_ENTER_NOSLEEP) == 0) {
   PMAP_UNLOCK(pmap);
   rw_wunlock(&pvh_global_lock);
   pmap_grow_direct_page(req_class);
   rw_wlock(&pvh_global_lock);
   PMAP_LOCK(pmap);
  }





  return (((void*)0));
 }





 pageva = MIPS_PHYS_TO_DIRECT(VM_PAGE_TO_PHYS(m));
 pmap->pm_segtab[ptepindex] = (pd_entry_t)pageva;

 pmap->pm_stats.resident_count++;
 return (m);
}
