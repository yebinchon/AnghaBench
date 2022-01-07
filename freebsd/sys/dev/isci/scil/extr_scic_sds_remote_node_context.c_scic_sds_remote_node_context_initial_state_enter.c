
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ previous_state_id; } ;
struct TYPE_7__ {int destination_state; TYPE_1__ state_machine; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_2__ SCIC_SDS_REMOTE_NODE_CONTEXT_T ;


 int SCIC_SDS_REMOTE_NODE_CONTEXT_INITIAL_STATE ;
 scalar_t__ SCIC_SDS_REMOTE_NODE_CONTEXT_INVALIDATING_STATE ;
 int SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_UNSPECIFIED ;
 int SET_STATE_HANDLER (TYPE_2__*,int ,int ) ;
 int scic_sds_remote_node_context_deinitialize_state_logging (TYPE_2__*) ;
 int scic_sds_remote_node_context_notify_user (TYPE_2__*) ;
 int scic_sds_remote_node_context_state_handler_table ;

__attribute__((used)) static
void scic_sds_remote_node_context_initial_state_enter(
   SCI_BASE_OBJECT_T * object
)
{
   SCIC_SDS_REMOTE_NODE_CONTEXT_T * rnc;
   rnc = (SCIC_SDS_REMOTE_NODE_CONTEXT_T *)object;

   SET_STATE_HANDLER(
      rnc,
      scic_sds_remote_node_context_state_handler_table,
      SCIC_SDS_REMOTE_NODE_CONTEXT_INITIAL_STATE
         );



   if (
      rnc->state_machine.previous_state_id
         == SCIC_SDS_REMOTE_NODE_CONTEXT_INVALIDATING_STATE
         )
   {
      rnc->destination_state = SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_UNSPECIFIED;

      scic_sds_remote_node_context_notify_user(rnc);




      scic_sds_remote_node_context_deinitialize_state_logging(rnc);
   }
}
