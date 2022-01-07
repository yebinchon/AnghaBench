
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t U8 ;
struct TYPE_3__ {size_t max_controller_count; int * controllers; } ;
typedef TYPE_1__ SCIC_SDS_LIBRARY_T ;
typedef int SCIC_SDS_CONTROLLER_T ;



U8 scic_sds_library_get_controller_index(
   SCIC_SDS_LIBRARY_T * library,
   SCIC_SDS_CONTROLLER_T * controller
)
{
   U8 index;

   for (index = 0; index < library->max_controller_count; index++)
   {
      if (controller == &library->controllers[index])
      {
         return index;
      }
   }

   return 0xff;
}
