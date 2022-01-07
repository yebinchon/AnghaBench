
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ protocol; } ;
struct TYPE_13__ {TYPE_6__ sequence; int ncq_tag; } ;
struct TYPE_14__ {TYPE_1__ stp; } ;
struct TYPE_16__ {TYPE_2__ parent; } ;
struct TYPE_15__ {int device; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_3__ SCIF_SAS_REQUEST_T ;
typedef int SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_4__ SCIF_SAS_IO_REQUEST_T ;
typedef int SCIF_SAS_CONTROLLER_T ;
typedef scalar_t__ SATI_STATUS ;


 scalar_t__ SATI_COMPLETE ;
 scalar_t__ SATI_COMPLETE_IO_DONE_EARLY ;
 scalar_t__ SATI_FAILURE_CHECK_RESPONSE_DATA ;
 scalar_t__ SATI_SEQUENCE_INCOMPLETE ;
 scalar_t__ SAT_PROTOCOL_FPDMA ;
 int SCIF_LOG_INFO (int ) ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_TRACE (int ) ;
 scalar_t__ SCI_FAILURE ;
 scalar_t__ SCI_FAILURE_IO_RESPONSE_VALID ;
 scalar_t__ SCI_FAILURE_IO_TERMINATED ;
 scalar_t__ SCI_SUCCESS ;
 scalar_t__ SCI_SUCCESS_IO_DONE_EARLY ;
 scalar_t__ SCI_WARNING_SEQUENCE_INCOMPLETE ;
 scalar_t__ sati_cb_do_translate_response (TYPE_3__*) ;
 int sati_sequence_terminate (TYPE_6__*,TYPE_4__*,TYPE_4__*) ;
 scalar_t__ sati_translate_command_response (TYPE_6__*,TYPE_4__*,TYPE_4__*) ;
 int sci_base_object_get_logger (int *) ;
 int scif_sas_stp_remote_device_free_ncq_tag (int ,int ) ;

__attribute__((used)) static
SCI_STATUS scif_sas_stp_core_cb_io_request_complete_handler(
   SCIF_SAS_CONTROLLER_T * fw_controller,
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCIF_SAS_REQUEST_T * fw_request,
   SCI_STATUS * completion_status
)
{
   SCIF_SAS_IO_REQUEST_T * fw_io = (SCIF_SAS_IO_REQUEST_T *) fw_request;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_sas_stp_core_cb_io_request_complete_handler(0x%x, 0x%x, 0x%x, 0x%x) enter\n",
      fw_controller, fw_device, fw_request, *completion_status
   ));

   if (fw_io->parent.stp.sequence.protocol == SAT_PROTOCOL_FPDMA)
      scif_sas_stp_remote_device_free_ncq_tag(
         fw_request->device, fw_io->parent.stp.ncq_tag
      );
   if ((*completion_status == SCI_FAILURE_IO_RESPONSE_VALID) ||
       ((sati_cb_do_translate_response(fw_request)) &&
        (*completion_status != SCI_FAILURE_IO_TERMINATED)))
   {
      SATI_STATUS sati_status = sati_translate_command_response(
                                   &fw_io->parent.stp.sequence, fw_io, fw_io
                                );
      if (sati_status == SATI_COMPLETE)
         *completion_status = SCI_SUCCESS;
      else if (sati_status == SATI_FAILURE_CHECK_RESPONSE_DATA)
         *completion_status = SCI_FAILURE_IO_RESPONSE_VALID;
      else if (sati_status == SATI_SEQUENCE_INCOMPLETE)
      {




         return SCI_WARNING_SEQUENCE_INCOMPLETE;
      }
      else if (sati_status == SATI_COMPLETE_IO_DONE_EARLY)
         *completion_status = SCI_SUCCESS_IO_DONE_EARLY;
      else
      {


         *completion_status = SCI_FAILURE;
      }
   }
   else if (*completion_status != SCI_SUCCESS)
   {
      SCIF_LOG_INFO((
         sci_base_object_get_logger(fw_controller),
         SCIF_LOG_OBJECT_IO_REQUEST,
         "Sequence Terminated(0x%x, 0x%x, 0x%x)\n",
         fw_controller, fw_device, fw_request
      ));

      sati_sequence_terminate(&fw_io->parent.stp.sequence, fw_io, fw_io);
   }

   return SCI_SUCCESS;
}
