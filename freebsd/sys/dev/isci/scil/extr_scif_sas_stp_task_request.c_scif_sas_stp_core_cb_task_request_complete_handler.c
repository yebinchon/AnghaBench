
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int sequence; } ;
struct TYPE_9__ {TYPE_1__ stp; } ;
struct TYPE_10__ {TYPE_2__ parent; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_3__ SCIF_SAS_TASK_REQUEST_T ;
typedef int SCIF_SAS_REQUEST_T ;
typedef int SCIF_SAS_REMOTE_DEVICE_T ;
typedef int SCIF_SAS_CONTROLLER_T ;
typedef scalar_t__ SATI_STATUS ;


 scalar_t__ SATI_COMPLETE ;
 scalar_t__ SATI_FAILURE_CHECK_RESPONSE_DATA ;
 scalar_t__ SATI_SEQUENCE_INCOMPLETE ;
 int SCIF_LOG_OBJECT_TASK_MANAGEMENT ;
 int SCIF_LOG_TRACE (int ) ;
 scalar_t__ SCI_FAILURE ;
 scalar_t__ SCI_FAILURE_IO_RESPONSE_VALID ;
 scalar_t__ SCI_SAS_ABORT_TASK_SET ;
 scalar_t__ SCI_SUCCESS ;
 scalar_t__ sati_translate_task_response (int *,TYPE_3__*,TYPE_3__*) ;
 int sci_base_object_get_logger (int *) ;
 int scif_sas_stp_task_request_abort_task_set_failure_handler (int *,TYPE_3__*) ;
 scalar_t__ scif_sas_task_request_get_function (TYPE_3__*) ;

__attribute__((used)) static
SCI_STATUS scif_sas_stp_core_cb_task_request_complete_handler(
   SCIF_SAS_CONTROLLER_T * fw_controller,
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCIF_SAS_REQUEST_T * fw_request,
   SCI_STATUS * completion_status
)
{

   SCIF_SAS_TASK_REQUEST_T * fw_task = (SCIF_SAS_TASK_REQUEST_T *) fw_request;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_TASK_MANAGEMENT,
      "scif_sas_stp_core_cb_task_request_complete_handler(0x%x, 0x%x, 0x%x, 0x%x) enter\n",
      fw_controller, fw_device, fw_request, *completion_status
   ));




   if ( (*completion_status == SCI_SUCCESS)
      || (*completion_status == SCI_FAILURE_IO_RESPONSE_VALID) )
   {
      SATI_STATUS sati_status = sati_translate_task_response(
                                   &fw_task->parent.stp.sequence,
                                   fw_task,
                                   fw_task
                                );

      if (sati_status == SATI_COMPLETE)
         *completion_status = SCI_SUCCESS;
      else if (sati_status == SATI_FAILURE_CHECK_RESPONSE_DATA)
         *completion_status = SCI_FAILURE_IO_RESPONSE_VALID;
      else if (sati_status == SATI_SEQUENCE_INCOMPLETE)
      {





         return SCI_FAILURE;
      }
      else
      {


         *completion_status = SCI_FAILURE;
      }
   }
   else
   {
      if (scif_sas_task_request_get_function(fw_task) == SCI_SAS_ABORT_TASK_SET)
      {
         scif_sas_stp_task_request_abort_task_set_failure_handler(
            fw_device, fw_task);
      }
   }

   return SCI_SUCCESS;



}
