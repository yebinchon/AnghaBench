
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct TYPE_3__ {int paging_in_progress; } ;


 int refcount_releasen (int *,short) ;

void
vm_object_pip_wakeupn(vm_object_t object, short i)
{

 refcount_releasen(&object->paging_in_progress, i);
}
