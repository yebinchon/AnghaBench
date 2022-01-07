
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;
typedef int U16 ;
typedef int SCIC_REMOTE_NODE_TABLE_T ;


 int ASSERT (int) ;
 int SCIC_SDS_REMOTE_NODE_TABLE_FULL_SLOT_VALUE ;
 int SCU_STP_REMOTE_NODE_COUNT ;
 int scic_sds_remote_node_table_clear_group_index (int *,int,int) ;
 int scic_sds_remote_node_table_get_group_value (int *,int) ;
 int scic_sds_remote_node_table_set_group_index (int *,int,int) ;
 int scic_sds_remote_node_table_set_node_index (int *,int) ;

__attribute__((used)) static
void scic_sds_remote_node_table_release_single_remote_node(
   SCIC_REMOTE_NODE_TABLE_T * remote_node_table,
   U16 remote_node_index
)
{
   U32 group_index;
   U8 group_value;

   group_index = remote_node_index / SCU_STP_REMOTE_NODE_COUNT;

   group_value = scic_sds_remote_node_table_get_group_value(remote_node_table, group_index);



   ASSERT(group_value != SCIC_SDS_REMOTE_NODE_TABLE_FULL_SLOT_VALUE);

   if (group_value == 0x00)
   {


      scic_sds_remote_node_table_set_group_index(remote_node_table, 0, group_index);
   }
   else if ((group_value & (group_value -1)) == 0)
   {


      scic_sds_remote_node_table_clear_group_index(remote_node_table, 0, group_index);
      scic_sds_remote_node_table_set_group_index(remote_node_table, 1, group_index);
   }
   else
   {


      scic_sds_remote_node_table_clear_group_index(remote_node_table, 1, group_index);
      scic_sds_remote_node_table_set_group_index(remote_node_table, 2, group_index);
   }

   scic_sds_remote_node_table_set_node_index(remote_node_table, remote_node_index);
}
