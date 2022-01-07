
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t U16 ;
struct TYPE_3__ {size_t remote_node_entries; scalar_t__* device_table; int * remote_node_context_table; } ;
typedef int SCU_REMOTE_NODE_CONTEXT_T ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 scalar_t__ SCI_INVALID_HANDLE ;

SCU_REMOTE_NODE_CONTEXT_T *scic_sds_controller_get_remote_node_context_buffer(
   SCIC_SDS_CONTROLLER_T *this_controller,
   U16 node_id
)
{
   if (
           (node_id < this_controller->remote_node_entries)
        && (this_controller->device_table[node_id] != SCI_INVALID_HANDLE)
      )
   {
      return &this_controller->remote_node_context_table[node_id];
   }

   return ((void*)0);
}
