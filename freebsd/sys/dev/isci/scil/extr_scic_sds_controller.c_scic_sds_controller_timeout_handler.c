
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef scalar_t__ SCI_BASE_CONTROLLER_STATES ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_ERROR (int ) ;
 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCI_BASE_CONTROLLER_STATE_FAILED ;
 scalar_t__ SCI_BASE_CONTROLLER_STATE_STARTING ;
 scalar_t__ SCI_BASE_CONTROLLER_STATE_STOPPING ;
 int SCI_FAILURE_TIMEOUT ;
 int sci_base_object_get_logger (int *) ;
 int sci_base_state_machine_change_state (int ,int ) ;
 scalar_t__ sci_base_state_machine_get_state (int ) ;
 int scic_cb_controller_stop_complete (scalar_t__,int ) ;
 int scic_sds_controller_get_base_state_machine (int *) ;
 int scic_sds_controller_transition_to_ready (int *,int ) ;

void scic_sds_controller_timeout_handler(
   SCI_CONTROLLER_HANDLE_T controller
)
{
   SCI_BASE_CONTROLLER_STATES current_state;
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   current_state = sci_base_state_machine_get_state(
                      scic_sds_controller_get_base_state_machine(this_controller)
                   );

   if (current_state == SCI_BASE_CONTROLLER_STATE_STARTING)
   {
      scic_sds_controller_transition_to_ready(
         this_controller, SCI_FAILURE_TIMEOUT
      );
   }
   else if (current_state == SCI_BASE_CONTROLLER_STATE_STOPPING)
   {
      sci_base_state_machine_change_state(
         scic_sds_controller_get_base_state_machine(this_controller),
         SCI_BASE_CONTROLLER_STATE_FAILED
      );

      scic_cb_controller_stop_complete(controller, SCI_FAILURE_TIMEOUT);
   }
   else
   {

      SCIC_LOG_ERROR((
         sci_base_object_get_logger(this_controller),
         SCIC_LOG_OBJECT_CONTROLLER,
         "Controller timer fired when controller was not in a state being timed.\n"
      ));
   }
}
