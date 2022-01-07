
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCIC_SDS_REQUEST_T ;


 int SCI_FAILURE_IO_RESPONSE_VALID ;
 scalar_t__ SCI_SUCCESS ;
 int SCU_TASK_DONE_CHECK_RESPONSE ;
 int scic_sds_stp_request_udma_complete_request (int *,int ,int ) ;
 scalar_t__ scic_sds_stp_request_udma_general_frame_handler (int *,int ) ;

__attribute__((used)) static
SCI_STATUS scic_sds_stp_request_udma_await_d2h_reg_fis_frame_handler(
   SCIC_SDS_REQUEST_T * this_request,
   U32 frame_index
)
{
   SCI_STATUS status;


   status = scic_sds_stp_request_udma_general_frame_handler(this_request, frame_index);

   if (status == SCI_SUCCESS)
   {
      scic_sds_stp_request_udma_complete_request(
         this_request,
         SCU_TASK_DONE_CHECK_RESPONSE,
         SCI_FAILURE_IO_RESPONSE_VALID
      );
   }

   return status;
}
