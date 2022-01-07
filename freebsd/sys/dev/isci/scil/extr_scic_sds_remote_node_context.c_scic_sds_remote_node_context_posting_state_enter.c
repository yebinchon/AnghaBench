
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_BASE_OBJECT_T ;
typedef int SCIC_SDS_REMOTE_NODE_CONTEXT_T ;


 int SCIC_SDS_REMOTE_NODE_CONTEXT_POSTING_STATE ;
 int SET_STATE_HANDLER (int *,int ,int ) ;
 int scic_sds_remote_node_context_state_handler_table ;
 int scic_sds_remote_node_context_validate_context_buffer (int *) ;

__attribute__((used)) static
void scic_sds_remote_node_context_posting_state_enter(
   SCI_BASE_OBJECT_T * object
)
{
   SCIC_SDS_REMOTE_NODE_CONTEXT_T * this_rnc;
   this_rnc = (SCIC_SDS_REMOTE_NODE_CONTEXT_T *)object;

   SET_STATE_HANDLER(
      this_rnc,
      scic_sds_remote_node_context_state_handler_table,
      SCIC_SDS_REMOTE_NODE_CONTEXT_POSTING_STATE
         );

   scic_sds_remote_node_context_validate_context_buffer(this_rnc);
}
