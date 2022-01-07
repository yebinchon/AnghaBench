
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_TRACE (int ) ;
 int SMU_IMR_WRITE (int *,int) ;
 int SMU_ISR_COMPLETION ;
 int SMU_ISR_WRITE (int *,int ) ;
 int sci_base_object_get_logger (scalar_t__) ;
 scalar_t__ scic_sds_controller_completion_queue_has_entries (int *) ;
 int scic_sds_controller_process_completions (int *) ;

__attribute__((used)) static
void scic_sds_controller_normal_vector_completion_handler(
   SCI_CONTROLLER_HANDLE_T controller
)
{
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIC_LOG_OBJECT_CONTROLLER,
      "scic_sds_controller_normal_vector_completion_handler(0x%d) enter\n",
      controller
   ));


   if (scic_sds_controller_completion_queue_has_entries(this_controller))
   {
      scic_sds_controller_process_completions(this_controller);
   }


   SMU_ISR_WRITE(this_controller, SMU_ISR_COMPLETION);

   SMU_IMR_WRITE(this_controller, 0xFF000000);
   SMU_IMR_WRITE(this_controller, 0x00000000);
}
