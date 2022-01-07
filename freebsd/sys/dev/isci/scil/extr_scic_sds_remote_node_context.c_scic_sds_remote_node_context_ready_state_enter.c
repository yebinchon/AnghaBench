
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * user_callback; int destination_state; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_REMOTE_NODE_CONTEXT_T ;


 int SCIC_SDS_REMOTE_NODE_CONTEXT_READY_STATE ;
 int SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_UNSPECIFIED ;
 int SET_STATE_HANDLER (TYPE_1__*,int ,int ) ;
 int scic_sds_remote_node_context_notify_user (TYPE_1__*) ;
 int scic_sds_remote_node_context_state_handler_table ;

__attribute__((used)) static
void scic_sds_remote_node_context_ready_state_enter(
   SCI_BASE_OBJECT_T * object
)
{
   SCIC_SDS_REMOTE_NODE_CONTEXT_T * rnc;
   rnc = (SCIC_SDS_REMOTE_NODE_CONTEXT_T *)object;

   SET_STATE_HANDLER(
      rnc,
      scic_sds_remote_node_context_state_handler_table,
      SCIC_SDS_REMOTE_NODE_CONTEXT_READY_STATE
         );

   rnc->destination_state = SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_UNSPECIFIED;

   if (rnc->user_callback != ((void*)0))
   {
      scic_sds_remote_node_context_notify_user(rnc);
   }
}
