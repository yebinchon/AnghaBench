
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_5__ {void* encountered_fatal_error; } ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;
typedef void* BOOL ;


 void* FALSE ;
 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_TRACE (int ) ;
 int SMU_ISR_QUEUE_ERROR ;
 int SMU_ISR_QUEUE_SUSPEND ;
 void* TRUE ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 scalar_t__ scic_sds_controller_completion_queue_has_entries (TYPE_1__*) ;

__attribute__((used)) static
BOOL scic_sds_controller_standard_interrupt_handler(
   SCIC_SDS_CONTROLLER_T *this_controller,
   U32 interrupt_status
)
{
   BOOL is_completion_needed = FALSE;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_controller),
      SCIC_LOG_OBJECT_CONTROLLER,
      "scic_sds_controller_standard_interrupt_handler(0x%d,0x%d) enter\n",
      this_controller, interrupt_status
   ));

   if (
         (interrupt_status & SMU_ISR_QUEUE_ERROR)
      || (
            (interrupt_status & SMU_ISR_QUEUE_SUSPEND)
         && (!scic_sds_controller_completion_queue_has_entries(this_controller))
         )
      )
   {





      is_completion_needed = TRUE;
      this_controller->encountered_fatal_error = TRUE;
   }

   if (scic_sds_controller_completion_queue_has_entries(this_controller))
   {
      is_completion_needed = TRUE;
   }

   return is_completion_needed;
}
