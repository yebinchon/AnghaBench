
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ U8 ;
struct TYPE_13__ {int parent; TYPE_2__* state_handlers; } ;
struct TYPE_12__ {scalar_t__ sat_protocol; int parent; TYPE_3__* target_device; TYPE_7__* owning_controller; int io_tag; } ;
struct TYPE_11__ {int parent; } ;
struct TYPE_9__ {scalar_t__ (* continue_io_handler ) (int *,int *,int *) ;} ;
struct TYPE_10__ {TYPE_1__ parent; } ;
typedef int SCU_TASK_CONTEXT_T ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_4__ SCIC_SDS_REQUEST_T ;


 scalar_t__ SAT_PROTOCOL_PACKET_NON_DATA ;
 int SCIC_SDS_STP_PACKET_REQUEST_STARTED_COMMAND_PHASE_AWAIT_TC_COMPLETION_SUBSTATE ;
 scalar_t__ SCI_SUCCESS ;
 int SET_STATE_HANDLER (TYPE_4__*,int ,int ) ;
 int * scic_sds_controller_get_task_context_buffer (TYPE_7__*,int ) ;
 int scic_sds_stp_packet_request_started_substate_handler_table ;
 int scu_stp_packet_request_command_phase_construct_task_context (TYPE_4__*,int *) ;
 int scu_stp_packet_request_command_phase_reconstruct_raw_frame_task_context (TYPE_4__*,int *) ;
 scalar_t__ stub1 (int *,int *,int *) ;

__attribute__((used)) static
void scic_sds_stp_packet_request_started_command_phase_await_tc_completion_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_REQUEST_T *this_request = (SCIC_SDS_REQUEST_T *)object;
   U8 sat_packet_protocol = this_request->sat_protocol;

   SCU_TASK_CONTEXT_T *task_context;
   SCI_STATUS status;



   task_context = scic_sds_controller_get_task_context_buffer(
                        this_request->owning_controller, this_request->io_tag);

   if (sat_packet_protocol == SAT_PROTOCOL_PACKET_NON_DATA)
      scu_stp_packet_request_command_phase_reconstruct_raw_frame_task_context(
         this_request, task_context);
   else
      scu_stp_packet_request_command_phase_construct_task_context(
         this_request, task_context);


   status = this_request->owning_controller->state_handlers->parent.continue_io_handler(
      &this_request->owning_controller->parent,
      &this_request->target_device->parent,
      &this_request->parent
   );

   if (status == SCI_SUCCESS)
      SET_STATE_HANDLER(
         this_request,
         scic_sds_stp_packet_request_started_substate_handler_table,
         SCIC_SDS_STP_PACKET_REQUEST_STARTED_COMMAND_PHASE_AWAIT_TC_COMPLETION_SUBSTATE
      );
}
