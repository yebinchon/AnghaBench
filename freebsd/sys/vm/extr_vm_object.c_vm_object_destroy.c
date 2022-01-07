
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct TYPE_4__ {int * cred; scalar_t__ charge; } ;


 int crfree (int *) ;
 int obj_zone ;
 int swap_release_by_cred (scalar_t__,int *) ;
 int uma_zfree (int ,TYPE_1__*) ;

void
vm_object_destroy(vm_object_t object)
{




 if (object->cred != ((void*)0)) {
  swap_release_by_cred(object->charge, object->cred);
  object->charge = 0;
  crfree(object->cred);
  object->cred = ((void*)0);
 }




 uma_zfree(obj_zone, object);
}
