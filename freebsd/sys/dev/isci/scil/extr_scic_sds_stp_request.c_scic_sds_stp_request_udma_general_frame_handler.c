
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_10__ {int uf_control; } ;
struct TYPE_9__ {scalar_t__ fis_type; } ;
struct TYPE_8__ {TYPE_5__* owning_controller; } ;
struct TYPE_7__ {int d2h_reg_fis; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_STP_REQUEST_T ;
typedef TYPE_2__ SCIC_SDS_REQUEST_T ;
typedef TYPE_3__ SATA_FIS_HEADER_T ;


 scalar_t__ SATA_FIS_TYPE_REGD2H ;
 int SCIC_LOG_OBJECT_STP_IO_REQUEST ;
 int SCIC_LOG_TRACE (int ) ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int scic_sds_controller_copy_sata_response (int *,int *,int *) ;
 int scic_sds_controller_release_frame (TYPE_5__*,int ) ;
 int scic_sds_unsolicited_frame_control_get_buffer (int *,int ,void**) ;
 scalar_t__ scic_sds_unsolicited_frame_control_get_header (int *,int ,void**) ;

__attribute__((used)) static
SCI_STATUS scic_sds_stp_request_udma_general_frame_handler(
   SCIC_SDS_REQUEST_T * this_request,
   U32 frame_index
)
{
   SCI_STATUS status;
   SATA_FIS_HEADER_T * frame_header;
   U32 * frame_buffer;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_request),
      SCIC_LOG_OBJECT_STP_IO_REQUEST,
      "scic_sds_stp_pio_request_data_in_await_frame_frame_handler(0x%x, 0x%x) enter\n",
      this_request, frame_index
   ));

   status = scic_sds_unsolicited_frame_control_get_header(
      &this_request->owning_controller->uf_control,
      frame_index,
      (void**) &frame_header
   );

   if (
         (status == SCI_SUCCESS)
      && (frame_header->fis_type == SATA_FIS_TYPE_REGD2H)
      )
   {
      scic_sds_unsolicited_frame_control_get_buffer(
         &this_request->owning_controller->uf_control,
         frame_index,
         (void**) &frame_buffer
      );

      scic_sds_controller_copy_sata_response(
         &((SCIC_SDS_STP_REQUEST_T *)this_request)->d2h_reg_fis,
         (U32 *)frame_header,
         frame_buffer
      );
   }

   scic_sds_controller_release_frame(
      this_request->owning_controller, frame_index);

   return status;
}
