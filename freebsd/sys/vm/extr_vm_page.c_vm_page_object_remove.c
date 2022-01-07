
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
struct TYPE_8__ {scalar_t__ resident_page_count; scalar_t__ type; int handle; int memq; int rtree; } ;
struct TYPE_7__ {int ref_count; int pindex; TYPE_2__* object; } ;


 int KASSERT (int,char*) ;
 scalar_t__ OBJT_VNODE ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_2__*) ;
 int VPRC_OBJREF ;
 int listq ;
 int vdrop (int ) ;
 TYPE_1__* vm_radix_remove (int *,int ) ;

__attribute__((used)) static void
vm_page_object_remove(vm_page_t m)
{
 vm_object_t object;
 vm_page_t mrem;

 object = m->object;
 VM_OBJECT_ASSERT_WLOCKED(object);
 KASSERT((m->ref_count & VPRC_OBJREF) != 0,
     ("page %p is missing its object ref", m));

 mrem = vm_radix_remove(&object->rtree, m->pindex);
 KASSERT(mrem == m, ("removed page %p, expected page %p", mrem, m));




 TAILQ_REMOVE(&object->memq, m, listq);




 object->resident_page_count--;




 if (object->resident_page_count == 0 && object->type == OBJT_VNODE)
  vdrop(object->handle);
}
