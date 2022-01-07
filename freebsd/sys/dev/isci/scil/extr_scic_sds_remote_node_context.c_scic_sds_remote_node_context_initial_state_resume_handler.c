
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ previous_state_id; } ;
struct TYPE_7__ {scalar_t__ remote_node_index; TYPE_6__ state_machine; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_REMOTE_NODE_CONTEXT_T ;
typedef int SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK ;


 scalar_t__ SCIC_SDS_REMOTE_NODE_CONTEXT_INVALIDATING_STATE ;
 scalar_t__ SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX ;
 int SCIC_SDS_REMOTE_NODE_CONTEXT_POSTING_STATE ;
 int SCI_FAILURE_INVALID_STATE ;
 int SCI_SUCCESS ;
 int sci_base_state_machine_change_state (TYPE_6__*,int ) ;
 int scic_sds_remote_node_context_construct_buffer (TYPE_1__*) ;
 int scic_sds_remote_node_context_initialize_state_logging (TYPE_1__*) ;
 int scic_sds_remote_node_context_setup_to_resume (TYPE_1__*,int ,void*) ;

__attribute__((used)) static
SCI_STATUS scic_sds_remote_node_context_initial_state_resume_handler(
   SCIC_SDS_REMOTE_NODE_CONTEXT_T * this_rnc,
   SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK the_callback,
   void * callback_parameter
)
{
   if (this_rnc->remote_node_index != SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX)
   {
      scic_sds_remote_node_context_setup_to_resume(
         this_rnc, the_callback, callback_parameter
            );

      scic_sds_remote_node_context_construct_buffer(this_rnc);
      sci_base_state_machine_change_state(
         &this_rnc->state_machine,
         SCIC_SDS_REMOTE_NODE_CONTEXT_POSTING_STATE
            );

      return SCI_SUCCESS;
   }

   return SCI_FAILURE_INVALID_STATE;
}
