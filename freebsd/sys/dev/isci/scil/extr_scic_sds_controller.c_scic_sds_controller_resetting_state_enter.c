
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_BASE_OBJECT_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_TRACE (int ) ;
 int SCI_BASE_CONTROLLER_STATE_RESET ;
 int SCI_BASE_CONTROLLER_STATE_RESETTING ;
 int sci_base_object_get_logger (int *) ;
 int sci_base_state_machine_change_state (int ,int ) ;
 int scic_sds_controller_get_base_state_machine (int *) ;
 int scic_sds_controller_reset_hardware (int *) ;
 int scic_sds_controller_set_base_state_handlers (int *,int ) ;

__attribute__((used)) static
void scic_sds_controller_resetting_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller= (SCIC_SDS_CONTROLLER_T *)object;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_controller),
      SCIC_LOG_OBJECT_CONTROLLER,
      "scic_sds_controller_resetting_state_enter(0x%x) enter\n",
      this_controller
   ));

   scic_sds_controller_set_base_state_handlers(
      this_controller, SCI_BASE_CONTROLLER_STATE_RESETTING);

   scic_sds_controller_reset_hardware(this_controller);

   sci_base_state_machine_change_state(
      scic_sds_controller_get_base_state_machine(this_controller),
      SCI_BASE_CONTROLLER_STATE_RESET
   );
}
