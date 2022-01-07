
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* user_cookie; int user_callback; int destination_state; } ;
typedef TYPE_1__ SCIC_SDS_REMOTE_NODE_CONTEXT_T ;
typedef int SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK ;


 int SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_FINAL ;

__attribute__((used)) static
void scic_sds_remote_node_context_setup_to_destory(
   SCIC_SDS_REMOTE_NODE_CONTEXT_T * this_rnc,
   SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK the_callback,
   void * callback_parameter
)
{
   this_rnc->destination_state = SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_FINAL;
   this_rnc->user_callback = the_callback;
   this_rnc->user_cookie = callback_parameter;
}
