
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state_machine; } ;
struct TYPE_5__ {TYPE_1__ parent; } ;
typedef int SCI_STATUS ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_2__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_INITIALIZATION ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_BASE_CONTROLLER_STATE_READY ;
 int SCI_FAILURE_TIMEOUT ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (int ) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 scalar_t__ sci_object_get_association (int ) ;
 int scif_cb_controller_start_complete (TYPE_2__*,int ) ;

void scic_cb_controller_start_complete(
   SCI_CONTROLLER_HANDLE_T controller,
   SCI_STATUS completion_status
)
{
   SCIF_SAS_CONTROLLER_T *fw_controller = (SCIF_SAS_CONTROLLER_T*)
                                         sci_object_get_association(controller);

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_INITIALIZATION,
      "scic_cb_controller_start_complete(0x%x, 0x%x) enter\n",
      controller, completion_status
   ));

   if (completion_status == SCI_SUCCESS
       || completion_status == SCI_FAILURE_TIMEOUT)
   {


      sci_base_state_machine_change_state(
         &fw_controller->parent.state_machine,
         SCI_BASE_CONTROLLER_STATE_READY
      );
   }

   scif_cb_controller_start_complete(fw_controller, completion_status);
}
