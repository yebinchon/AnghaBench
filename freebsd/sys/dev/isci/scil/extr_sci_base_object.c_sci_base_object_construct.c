
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct SCI_BASE_LOGGER {int dummy; } ;
struct TYPE_3__ {int * associated_object; struct SCI_BASE_LOGGER* logger; } ;
typedef TYPE_1__ SCI_BASE_OBJECT_T ;



void sci_base_object_construct(
   SCI_BASE_OBJECT_T * base_object,
   struct SCI_BASE_LOGGER * logger
)
{



   base_object->associated_object = ((void*)0);
}
