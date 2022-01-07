
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_STATUS ;
typedef int SCIC_SDS_REMOTE_NODE_CONTEXT_T ;
typedef int SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK ;


 int SCI_SUCCESS ;
 int scic_sds_remote_node_context_setup_to_destory (int *,int ,void*) ;

__attribute__((used)) static
SCI_STATUS scic_sds_remote_node_context_invalidating_state_destruct_handler(
   SCIC_SDS_REMOTE_NODE_CONTEXT_T * this_rnc,
   SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK the_callback,
   void * callback_parameter
)
{
   scic_sds_remote_node_context_setup_to_destory(
      this_rnc, the_callback, callback_parameter
         );

   return SCI_SUCCESS;
}
