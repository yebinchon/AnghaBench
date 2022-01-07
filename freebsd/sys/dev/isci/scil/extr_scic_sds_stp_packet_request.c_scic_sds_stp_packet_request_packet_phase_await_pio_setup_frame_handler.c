
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int U32 ;
typedef scalar_t__ U16 ;
struct TYPE_15__ {int uf_control; } ;
struct TYPE_14__ {scalar_t__ fis_type; } ;
struct TYPE_13__ {scalar_t__ transfter_count; } ;
struct TYPE_11__ {int started_substate_machine; TYPE_7__* owning_controller; } ;
struct TYPE_9__ {scalar_t__ device_preferred_cdb_length; } ;
struct TYPE_10__ {TYPE_1__ packet; } ;
struct TYPE_12__ {TYPE_3__ parent; TYPE_2__ type; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_4__ SCIC_SDS_STP_REQUEST_T ;
typedef int SCIC_SDS_REQUEST_T ;
typedef TYPE_5__ SATA_FIS_PIO_SETUP_T ;
typedef TYPE_6__ SATA_FIS_HEADER_T ;


 int ASSERT (int) ;
 scalar_t__ SATA_FIS_TYPE_PIO_SETUP ;
 int SCIC_LOG_ERROR (int ) ;
 int SCIC_LOG_OBJECT_STP_IO_REQUEST ;
 int SCIC_LOG_TRACE (int ) ;
 int SCIC_SDS_STP_PACKET_REQUEST_STARTED_COMMAND_PHASE_AWAIT_TC_COMPLETION_SUBSTATE ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_4__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_sds_controller_release_frame (TYPE_7__*,int ) ;
 int scic_sds_unsolicited_frame_control_get_buffer (int *,int ,void**) ;
 scalar_t__ scic_sds_unsolicited_frame_control_get_header (int *,int ,void**) ;

__attribute__((used)) static
SCI_STATUS scic_sds_stp_packet_request_packet_phase_await_pio_setup_frame_handler(
   SCIC_SDS_REQUEST_T * request,
   U32 frame_index
)
{
   SCI_STATUS status;
   SATA_FIS_HEADER_T * frame_header;
   U32 * frame_buffer;
   SCIC_SDS_STP_REQUEST_T * this_request;

   this_request = (SCIC_SDS_STP_REQUEST_T *)request;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_request),
      SCIC_LOG_OBJECT_STP_IO_REQUEST,
      "scic_sds_stp_packet_request_packet_phase_await_pio_setup_frame_handler(0x%x, 0x%x) enter\n",
      this_request, frame_index
   ));

   status = scic_sds_unsolicited_frame_control_get_header(
      &(this_request->parent.owning_controller->uf_control),
      frame_index,
      (void**) &frame_header
   );

   if (status == SCI_SUCCESS)
   {
      ASSERT(frame_header->fis_type == SATA_FIS_TYPE_PIO_SETUP);



      scic_sds_unsolicited_frame_control_get_buffer(
         &(this_request->parent.owning_controller->uf_control),
         frame_index,
         (void**) &frame_buffer
      );




      this_request->type.packet.device_preferred_cdb_length =
         (U16)((SATA_FIS_PIO_SETUP_T *)(&frame_buffer[-1]))->transfter_count;


      scic_sds_controller_release_frame(
         this_request->parent.owning_controller, frame_index
      );

      sci_base_state_machine_change_state(
         &this_request->parent.started_substate_machine,
         SCIC_SDS_STP_PACKET_REQUEST_STARTED_COMMAND_PHASE_AWAIT_TC_COMPLETION_SUBSTATE
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
