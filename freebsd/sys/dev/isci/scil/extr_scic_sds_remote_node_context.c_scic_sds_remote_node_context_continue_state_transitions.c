
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ destination_state; int user_cookie; int user_callback; TYPE_1__* state_handlers; } ;
struct TYPE_5__ {int (* resume_handler ) (TYPE_2__*,int ,int ) ;} ;
typedef TYPE_2__ SCIC_SDS_REMOTE_NODE_CONTEXT_T ;


 scalar_t__ SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_READY ;
 int stub1 (TYPE_2__*,int ,int ) ;

__attribute__((used)) static
void scic_sds_remote_node_context_continue_state_transitions(
   SCIC_SDS_REMOTE_NODE_CONTEXT_T * rnc
)
{
   if (rnc->destination_state == SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_READY)
   {
      rnc->state_handlers->resume_handler(
         rnc, rnc->user_callback, rnc->user_cookie
            );
   }
}
