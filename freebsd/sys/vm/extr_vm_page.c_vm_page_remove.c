
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_5__ {int * object; } ;


 scalar_t__ VPRC_OBJREF ;
 scalar_t__ vm_page_drop (TYPE_1__*,scalar_t__) ;
 int vm_page_object_remove (TYPE_1__*) ;

bool
vm_page_remove(vm_page_t m)
{

 vm_page_object_remove(m);
 m->object = ((void*)0);
 return (vm_page_drop(m, VPRC_OBJREF) == VPRC_OBJREF);
}
