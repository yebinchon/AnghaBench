
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_10__ {TYPE_2__* state_handlers; } ;
struct TYPE_8__ {int (* stop_handler ) (int *,int ) ;} ;
struct TYPE_9__ {TYPE_1__ parent; } ;
typedef int SCI_STATUS ;
typedef TYPE_3__* SCI_CONTROLLER_HANDLE_T ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef TYPE_3__ SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_TRACE (int ) ;
 int SCIC_LOG_WARNING (int ) ;
 int SCI_FAILURE_INVALID_STATE ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int sci_base_state_machine_get_state (int ) ;
 int scic_sds_controller_get_base_state_machine (TYPE_3__*) ;
 int stub1 (int *,int ) ;

SCI_STATUS scic_controller_stop(
   SCI_CONTROLLER_HANDLE_T controller,
   U32 timeout
)
{
   SCI_STATUS status = SCI_FAILURE_INVALID_STATE;
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIC_LOG_OBJECT_CONTROLLER,
      "scic_controller_stop(0x%x, 0x%d) enter\n",
      controller, timeout
   ));

   if (this_controller->state_handlers->parent.stop_handler != ((void*)0))
   {
      status = this_controller->state_handlers->parent.stop_handler(
                  (SCI_BASE_CONTROLLER_T *)controller, timeout
               );
   }
   else
   {
      SCIC_LOG_WARNING((
         sci_base_object_get_logger(this_controller),
         SCIC_LOG_OBJECT_CONTROLLER,
         "SCIC Controller stop operation requested in invalid state %d\n",
         sci_base_state_machine_get_state(
            scic_sds_controller_get_base_state_machine(this_controller))
      ));
   }

   return status;
}
