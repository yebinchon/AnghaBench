
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int U32 ;
typedef void* U16 ;
struct TYPE_5__ {void* group_array_size; void* available_nodes_array_size; int remote_node_groups; int available_remote_nodes; } ;
typedef TYPE_1__ SCIC_REMOTE_NODE_TABLE_T ;


 int SCIC_SDS_REMOTE_NODES_PER_DWORD ;
 int SCU_STP_REMOTE_NODE_COUNT ;
 int memset (int ,int,int) ;
 int scic_sds_remote_node_table_set_group_index (TYPE_1__*,int,int) ;
 int scic_sds_remote_node_table_set_node_index (TYPE_1__*,int) ;

void scic_sds_remote_node_table_initialize(
   SCIC_REMOTE_NODE_TABLE_T * remote_node_table,
   U32 remote_node_entries
)
{
   U32 index;



   memset(
      remote_node_table->available_remote_nodes,
      0x00,
      sizeof(remote_node_table->available_remote_nodes)
   );

   memset(
      remote_node_table->remote_node_groups,
      0x00,
      sizeof(remote_node_table->remote_node_groups)
   );


   remote_node_table->available_nodes_array_size = (U16)
        (remote_node_entries / SCIC_SDS_REMOTE_NODES_PER_DWORD)
      + ((remote_node_entries % SCIC_SDS_REMOTE_NODES_PER_DWORD) != 0);



   for (index = 0; index < remote_node_entries; index++)
   {
      scic_sds_remote_node_table_set_node_index(remote_node_table, index);
   }

   remote_node_table->group_array_size = (U16)
        (remote_node_entries / (SCU_STP_REMOTE_NODE_COUNT * 32))
      + ((remote_node_entries % (SCU_STP_REMOTE_NODE_COUNT * 32)) != 0);

   for (index = 0; index < (remote_node_entries / SCU_STP_REMOTE_NODE_COUNT); index++)
   {


      scic_sds_remote_node_table_set_group_index(remote_node_table, 2, index);
   }


   if ((remote_node_entries % SCU_STP_REMOTE_NODE_COUNT) == 2)
   {
      scic_sds_remote_node_table_set_group_index(remote_node_table, 1, index);
   }
   else if ((remote_node_entries % SCU_STP_REMOTE_NODE_COUNT) == 1)
   {
      scic_sds_remote_node_table_set_group_index(remote_node_table, 0, index);
   }
}
