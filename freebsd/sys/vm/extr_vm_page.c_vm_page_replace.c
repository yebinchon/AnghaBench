
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
struct TYPE_16__ {int memq; int rtree; } ;
struct TYPE_15__ {int ref_count; scalar_t__ queue; TYPE_2__* object; int pindex; } ;


 int KASSERT (int,char*) ;
 scalar_t__ PQ_NONE ;
 int TAILQ_INSERT_AFTER (int *,TYPE_1__*,TYPE_1__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_2__*) ;
 int VPRC_OBJREF ;
 int atomic_clear_int (int*,int) ;
 int atomic_set_int (int*,int) ;
 int listq ;
 scalar_t__ pmap_page_is_write_mapped (TYPE_1__*) ;
 int vm_object_set_writeable_dirty (TYPE_2__*) ;
 int vm_page_xunbusy (TYPE_1__*) ;
 TYPE_1__* vm_radix_replace (int *,TYPE_1__*) ;

vm_page_t
vm_page_replace(vm_page_t mnew, vm_object_t object, vm_pindex_t pindex)
{
 vm_page_t mold;

 VM_OBJECT_ASSERT_WLOCKED(object);
 KASSERT(mnew->object == ((void*)0) && (mnew->ref_count & VPRC_OBJREF) == 0,
     ("vm_page_replace: page %p already in object", mnew));







 mnew->object = object;
 mnew->pindex = pindex;
 atomic_set_int(&mnew->ref_count, VPRC_OBJREF);
 mold = vm_radix_replace(&object->rtree, mnew);
 KASSERT(mold->queue == PQ_NONE,
     ("vm_page_replace: old page %p is on a paging queue", mold));


 TAILQ_INSERT_AFTER(&object->memq, mold, mnew, listq);
 TAILQ_REMOVE(&object->memq, mold, listq);

 mold->object = ((void*)0);
 atomic_clear_int(&mold->ref_count, VPRC_OBJREF);
 vm_page_xunbusy(mold);






 if (pmap_page_is_write_mapped(mnew))
  vm_object_set_writeable_dirty(object);
 return (mold);
}
