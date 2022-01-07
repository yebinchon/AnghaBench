
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_9__ {int uf_control; } ;
struct TYPE_8__ {scalar_t__ fis_type; } ;
struct TYPE_6__ {TYPE_4__* owning_controller; } ;
struct TYPE_7__ {TYPE_1__ parent; int d2h_reg_fis; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_2__ SCIC_SDS_STP_REQUEST_T ;
typedef int SCIC_SDS_REQUEST_T ;
typedef TYPE_3__ SATA_FIS_HEADER_T ;


 int ASSERT (int) ;
 scalar_t__ SATA_FIS_TYPE_REGD2H ;
 int SCIC_LOG_OBJECT_STP_IO_REQUEST ;
 int SCIC_LOG_TRACE (int ) ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int scic_sds_controller_copy_sata_response (int *,int *,int *) ;
 int scic_sds_controller_release_frame (TYPE_4__*,int ) ;
 int scic_sds_unsolicited_frame_control_get_buffer (int *,int ,void**) ;
 scalar_t__ scic_sds_unsolicited_frame_control_get_header (int *,int ,void**) ;

__attribute__((used)) static
SCI_STATUS scic_sds_stp_packet_request_command_phase_common_frame_handler(
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
      "scic_sds_stp_packet_request_command_phase_await_d2h_frame_handler(0x%x, 0x%x) enter\n",
      this_request, frame_index
   ));

   status = scic_sds_unsolicited_frame_control_get_header(
      &(this_request->parent.owning_controller->uf_control),
      frame_index,
      (void**) &frame_header
   );

   if (status == SCI_SUCCESS)
   {
      ASSERT(frame_header->fis_type == SATA_FIS_TYPE_REGD2H);



      scic_sds_unsolicited_frame_control_get_buffer(
         &(this_request->parent.owning_controller->uf_control),
         frame_index,
         (void**) &frame_buffer
      );

      scic_sds_controller_copy_sata_response(
         &this_request->d2h_reg_fis, (U32 *)frame_header, frame_buffer
      );


      scic_sds_controller_release_frame(
         this_request->parent.owning_controller, frame_index
      );
   }

   return status;
}
