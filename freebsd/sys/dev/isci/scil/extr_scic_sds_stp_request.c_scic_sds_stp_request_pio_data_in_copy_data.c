
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_6__ {scalar_t__ pio_transfer_bytes; int current_transfer_bytes; } ;
struct TYPE_7__ {TYPE_1__ pio; } ;
struct TYPE_8__ {TYPE_2__ type; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_3__ SCIC_SDS_STP_REQUEST_T ;


 scalar_t__ SCI_SUCCESS ;
 scalar_t__ SCU_MAX_FRAME_BUFFER_SIZE ;
 scalar_t__ scic_sds_stp_request_pio_data_in_copy_data_buffer (TYPE_3__*,int *,scalar_t__) ;

__attribute__((used)) static
SCI_STATUS scic_sds_stp_request_pio_data_in_copy_data(
   SCIC_SDS_STP_REQUEST_T * this_request,
   U8 * data_buffer
)
{
   SCI_STATUS status;



   if (this_request->type.pio.pio_transfer_bytes < SCU_MAX_FRAME_BUFFER_SIZE)
   {
      status = scic_sds_stp_request_pio_data_in_copy_data_buffer(
         this_request,data_buffer,this_request->type.pio.pio_transfer_bytes);

      if (status == SCI_SUCCESS)
      {



         this_request->type.pio.current_transfer_bytes += this_request->type.pio.pio_transfer_bytes;
         this_request->type.pio.pio_transfer_bytes = 0;
      }
   }
   else
   {

      status = scic_sds_stp_request_pio_data_in_copy_data_buffer(
         this_request, data_buffer, SCU_MAX_FRAME_BUFFER_SIZE);

      if (status == SCI_SUCCESS)
      {
         this_request->type.pio.pio_transfer_bytes -= SCU_MAX_FRAME_BUFFER_SIZE;
         this_request->type.pio.current_transfer_bytes += SCU_MAX_FRAME_BUFFER_SIZE;
      }
   }

   return status;
}
