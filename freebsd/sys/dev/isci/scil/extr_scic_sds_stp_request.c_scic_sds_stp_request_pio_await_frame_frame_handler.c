
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int U8 ;
typedef int U32 ;
typedef int U16 ;
struct TYPE_15__ {int state_machine; } ;
struct TYPE_20__ {TYPE_3__ parent; int started_substate_machine; TYPE_5__* owning_controller; } ;
struct TYPE_19__ {int fis_type; int status; } ;
struct TYPE_18__ {int ending_status; int transfter_count; } ;
struct TYPE_17__ {int uf_control; } ;
struct TYPE_12__ {int status; } ;
struct TYPE_13__ {int sat_protocol; int ending_status; int pio_transfer_bytes; } ;
struct TYPE_14__ {TYPE_1__ pio; } ;
struct TYPE_16__ {TYPE_8__ parent; TYPE_10__ d2h_reg_fis; TYPE_2__ type; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_4__ SCIC_SDS_STP_REQUEST_T ;
typedef int SCIC_SDS_REQUEST_T ;
typedef TYPE_5__ SCIC_SDS_CONTROLLER_T ;
typedef TYPE_6__ SATA_FIS_PIO_SETUP_T ;
typedef TYPE_7__ SATA_FIS_HEADER_T ;


 int ATA_STATUS_REG_BSY_BIT ;



 int SAT_PROTOCOL_PIO_DATA_IN ;
 int SAT_PROTOCOL_PIO_DATA_OUT ;
 int SCIC_LOG_ERROR (int ) ;
 int SCIC_LOG_INFO (int ) ;
 int SCIC_LOG_OBJECT_STP_IO_REQUEST ;
 int SCIC_LOG_TRACE (int ) ;
 int SCIC_SDS_STP_REQUEST_STARTED_PIO_AWAIT_FRAME_SUBSTATE ;
 int SCIC_SDS_STP_REQUEST_STARTED_PIO_DATA_IN_AWAIT_DATA_SUBSTATE ;
 int SCIC_SDS_STP_REQUEST_STARTED_PIO_DATA_OUT_TRANSMIT_DATA_SUBSTATE ;
 int SCI_BASE_REQUEST_STATE_COMPLETED ;
 int SCI_FAILURE_IO_RESPONSE_VALID ;
 scalar_t__ SCI_SUCCESS ;
 int SCU_TASK_DONE_CHECK_RESPONSE ;
 int sci_base_object_get_logger (TYPE_4__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_sds_controller_copy_sata_response (TYPE_10__*,int *,int *) ;
 int scic_sds_controller_release_frame (TYPE_5__*,int ) ;
 int scic_sds_request_set_status (TYPE_8__*,int ,int ) ;
 scalar_t__ scic_sds_stp_request_pio_data_out_transmit_data (int *) ;
 int scic_sds_unsolicited_frame_control_get_buffer (int *,int ,void**) ;
 scalar_t__ scic_sds_unsolicited_frame_control_get_header (int *,int ,void**) ;

__attribute__((used)) static
SCI_STATUS scic_sds_stp_request_pio_await_frame_frame_handler(
   SCIC_SDS_REQUEST_T * request,
   U32 frame_index
)
{
   SCI_STATUS status;
   SATA_FIS_HEADER_T * frame_header;
   U32 * frame_buffer;
   SCIC_SDS_STP_REQUEST_T * this_request;
   SCIC_SDS_CONTROLLER_T * owning_controller;

   this_request = (SCIC_SDS_STP_REQUEST_T *)request;



   owning_controller = this_request->parent.owning_controller;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_request),
      SCIC_LOG_OBJECT_STP_IO_REQUEST,
      "scic_sds_stp_request_pio_data_in_await_frame_frame_handler(0x%x, 0x%x) enter\n",
      this_request, frame_index
   ));

   status = scic_sds_unsolicited_frame_control_get_header(
      &(owning_controller->uf_control),
      frame_index,
      (void**) &frame_header
   );

   if (status == SCI_SUCCESS)
   {
      switch (frame_header->fis_type)
      {
      case 130:

         scic_sds_unsolicited_frame_control_get_buffer(
            &(owning_controller->uf_control),
            frame_index,
            (void**) &frame_buffer
         );




         this_request->type.pio.pio_transfer_bytes =
            (U16)((SATA_FIS_PIO_SETUP_T *)(&frame_buffer[-1]))->transfter_count;
         this_request->type.pio.ending_status =
            (U8)((SATA_FIS_PIO_SETUP_T *)(&frame_buffer[-1]))->ending_status;

         scic_sds_controller_copy_sata_response(
            &this_request->d2h_reg_fis, (U32 *)frame_header, frame_buffer
         );

         this_request->d2h_reg_fis.status =
            this_request->type.pio.ending_status;


         if (this_request->type.pio.sat_protocol == SAT_PROTOCOL_PIO_DATA_IN)
         {
         sci_base_state_machine_change_state(
            &this_request->parent.started_substate_machine,
            SCIC_SDS_STP_REQUEST_STARTED_PIO_DATA_IN_AWAIT_DATA_SUBSTATE
            );
         }
         else if (this_request->type.pio.sat_protocol == SAT_PROTOCOL_PIO_DATA_OUT)
         {

            status = scic_sds_stp_request_pio_data_out_transmit_data ( request);
            if (status == SCI_SUCCESS)
            {
               sci_base_state_machine_change_state(
                  &this_request->parent.started_substate_machine,
                  SCIC_SDS_STP_REQUEST_STARTED_PIO_DATA_OUT_TRANSMIT_DATA_SUBSTATE
               );
            }
         }
      break;

      case 128:
         sci_base_state_machine_change_state(
            &this_request->parent.started_substate_machine,
            SCIC_SDS_STP_REQUEST_STARTED_PIO_AWAIT_FRAME_SUBSTATE
            );
      break;

      case 129:
         if ( (frame_header->status & ATA_STATUS_REG_BSY_BIT) == 0)
         {
            scic_sds_unsolicited_frame_control_get_buffer(
               &(owning_controller->uf_control),
               frame_index,
               (void**) &frame_buffer
            );

            scic_sds_controller_copy_sata_response(
               &this_request->d2h_reg_fis, (U32 *)frame_header, frame_buffer);

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


            SCIC_LOG_INFO((
               sci_base_object_get_logger(this_request),
               SCIC_LOG_OBJECT_STP_IO_REQUEST,
               "SCIC PIO Request 0x%x received D2H Register FIS with BSY status 0x%x\n",
               this_request, frame_header->status
            ));
         }
         break;

         default:
         break;
         }


      scic_sds_controller_release_frame(
         owning_controller,
         frame_index
      );
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
