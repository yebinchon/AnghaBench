
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_BASE_OBJECT_T ;
typedef int SCIC_SDS_REMOTE_NODE_CONTEXT_T ;


 int SCIC_SDS_REMOTE_NODE_CONTEXT_INVALIDATING_STATE ;
 int SET_STATE_HANDLER (int *,int ,int ) ;
 int scic_sds_remote_node_context_invalidate_context_buffer (int *) ;
 int scic_sds_remote_node_context_state_handler_table ;

__attribute__((used)) static
void scic_sds_remote_node_context_invalidating_state_enter(
   SCI_BASE_OBJECT_T * object
)
{
   SCIC_SDS_REMOTE_NODE_CONTEXT_T * rnc;
   rnc = (SCIC_SDS_REMOTE_NODE_CONTEXT_T *)object;

   SET_STATE_HANDLER(
      rnc,
      scic_sds_remote_node_context_state_handler_table,
      SCIC_SDS_REMOTE_NODE_CONTEXT_INVALIDATING_STATE
         );

   scic_sds_remote_node_context_invalidate_context_buffer(rnc);
}
