
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ U32 ;
struct TYPE_3__ {int state_machine; int device; scalar_t__ suspension_code; void* user_cookie; int user_callback; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_REMOTE_NODE_CONTEXT_T ;
typedef int SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK ;


 int SCIC_SDS_REMOTE_NODE_CONTEXT_AWAIT_SUSPENSION_STATE ;
 scalar_t__ SCI_SOFTWARE_SUSPENSION ;
 int SCI_SUCCESS ;
 int SCU_CONTEXT_COMMAND_POST_RNC_SUSPEND_TX ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_sds_remote_device_post_request (int ,int ) ;

__attribute__((used)) static
SCI_STATUS scic_sds_remote_node_context_ready_state_suspend_handler(
   SCIC_SDS_REMOTE_NODE_CONTEXT_T * this_rnc,
   U32 suspend_type,
   SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK the_callback,
   void * callback_parameter
)
{
   this_rnc->user_callback = the_callback;
   this_rnc->user_cookie = callback_parameter;
   this_rnc->suspension_code = suspend_type;

   if (suspend_type == SCI_SOFTWARE_SUSPENSION)
   {
      scic_sds_remote_device_post_request(
         this_rnc->device,
         SCU_CONTEXT_COMMAND_POST_RNC_SUSPEND_TX
            );
   }

   sci_base_state_machine_change_state(
      &this_rnc->state_machine,
      SCIC_SDS_REMOTE_NODE_CONTEXT_AWAIT_SUSPENSION_STATE
         );

   return SCI_SUCCESS;
}
