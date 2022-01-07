
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; TYPE_1__* state_handlers; } ;
struct TYPE_3__ {int (* initialize_handler ) (int *) ;} ;
typedef int SCI_STATUS ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_2__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_INITIALIZATION ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_FAILURE_INVALID_PARAMETER_VALUE ;
 scalar_t__ SCI_INVALID_HANDLE ;
 int sci_base_object_get_logger (scalar_t__) ;
 int stub1 (int *) ;

SCI_STATUS scif_controller_initialize(
   SCI_CONTROLLER_HANDLE_T controller
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T*) controller;


   if (controller == SCI_INVALID_HANDLE)
      return SCI_FAILURE_INVALID_PARAMETER_VALUE;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_INITIALIZATION,
      "scif_controller_initialize(0x%x) enter\n",
      controller
   ));

   return fw_controller->state_handlers->initialize_handler(
             &fw_controller->parent
          );
}
