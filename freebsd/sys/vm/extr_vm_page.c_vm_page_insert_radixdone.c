
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
struct TYPE_13__ {int resident_page_count; scalar_t__ type; int handle; int memq; } ;
struct TYPE_12__ {int ref_count; scalar_t__ pindex; TYPE_2__* object; } ;


 int KASSERT (int,char*) ;
 scalar_t__ OBJT_VNODE ;
 int TAILQ_INSERT_AFTER (int *,TYPE_1__*,TYPE_1__*,int ) ;
 int TAILQ_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_2__*) ;
 int VPRC_OBJREF ;
 int listq ;
 scalar_t__ pmap_page_is_write_mapped (TYPE_1__*) ;
 int vhold (int ) ;
 int vm_object_set_writeable_dirty (TYPE_2__*) ;

__attribute__((used)) static void
vm_page_insert_radixdone(vm_page_t m, vm_object_t object, vm_page_t mpred)
{

 VM_OBJECT_ASSERT_WLOCKED(object);
 KASSERT(object != ((void*)0) && m->object == object,
     ("vm_page_insert_radixdone: page %p has inconsistent object", m));
 KASSERT((m->ref_count & VPRC_OBJREF) != 0,
     ("vm_page_insert_radixdone: page %p is missing object ref", m));
 if (mpred != ((void*)0)) {
  KASSERT(mpred->object == object,
      ("vm_page_insert_radixdone: object doesn't contain mpred"));
  KASSERT(mpred->pindex < m->pindex,
      ("vm_page_insert_radixdone: mpred doesn't precede pindex"));
 }

 if (mpred != ((void*)0))
  TAILQ_INSERT_AFTER(&object->memq, mpred, m, listq);
 else
  TAILQ_INSERT_HEAD(&object->memq, m, listq);




 object->resident_page_count++;




 if (object->resident_page_count == 1 && object->type == OBJT_VNODE)
  vhold(object->handle);





 if (pmap_page_is_write_mapped(m))
  vm_object_set_writeable_dirty(object);
}
