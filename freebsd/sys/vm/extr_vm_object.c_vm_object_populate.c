
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef int vm_object_t ;
typedef int boolean_t ;
struct TYPE_7__ {scalar_t__ pindex; } ;


 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int VM_ALLOC_NORMAL ;
 int VM_OBJECT_ASSERT_WLOCKED (int ) ;
 int VM_PAGER_OK ;
 int listq ;
 int vm_page_grab_valid (TYPE_1__**,int ,scalar_t__,int ) ;
 TYPE_1__* vm_page_lookup (int ,scalar_t__) ;
 int vm_page_xunbusy (TYPE_1__*) ;

boolean_t
vm_object_populate(vm_object_t object, vm_pindex_t start, vm_pindex_t end)
{
 vm_page_t m;
 vm_pindex_t pindex;
 int rv;

 VM_OBJECT_ASSERT_WLOCKED(object);
 for (pindex = start; pindex < end; pindex++) {
  rv = vm_page_grab_valid(&m, object, pindex, VM_ALLOC_NORMAL);
  if (rv != VM_PAGER_OK)
   break;





 }
 if (pindex > start) {
  m = vm_page_lookup(object, start);
  while (m != ((void*)0) && m->pindex < pindex) {
   vm_page_xunbusy(m);
   m = TAILQ_NEXT(m, listq);
  }
 }
 return (pindex == end);
}
