#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
typedef  size_t U16 ;
struct TYPE_3__ {int /*<<< orphan*/  available_remote_nodes; int /*<<< orphan*/ ** device_table; } ;
typedef  int /*<<< orphan*/  SCIC_SDS_REMOTE_DEVICE_T ;
typedef  TYPE_1__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/ * SCI_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

void FUNC2(
   SCIC_SDS_CONTROLLER_T    * this_controller,
   SCIC_SDS_REMOTE_DEVICE_T * the_device,
   U16                        node_id
)
{
   U32 remote_node_count = FUNC0(the_device);

   if (this_controller->device_table[node_id] == the_device)
   {
      this_controller->device_table[node_id] = SCI_INVALID_HANDLE;

      FUNC1(
         &this_controller->available_remote_nodes, remote_node_count, node_id
      );
   }
}