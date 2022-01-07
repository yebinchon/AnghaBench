
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_12__ {int uf_control; } ;
struct TYPE_11__ {int owning_controller; scalar_t__ response_buffer; } ;
struct TYPE_10__ {scalar_t__ frame_type; } ;
struct TYPE_9__ {int data_present; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCI_SSP_RESPONSE_IU_T ;
typedef TYPE_2__ SCI_SSP_FRAME_HEADER_T ;
typedef TYPE_3__ SCIC_SDS_REQUEST_T ;


 int SCIC_LOG_ERROR (int ) ;
 int SCIC_LOG_OBJECT_SSP_IO_REQUEST ;
 int SCI_FAILURE_CONTROLLER_SPECIFIC_IO_ERR ;
 scalar_t__ SCI_SAS_RESPONSE_FRAME ;
 int SCI_SUCCESS ;
 int SCU_TASK_DONE_CHECK_RESPONSE ;
 int SCU_TASK_DONE_GOOD ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int scic_sds_controller_release_frame (int ,int ) ;
 TYPE_6__* scic_sds_request_get_controller (TYPE_3__*) ;
 int scic_sds_request_set_status (TYPE_3__*,int ,int ) ;
 int scic_sds_unsolicited_frame_control_get_buffer (int *,int ,void**) ;
 int scic_sds_unsolicited_frame_control_get_header (int *,int ,void**) ;
 int scic_word_copy_with_swap (scalar_t__,int *,int) ;

__attribute__((used)) static
SCI_STATUS scic_sds_request_started_state_frame_handler(
   SCIC_SDS_REQUEST_T * this_request,
   U32 frame_index
)
{
   SCI_STATUS status;
   SCI_SSP_FRAME_HEADER_T *frame_header;


   status = scic_sds_unsolicited_frame_control_get_header(
      &(scic_sds_request_get_controller(this_request)->uf_control),
      frame_index,
      (void**) &frame_header
   );

   if (frame_header->frame_type == SCI_SAS_RESPONSE_FRAME)
   {
      SCI_SSP_RESPONSE_IU_T *response_buffer;

      status = scic_sds_unsolicited_frame_control_get_buffer(
         &(scic_sds_request_get_controller(this_request)->uf_control),
         frame_index,
         (void**) &response_buffer
      );

      scic_word_copy_with_swap(
         this_request->response_buffer,
         (U32 *)response_buffer,
         sizeof(SCI_SSP_RESPONSE_IU_T)
      );

      response_buffer = (SCI_SSP_RESPONSE_IU_T *)this_request->response_buffer;

      if (
            (response_buffer->data_present == 0x01)
         || (response_buffer->data_present == 0x02)
         )
      {
         scic_sds_request_set_status(
            this_request,
            SCU_TASK_DONE_CHECK_RESPONSE,
            SCI_FAILURE_CONTROLLER_SPECIFIC_IO_ERR
         );
      }
      else
      {
         scic_sds_request_set_status(
            this_request, SCU_TASK_DONE_GOOD, SCI_SUCCESS
         );
      }

   }
   else
   {

      SCIC_LOG_ERROR((
         sci_base_object_get_logger(this_request),
         SCIC_LOG_OBJECT_SSP_IO_REQUEST,
         "SCIC IO Request 0x%x received unexpected frame %d type 0x%02x\n",
         this_request, frame_index, frame_header->frame_type
      ));
   }



   scic_sds_controller_release_frame(
      this_request->owning_controller, frame_index
   );

   return SCI_SUCCESS;
}
