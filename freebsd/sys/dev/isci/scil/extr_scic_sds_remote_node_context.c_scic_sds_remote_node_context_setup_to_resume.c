
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ destination_state; void* user_cookie; int user_callback; } ;
typedef TYPE_1__ SCIC_SDS_REMOTE_NODE_CONTEXT_T ;
typedef int SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK ;


 scalar_t__ SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_FINAL ;
 scalar_t__ SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_READY ;

__attribute__((used)) static
void scic_sds_remote_node_context_setup_to_resume(
   SCIC_SDS_REMOTE_NODE_CONTEXT_T * this_rnc,
   SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK the_callback,
   void * callback_parameter
)
{
   if (this_rnc->destination_state != SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_FINAL)
   {
      this_rnc->destination_state = SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_READY;
      this_rnc->user_callback = the_callback;
      this_rnc->user_cookie = callback_parameter;
   }
}
