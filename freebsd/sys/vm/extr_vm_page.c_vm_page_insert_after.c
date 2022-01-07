
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
struct TYPE_15__ {int rtree; int memq; } ;
struct TYPE_14__ {scalar_t__ pindex; int ref_count; TYPE_2__* object; } ;


 int KASSERT (int,char*) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_2__*) ;
 int VPRC_OBJREF ;
 int listq ;
 int vm_page_insert_radixdone (TYPE_1__*,TYPE_2__*,TYPE_1__*) ;
 scalar_t__ vm_radix_insert (int *,TYPE_1__*) ;

__attribute__((used)) static int
vm_page_insert_after(vm_page_t m, vm_object_t object, vm_pindex_t pindex,
    vm_page_t mpred)
{
 vm_page_t msucc;

 VM_OBJECT_ASSERT_WLOCKED(object);
 KASSERT(m->object == ((void*)0),
     ("vm_page_insert_after: page already inserted"));
 if (mpred != ((void*)0)) {
  KASSERT(mpred->object == object,
      ("vm_page_insert_after: object doesn't contain mpred"));
  KASSERT(mpred->pindex < pindex,
      ("vm_page_insert_after: mpred doesn't precede pindex"));
  msucc = TAILQ_NEXT(mpred, listq);
 } else
  msucc = TAILQ_FIRST(&object->memq);
 if (msucc != ((void*)0))
  KASSERT(msucc->pindex > pindex,
      ("vm_page_insert_after: msucc doesn't succeed pindex"));




 m->object = object;
 m->pindex = pindex;
 m->ref_count |= VPRC_OBJREF;




 if (vm_radix_insert(&object->rtree, m)) {
  m->object = ((void*)0);
  m->pindex = 0;
  m->ref_count &= ~VPRC_OBJREF;
  return (1);
 }
 vm_page_insert_radixdone(m, object, mpred);
 return (0);
}
