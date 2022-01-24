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
typedef  int U16 ;
typedef  int /*<<< orphan*/  SCIC_REMOTE_NODE_TABLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SCIC_SDS_REMOTE_NODE_TABLE_FULL_SLOT_VALUE ; 
 int SCU_STP_REMOTE_NODE_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static
void FUNC5(
   SCIC_REMOTE_NODE_TABLE_T * remote_node_table,
   U16                        remote_node_index
)
{
   U32 group_index;
   U8  group_value;

   group_index = remote_node_index / SCU_STP_REMOTE_NODE_COUNT;

   group_value = FUNC2(remote_node_table, group_index);

   // Assert that we are not trying to add an entry to a slot that is already
   // full.
   FUNC0(group_value != SCIC_SDS_REMOTE_NODE_TABLE_FULL_SLOT_VALUE);

   if (group_value == 0x00)
   {
      // There are no entries in this slot so it must be added to the single
      // slot table.
      FUNC3(remote_node_table, 0, group_index);
   }
   else if ((group_value & (group_value -1)) == 0)
   {
      // There is only one entry in this slot so it must be moved from the
      // single slot table to the dual slot table
      FUNC1(remote_node_table, 0, group_index);
      FUNC3(remote_node_table, 1, group_index);
   }
   else
   {
      // There are two entries in the slot so it must be moved from the dual
      // slot table to the tripple slot table.
      FUNC1(remote_node_table, 1, group_index);
      FUNC3(remote_node_table, 2, group_index);
   }

   FUNC4(remote_node_table, remote_node_index);
}