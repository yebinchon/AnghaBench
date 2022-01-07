
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int group_array_size; int** remote_node_groups; } ;
typedef TYPE_1__ SCIC_REMOTE_NODE_TABLE_T ;


 int ASSERT (int) ;
 int SCU_STP_REMOTE_NODE_COUNT ;

__attribute__((used)) static
void scic_sds_remote_node_table_set_group_index(
   SCIC_REMOTE_NODE_TABLE_T * remote_node_table,
   U32 group_table_index,
   U32 group_index
)
{
   U32 dword_index;
   U32 bit_index;
   U32 * group_table;

   ASSERT(group_table_index < SCU_STP_REMOTE_NODE_COUNT);
   ASSERT(group_index < (U32)(remote_node_table->group_array_size * 32));

   dword_index = group_index / 32;
   bit_index = group_index % 32;
   group_table = remote_node_table->remote_node_groups[group_table_index];

   group_table[dword_index] = group_table[dword_index] | (1 << bit_index);
}
