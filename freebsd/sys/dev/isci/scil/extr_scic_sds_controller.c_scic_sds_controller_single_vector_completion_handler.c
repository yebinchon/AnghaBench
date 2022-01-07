
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int * SCI_CONTROLLER_HANDLE_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_ERROR (int ) ;
 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_TRACE (int ) ;
 int SCI_BASE_CONTROLLER_STATE_FAILED ;
 int SMU_IMR_WRITE (int *,int) ;
 int SMU_ISR_COMPLETION ;
 int SMU_ISR_QUEUE_ERROR ;
 int SMU_ISR_QUEUE_SUSPEND ;
 int SMU_ISR_READ (int *) ;
 int SMU_ISR_WRITE (int *,int) ;
 int sci_base_object_get_logger (int *) ;
 int sci_base_state_machine_change_state (int ,int ) ;
 scalar_t__ scic_sds_controller_completion_queue_has_entries (int *) ;
 int scic_sds_controller_get_base_state_machine (int *) ;
 int scic_sds_controller_process_completions (int *) ;

__attribute__((used)) static
void scic_sds_controller_single_vector_completion_handler(
   SCI_CONTROLLER_HANDLE_T controller
)
{
   U32 interrupt_status;
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIC_LOG_OBJECT_CONTROLLER,
      "scic_sds_controller_single_vector_completion_handler(0x%d) enter\n",
      controller
   ));

   interrupt_status = SMU_ISR_READ(this_controller);
   interrupt_status &= (SMU_ISR_QUEUE_ERROR | SMU_ISR_QUEUE_SUSPEND);

   if (interrupt_status & SMU_ISR_QUEUE_ERROR)
   {
      SCIC_LOG_ERROR((
         sci_base_object_get_logger(this_controller),
         SCIC_LOG_OBJECT_CONTROLLER,
         "SCIC Controller has encountered a fatal error.\n"
      ));



      sci_base_state_machine_change_state(
         scic_sds_controller_get_base_state_machine(this_controller),
         SCI_BASE_CONTROLLER_STATE_FAILED
      );
      return;
   }

   if (
           (interrupt_status & SMU_ISR_QUEUE_SUSPEND)
        && !scic_sds_controller_completion_queue_has_entries(this_controller)
      )
   {
      SCIC_LOG_ERROR((
         sci_base_object_get_logger(this_controller),
         SCIC_LOG_OBJECT_CONTROLLER,
         "SCIC Controller has encountered a fatal error.\n"
      ));



      sci_base_state_machine_change_state(
         scic_sds_controller_get_base_state_machine(this_controller),
         SCI_BASE_CONTROLLER_STATE_FAILED
      );
      return;
   }

   if (scic_sds_controller_completion_queue_has_entries(this_controller))
   {
      scic_sds_controller_process_completions(this_controller);



      SMU_ISR_WRITE(
         this_controller,
         (SMU_ISR_COMPLETION | SMU_ISR_QUEUE_SUSPEND)
      );
   }

   SMU_IMR_WRITE(this_controller, 0x00000000);
}
