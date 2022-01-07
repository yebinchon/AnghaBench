
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state_machine; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_REMOTE_NODE_CONTEXT_T ;
typedef int SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK ;


 int SCIC_SDS_REMOTE_NODE_CONTEXT_INVALIDATING_STATE ;
 int SCI_SUCCESS ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_sds_remote_node_context_setup_to_destory (TYPE_1__*,int ,void*) ;

__attribute__((used)) static
SCI_STATUS scic_sds_remote_node_context_general_destruct_handler(
   SCIC_SDS_REMOTE_NODE_CONTEXT_T * this_rnc,
   SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK the_callback,
   void * callback_parameter
)
{
   scic_sds_remote_node_context_setup_to_destory(
      this_rnc, the_callback, callback_parameter
         );

   sci_base_state_machine_change_state(
      &this_rnc->state_machine,
      SCIC_SDS_REMOTE_NODE_CONTEXT_INVALIDATING_STATE
         );

   return SCI_SUCCESS;
}
