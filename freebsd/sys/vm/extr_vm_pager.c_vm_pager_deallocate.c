
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct TYPE_7__ {int (* pgo_dealloc ) (TYPE_1__*) ;} ;
struct TYPE_6__ {size_t type; } ;


 int VM_OBJECT_ASSERT_WLOCKED (TYPE_1__*) ;
 TYPE_4__** pagertab ;
 int stub1 (TYPE_1__*) ;

void
vm_pager_deallocate(vm_object_t object)
{

 VM_OBJECT_ASSERT_WLOCKED(object);
 (*pagertab[object->type]->pgo_dealloc) (object);
}
