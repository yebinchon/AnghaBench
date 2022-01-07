
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state_machine; int error; } ;
struct TYPE_4__ {TYPE_1__ parent; } ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef int SCI_CONTROLLER_ERROR ;
typedef TYPE_2__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_SHUTDOWN ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_BASE_CONTROLLER_STATE_FAILED ;
 int sci_base_object_get_logger (int ) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 scalar_t__ sci_object_get_association (int ) ;

void scic_cb_controller_error(
   SCI_CONTROLLER_HANDLE_T controller,
   SCI_CONTROLLER_ERROR error
)
{
   SCIF_SAS_CONTROLLER_T *fw_controller = (SCIF_SAS_CONTROLLER_T*)
                                         sci_object_get_association(controller);

   fw_controller->parent.error = error;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_SHUTDOWN,
      "scic_cb_controller_not_ready(0x%x) enter\n",
      controller
   ));

   sci_base_state_machine_change_state(
      &fw_controller->parent.state_machine,
      SCI_BASE_CONTROLLER_STATE_FAILED
   );
}
