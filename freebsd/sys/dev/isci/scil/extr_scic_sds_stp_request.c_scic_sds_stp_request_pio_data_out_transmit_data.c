
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ U32 ;
struct TYPE_8__ {scalar_t__ sgl_offset; scalar_t__ sgl_set; TYPE_1__* sgl_pair; } ;
struct TYPE_9__ {scalar_t__ pio_transfer_bytes; TYPE_2__ request_current; } ;
struct TYPE_10__ {TYPE_3__ pio; } ;
struct TYPE_12__ {TYPE_4__ type; } ;
struct TYPE_11__ {scalar_t__ length; int address_lower; } ;
struct TYPE_7__ {TYPE_5__ B; TYPE_5__ A; } ;
typedef TYPE_5__ SCU_SGL_ELEMENT_T ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_6__ SCIC_SDS_STP_REQUEST_T ;
typedef int SCIC_SDS_REQUEST_T ;


 scalar_t__ SCI_SUCCESS ;
 scalar_t__ SCU_SGL_ELEMENT_PAIR_A ;
 scalar_t__ scic_sds_stp_request_pio_data_out_trasmit_data_frame (int *,scalar_t__) ;

__attribute__((used)) static
SCI_STATUS scic_sds_stp_request_pio_data_out_transmit_data(
   SCIC_SDS_REQUEST_T * this_sds_request
)
{

   SCU_SGL_ELEMENT_T * current_sgl;
   U32 sgl_offset;
   U32 remaining_bytes_in_current_sgl = 0;
   SCI_STATUS status = SCI_SUCCESS;

   SCIC_SDS_STP_REQUEST_T * this_sds_stp_request = (SCIC_SDS_STP_REQUEST_T *)this_sds_request;

   sgl_offset = this_sds_stp_request->type.pio.request_current.sgl_offset;

   if (this_sds_stp_request->type.pio.request_current.sgl_set == SCU_SGL_ELEMENT_PAIR_A)
   {
      current_sgl = &(this_sds_stp_request->type.pio.request_current.sgl_pair->A);
      remaining_bytes_in_current_sgl = this_sds_stp_request->type.pio.request_current.sgl_pair->A.length - sgl_offset;
   }
   else
   {
      current_sgl = &(this_sds_stp_request->type.pio.request_current.sgl_pair->B);
      remaining_bytes_in_current_sgl = this_sds_stp_request->type.pio.request_current.sgl_pair->B.length - sgl_offset;
   }


   if (this_sds_stp_request->type.pio.pio_transfer_bytes > 0)
   {
      if (this_sds_stp_request->type.pio.pio_transfer_bytes >= remaining_bytes_in_current_sgl )
      {

         status = scic_sds_stp_request_pio_data_out_trasmit_data_frame (this_sds_request, remaining_bytes_in_current_sgl);
         if (status == SCI_SUCCESS)
         {
            this_sds_stp_request->type.pio.pio_transfer_bytes -= remaining_bytes_in_current_sgl;
            sgl_offset = 0;
         }
      }
      else if (this_sds_stp_request->type.pio.pio_transfer_bytes < remaining_bytes_in_current_sgl )
      {

         scic_sds_stp_request_pio_data_out_trasmit_data_frame (this_sds_request, this_sds_stp_request->type.pio.pio_transfer_bytes);

         if (status == SCI_SUCCESS)
         {

            sgl_offset += this_sds_stp_request->type.pio.pio_transfer_bytes;
            current_sgl->address_lower += this_sds_stp_request->type.pio.pio_transfer_bytes;
            this_sds_stp_request->type.pio.pio_transfer_bytes = 0;
         }
      }
   }

   if (status == SCI_SUCCESS)
   {
      this_sds_stp_request->type.pio.request_current.sgl_offset = sgl_offset;
   }

   return status;
}
