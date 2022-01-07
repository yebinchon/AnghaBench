
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef scalar_t__ vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef int pmap_t ;
typedef int mmu_t ;
struct TYPE_6__ {scalar_t__ pindex; int object; } ;


 int PMAP_ENTER_QUICK_LOCKED ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int VM_OBJECT_ASSERT_LOCKED (int ) ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 scalar_t__ atop (scalar_t__) ;
 int listq ;
 int moea_enter_locked (int ,scalar_t__,TYPE_1__*,int,int ,int ) ;
 scalar_t__ ptoa (scalar_t__) ;
 int pvh_global_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;

void
moea_enter_object(mmu_t mmu, pmap_t pm, vm_offset_t start, vm_offset_t end,
    vm_page_t m_start, vm_prot_t prot)
{
 vm_page_t m;
 vm_pindex_t diff, psize;

 VM_OBJECT_ASSERT_LOCKED(m_start->object);

 psize = atop(end - start);
 m = m_start;
 rw_wlock(&pvh_global_lock);
 PMAP_LOCK(pm);
 while (m != ((void*)0) && (diff = m->pindex - m_start->pindex) < psize) {
  moea_enter_locked(pm, start + ptoa(diff), m, prot &
      (VM_PROT_READ | VM_PROT_EXECUTE), PMAP_ENTER_QUICK_LOCKED,
      0);
  m = TAILQ_NEXT(m, listq);
 }
 rw_wunlock(&pvh_global_lock);
 PMAP_UNLOCK(pm);
}
