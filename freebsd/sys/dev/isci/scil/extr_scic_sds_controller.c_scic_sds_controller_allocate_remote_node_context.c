
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
typedef size_t U16 ;
struct TYPE_3__ {int ** device_table; int available_remote_nodes; } ;
typedef int SCI_STATUS ;
typedef int SCIC_SDS_REMOTE_DEVICE_T ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 size_t SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX ;
 int SCI_FAILURE_INSUFFICIENT_RESOURCES ;
 int SCI_SUCCESS ;
 int scic_sds_remote_device_node_count (int *) ;
 size_t scic_sds_remote_node_table_allocate_remote_node (int *,int ) ;

SCI_STATUS scic_sds_controller_allocate_remote_node_context(
   SCIC_SDS_CONTROLLER_T * this_controller,
   SCIC_SDS_REMOTE_DEVICE_T * the_device,
   U16 * node_id
)
{
   U16 node_index;
   U32 remote_node_count = scic_sds_remote_device_node_count(the_device);

   node_index = scic_sds_remote_node_table_allocate_remote_node(
                  &this_controller->available_remote_nodes, remote_node_count
              );

   if (node_index != SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX)
   {
      this_controller->device_table[node_index] = the_device;

      *node_id = node_index;

      return SCI_SUCCESS;
   }

   return SCI_FAILURE_INSUFFICIENT_RESOURCES;
}
