
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U16 ;
struct TYPE_3__ {int completion_handler; int interrupt_handler; } ;
typedef int SCI_STATUS ;
typedef int SCIC_INTERRUPT_TYPE ;
typedef TYPE_1__ SCIC_CONTROLLER_HANDLER_METHODS_T ;





 int SCI_FAILURE_INVALID_PARAMETER_VALUE ;
 int SCI_FAILURE_UNSUPPORTED_MESSAGE_COUNT ;
 int SCI_SUCCESS ;
 int scic_sds_controller_error_vector_completion_handler ;
 int scic_sds_controller_error_vector_interrupt_handler ;
 int scic_sds_controller_legacy_completion_handler ;
 int scic_sds_controller_legacy_interrupt_handler ;
 int scic_sds_controller_normal_vector_completion_handler ;
 int scic_sds_controller_normal_vector_interrupt_handler ;
 int scic_sds_controller_polling_completion_handler ;
 int scic_sds_controller_polling_interrupt_handler ;
 int scic_sds_controller_single_vector_completion_handler ;
 int scic_sds_controller_single_vector_interrupt_handler ;

SCI_STATUS scic_controller_get_handler_methods(
   SCIC_INTERRUPT_TYPE interrupt_type,
   U16 message_count,
   SCIC_CONTROLLER_HANDLER_METHODS_T *handler_methods
)
{
   SCI_STATUS status = SCI_FAILURE_UNSUPPORTED_MESSAGE_COUNT;

   switch (interrupt_type)
   {

   case 130:
      if (message_count == 0)
      {
         handler_methods[0].interrupt_handler
            = scic_sds_controller_legacy_interrupt_handler;
         handler_methods[0].completion_handler
            = scic_sds_controller_legacy_completion_handler;

         status = SCI_SUCCESS;
      }
      break;

   case 129:
      if (message_count == 1)
      {
         handler_methods[0].interrupt_handler
            = scic_sds_controller_single_vector_interrupt_handler;
         handler_methods[0].completion_handler
            = scic_sds_controller_single_vector_completion_handler;

         status = SCI_SUCCESS;
      }
      else if (message_count == 2)
      {
         handler_methods[0].interrupt_handler
            = scic_sds_controller_normal_vector_interrupt_handler;
         handler_methods[0].completion_handler
            = scic_sds_controller_normal_vector_completion_handler;

         handler_methods[1].interrupt_handler
            = scic_sds_controller_error_vector_interrupt_handler;
         handler_methods[1].completion_handler
            = scic_sds_controller_error_vector_completion_handler;

         status = SCI_SUCCESS;
      }
      break;


   case 128:
      if (message_count == 0)
      {

         handler_methods[0].interrupt_handler
            = scic_sds_controller_polling_interrupt_handler;
         handler_methods[0].completion_handler
            = scic_sds_controller_polling_completion_handler;

         status = SCI_SUCCESS;
      }
      break;

   default:
      status = SCI_FAILURE_INVALID_PARAMETER_VALUE;
      break;
   }

   return status;
}
