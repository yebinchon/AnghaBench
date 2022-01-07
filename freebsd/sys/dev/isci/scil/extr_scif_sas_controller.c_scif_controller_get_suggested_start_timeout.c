
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_2__ {int core_object; } ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_1__ SCIF_SAS_CONTROLLER_T ;


 scalar_t__ SCI_INVALID_HANDLE ;
 int scic_controller_get_suggested_start_timeout (int ) ;

U32 scif_controller_get_suggested_start_timeout(
   SCI_CONTROLLER_HANDLE_T controller
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T*) controller;


   if (controller == SCI_INVALID_HANDLE)
      return 0;




   return scic_controller_get_suggested_start_timeout(fw_controller->core_object);
}
