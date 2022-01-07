
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SCIC_SDS_REQUEST {int dummy; } ;
struct SCIC_SDS_REMOTE_NODE_CONTEXT {int dummy; } ;
typedef int SCI_STATUS ;


 int SCI_SUCCESS ;

__attribute__((used)) static
SCI_STATUS scic_sds_remote_node_context_await_suspension_state_start_task_handler(
   struct SCIC_SDS_REMOTE_NODE_CONTEXT * this_rnc,
   struct SCIC_SDS_REQUEST * the_request
)
{
   return SCI_SUCCESS;
}
