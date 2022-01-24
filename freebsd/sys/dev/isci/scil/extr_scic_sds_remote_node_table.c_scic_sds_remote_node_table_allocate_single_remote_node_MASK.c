#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int U8 ;
typedef  int U32 ;
typedef  scalar_t__ U16 ;
typedef  int /*<<< orphan*/  SCIC_REMOTE_NODE_TABLE_T ;

/* Variables and functions */
 scalar_t__ SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX ; 
 int SCIC_SDS_REMOTE_NODE_TABLE_INVALID_INDEX ; 
 int SCU_STP_REMOTE_NODE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static
U16 FUNC5(
   SCIC_REMOTE_NODE_TABLE_T * remote_node_table,
   U32                        group_table_index
)
{
   U8  index;
   U8  group_value;
   U32 group_index;
   U16 remote_node_index = SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX;

   group_index = FUNC2(
                                             remote_node_table, group_table_index);

   // We could not find an available slot in the table selector 0
   if (group_index != SCIC_SDS_REMOTE_NODE_TABLE_INVALID_INDEX)
   {
      group_value = FUNC3(
                                    remote_node_table, group_index);

      for (index = 0; index < SCU_STP_REMOTE_NODE_COUNT; index++)
      {
         if (((1 << index) & group_value) != 0)
         {
            // We have selected a bit now clear it
            remote_node_index = (U16) (group_index * SCU_STP_REMOTE_NODE_COUNT
                                       + index);

            FUNC0(
               remote_node_table, group_table_index, group_index
            );

            FUNC1(
               remote_node_table, remote_node_index
            );

            if (group_table_index > 0)
            {
               FUNC4(
                  remote_node_table, group_table_index - 1, group_index
               );
            }

            break;
         }
      }
   }

   return remote_node_index;
}