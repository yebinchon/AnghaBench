
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct TYPE_3__ {int busy; } ;


 int refcount_release (int *) ;

void
vm_object_unbusy(vm_object_t obj)
{


 refcount_release(&obj->busy);
}
