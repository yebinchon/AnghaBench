
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_2__ {int parent; int d2h_reg_fis; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_STP_REQUEST_T ;
typedef int SCIC_SDS_REQUEST_T ;


 scalar_t__ SCI_SUCCESS ;
 int SCU_TASK_DONE_CHECK_RESPONSE ;
 int SCU_TASK_DONE_GOOD ;
 int scic_sds_request_set_status (int *,int ,scalar_t__) ;
 scalar_t__ scic_sds_stp_packet_request_command_phase_common_frame_handler (int *,int ) ;
 scalar_t__ scic_sds_stp_packet_request_process_status_fis (int *,int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_stp_packet_request_command_phase_await_tc_completion_frame_handler(
   SCIC_SDS_REQUEST_T * request,
   U32 frame_index
)
{
   SCIC_SDS_STP_REQUEST_T * this_request = (SCIC_SDS_STP_REQUEST_T *)request;

   SCI_STATUS status =
      scic_sds_stp_packet_request_command_phase_common_frame_handler(
         request, frame_index);

   if (status == SCI_SUCCESS)
   {

      status = scic_sds_stp_packet_request_process_status_fis(
         request, &this_request->d2h_reg_fis);

      if (status != SCI_SUCCESS)
      {
         scic_sds_request_set_status(
            &this_request->parent,
            SCU_TASK_DONE_CHECK_RESPONSE,
            status
         );
      }
      else
         scic_sds_request_set_status(
            &this_request->parent, SCU_TASK_DONE_GOOD, SCI_SUCCESS
         );
   }

   return status;
}
