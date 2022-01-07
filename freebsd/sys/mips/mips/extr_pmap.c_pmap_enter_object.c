
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef scalar_t__ vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef int pmap_t ;
struct TYPE_8__ {scalar_t__ pindex; int object; } ;


 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int VM_OBJECT_ASSERT_LOCKED (int ) ;
 scalar_t__ atop (scalar_t__) ;
 int listq ;
 TYPE_1__* pmap_enter_quick_locked (int ,scalar_t__,TYPE_1__*,int ,TYPE_1__*) ;
 scalar_t__ ptoa (scalar_t__) ;
 int pvh_global_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;

void
pmap_enter_object(pmap_t pmap, vm_offset_t start, vm_offset_t end,
    vm_page_t m_start, vm_prot_t prot)
{
 vm_page_t m, mpte;
 vm_pindex_t diff, psize;

 VM_OBJECT_ASSERT_LOCKED(m_start->object);

 psize = atop(end - start);
 mpte = ((void*)0);
 m = m_start;
 rw_wlock(&pvh_global_lock);
 PMAP_LOCK(pmap);
 while (m != ((void*)0) && (diff = m->pindex - m_start->pindex) < psize) {
  mpte = pmap_enter_quick_locked(pmap, start + ptoa(diff), m,
      prot, mpte);
  m = TAILQ_NEXT(m, listq);
 }
 rw_wunlock(&pvh_global_lock);
  PMAP_UNLOCK(pmap);
}
