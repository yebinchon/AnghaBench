
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_8__ {int state_machine; } ;
struct TYPE_10__ {TYPE_1__ parent; } ;
struct TYPE_9__ {int d2h_reg_fis; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_2__ SCIC_SDS_STP_REQUEST_T ;
typedef TYPE_3__ SCIC_SDS_REQUEST_T ;


 int SCI_BASE_REQUEST_STATE_COMPLETED ;
 scalar_t__ SCI_SUCCESS ;
 int SCU_TASK_DONE_CHECK_RESPONSE ;
 int SCU_TASK_DONE_GOOD ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_sds_request_set_status (TYPE_3__*,int ,scalar_t__) ;
 scalar_t__ scic_sds_stp_packet_request_command_phase_common_frame_handler (TYPE_3__*,int ) ;
 scalar_t__ scic_sds_stp_packet_request_process_status_fis (TYPE_3__*,int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_stp_packet_request_command_phase_await_d2h_fis_frame_handler(
   SCIC_SDS_REQUEST_T * request,
   U32 frame_index
)
{
   SCI_STATUS status =
      scic_sds_stp_packet_request_command_phase_common_frame_handler(
         request, frame_index);

   SCIC_SDS_STP_REQUEST_T * this_request = (SCIC_SDS_STP_REQUEST_T *)request;

   if (status == SCI_SUCCESS)
   {

      status = scic_sds_stp_packet_request_process_status_fis(
         request, &this_request->d2h_reg_fis);

      if (status != SCI_SUCCESS)
      {
         scic_sds_request_set_status(
            request,
            SCU_TASK_DONE_CHECK_RESPONSE,
            status
         );
      }
      else
         scic_sds_request_set_status(
            request, SCU_TASK_DONE_GOOD, SCI_SUCCESS
         );



      sci_base_state_machine_change_state(
         &request->parent.state_machine,
         SCI_BASE_REQUEST_STATE_COMPLETED
      );
   }

   return status;
}
