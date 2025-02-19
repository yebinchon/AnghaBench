
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
struct TYPE_15__ {int state_machine; } ;
struct TYPE_19__ {TYPE_4__ parent; int started_substate_machine; int saved_rx_frame_index; TYPE_6__* owning_controller; } ;
struct TYPE_18__ {scalar_t__ fis_type; } ;
struct TYPE_17__ {int uf_control; } ;
struct TYPE_12__ {int * sgl_pair; } ;
struct TYPE_13__ {scalar_t__ pio_transfer_bytes; int ending_status; TYPE_1__ request_current; } ;
struct TYPE_14__ {TYPE_2__ pio; } ;
struct TYPE_16__ {TYPE_9__ parent; TYPE_3__ type; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_5__ SCIC_SDS_STP_REQUEST_T ;
typedef int SCIC_SDS_REQUEST_T ;
typedef TYPE_6__ SCIC_SDS_CONTROLLER_T ;
typedef TYPE_7__ SATA_FIS_HEADER_T ;
typedef int SATA_FIS_DATA_T ;


 int ATA_STATUS_REG_BSY_BIT ;
 scalar_t__ SATA_FIS_TYPE_DATA ;
 int SCIC_LOG_ERROR (int ) ;
 int SCIC_LOG_OBJECT_STP_IO_REQUEST ;
 int SCIC_LOG_TRACE (int ) ;
 int SCIC_SDS_STP_REQUEST_STARTED_PIO_AWAIT_FRAME_SUBSTATE ;
 int SCI_BASE_REQUEST_STATE_COMPLETED ;
 int SCI_FAILURE_IO_REQUIRES_SCSI_ABORT ;
 int SCI_FAILURE_IO_RESPONSE_VALID ;
 scalar_t__ SCI_SUCCESS ;
 int SCU_TASK_DONE_CHECK_RESPONSE ;
 int SCU_TASK_DONE_GOOD ;
 int sci_base_object_get_logger (TYPE_5__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_sds_controller_release_frame (TYPE_6__*,int ) ;
 int scic_sds_request_set_status (TYPE_9__*,int ,int ) ;
 scalar_t__ scic_sds_stp_request_pio_data_in_copy_data (TYPE_5__*,int *) ;
 scalar_t__ scic_sds_unsolicited_frame_control_get_buffer (int *,int ,void**) ;
 scalar_t__ scic_sds_unsolicited_frame_control_get_header (int *,int ,void**) ;

__attribute__((used)) static
SCI_STATUS scic_sds_stp_request_pio_data_in_await_data_frame_handler(
   SCIC_SDS_REQUEST_T * request,
   U32 frame_index
)
{
   SCI_STATUS status;
   SATA_FIS_HEADER_T * frame_header;
   SATA_FIS_DATA_T * frame_buffer;
   SCIC_SDS_STP_REQUEST_T * this_request;
   SCIC_SDS_CONTROLLER_T * owning_controller;

   this_request = (SCIC_SDS_STP_REQUEST_T *)request;



   owning_controller = this_request->parent.owning_controller;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_request),
      SCIC_LOG_OBJECT_STP_IO_REQUEST,
      "scic_sds_stp_request_pio_data_in_await_data_frame_handler(0x%x, 0x%x) enter\n",
      this_request, frame_index
   ));

   status = scic_sds_unsolicited_frame_control_get_header(
      &(owning_controller->uf_control),
      frame_index,
      (void**) &frame_header
   );

   if (status == SCI_SUCCESS)
   {
      if (frame_header->fis_type == SATA_FIS_TYPE_DATA)
      {
         if (this_request->type.pio.request_current.sgl_pair == ((void*)0))
         {
            this_request->parent.saved_rx_frame_index = frame_index;
            this_request->type.pio.pio_transfer_bytes = 0;
         }
         else
         {
            status = scic_sds_unsolicited_frame_control_get_buffer(
               &(owning_controller->uf_control),
               frame_index,
               (void**) &frame_buffer
            );

            status = scic_sds_stp_request_pio_data_in_copy_data(this_request, (U8 *)frame_buffer);


            scic_sds_controller_release_frame(
               owning_controller,
               frame_index
            );
         }



         if (
               (status == SCI_SUCCESS)
            && (this_request->type.pio.pio_transfer_bytes == 0)
            )
         {
            if ((this_request->type.pio.ending_status & ATA_STATUS_REG_BSY_BIT) == 0)
            {
               scic_sds_request_set_status(
                  &this_request->parent,
                  SCU_TASK_DONE_CHECK_RESPONSE,
                  SCI_FAILURE_IO_RESPONSE_VALID
               );

               sci_base_state_machine_change_state(
                  &this_request->parent.parent.state_machine,
                  SCI_BASE_REQUEST_STATE_COMPLETED
               );
            }
            else
            {
               sci_base_state_machine_change_state(
                  &this_request->parent.started_substate_machine,
                  SCIC_SDS_STP_REQUEST_STARTED_PIO_AWAIT_FRAME_SUBSTATE
               );
            }
         }
      }
      else
      {
         SCIC_LOG_ERROR((
            sci_base_object_get_logger(this_request),
            SCIC_LOG_OBJECT_STP_IO_REQUEST,
            "SCIC PIO Request 0x%x received frame %d with fis type 0x%02x when expecting a data fis.\n",
            this_request, frame_index, frame_header->fis_type
         ));

         scic_sds_request_set_status(
            &this_request->parent,
            SCU_TASK_DONE_GOOD,
            SCI_FAILURE_IO_REQUIRES_SCSI_ABORT
         );

         sci_base_state_machine_change_state(
            &this_request->parent.parent.state_machine,
            SCI_BASE_REQUEST_STATE_COMPLETED
         );


         scic_sds_controller_release_frame(
            owning_controller,
            frame_index
         );
      }
   }
   else
   {
      SCIC_LOG_ERROR((
         sci_base_object_get_logger(this_request),
         SCIC_LOG_OBJECT_STP_IO_REQUEST,
         "SCIC IO Request 0x%x could not get frame header for frame index %d, status %x\n",
         this_request, frame_index, status
      ));
   }

   return status;
}
