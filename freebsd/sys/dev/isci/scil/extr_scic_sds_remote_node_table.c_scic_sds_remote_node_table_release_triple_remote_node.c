
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int U16 ;
typedef int SCIC_REMOTE_NODE_TABLE_T ;


 int SCU_STP_REMOTE_NODE_COUNT ;
 int scic_sds_remote_node_table_set_group (int *,int) ;
 int scic_sds_remote_node_table_set_group_index (int *,int,int) ;

__attribute__((used)) static
void scic_sds_remote_node_table_release_triple_remote_node(
   SCIC_REMOTE_NODE_TABLE_T * remote_node_table,
   U16 remote_node_index
)
{
   U32 group_index;

   group_index = remote_node_index / SCU_STP_REMOTE_NODE_COUNT;

   scic_sds_remote_node_table_set_group_index(
      remote_node_table, 2, group_index
   );

   scic_sds_remote_node_table_set_group(remote_node_table, group_index);
}
