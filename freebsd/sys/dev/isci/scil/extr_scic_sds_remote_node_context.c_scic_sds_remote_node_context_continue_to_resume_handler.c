
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ destination_state; void* user_cookie; int user_callback; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_REMOTE_NODE_CONTEXT_T ;
typedef int SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK ;


 scalar_t__ SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_READY ;
 int SCI_FAILURE_INVALID_STATE ;
 int SCI_SUCCESS ;

__attribute__((used)) static
SCI_STATUS scic_sds_remote_node_context_continue_to_resume_handler(
   SCIC_SDS_REMOTE_NODE_CONTEXT_T * this_rnc,
   SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK the_callback,
   void * callback_parameter
)
{
   if (this_rnc->destination_state == SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_READY)
   {
      this_rnc->user_callback = the_callback;
      this_rnc->user_cookie = callback_parameter;

      return SCI_SUCCESS;
   }

   return SCI_FAILURE_INVALID_STATE;
}
