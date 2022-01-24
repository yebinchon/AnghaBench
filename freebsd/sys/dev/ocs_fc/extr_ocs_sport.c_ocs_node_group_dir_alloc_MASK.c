#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/  display_name; int /*<<< orphan*/  ocs; int /*<<< orphan*/  node_group_lock; int /*<<< orphan*/  node_group_dir_list; int /*<<< orphan*/  node_group_dir_next_instance; } ;
typedef  TYPE_1__ ocs_sport_t ;
struct TYPE_8__ {scalar_t__ instance_index; scalar_t__ next_idx; scalar_t__ node_group_list_count; int /*<<< orphan*/  node_group_list; int /*<<< orphan*/  service_params; TYPE_1__* sport; } ;
typedef  TYPE_2__ ocs_node_group_dir_t ;

/* Variables and functions */
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int /*<<< orphan*/  OCS_SERVICE_PARMS_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ocs_remote_node_group_t ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sparms_cmp_mask ; 

ocs_node_group_dir_t *
FUNC7(ocs_sport_t *sport, uint8_t *sparms)
{
	ocs_node_group_dir_t *node_group_dir;

	node_group_dir = FUNC5(sport->ocs, sizeof(*node_group_dir), OCS_M_ZERO | OCS_M_NOWAIT);
	if (node_group_dir != NULL) {
		node_group_dir->sport = sport;

		FUNC3(&sport->node_group_lock);
			node_group_dir->instance_index = sport->node_group_dir_next_instance++;
			FUNC0(node_group_dir->service_params, sparms, (uint8_t*)&sparms_cmp_mask, OCS_SERVICE_PARMS_LENGTH);
			FUNC2(&node_group_dir->node_group_list, ocs_remote_node_group_t, link);

			node_group_dir->node_group_list_count = 0;
			node_group_dir->next_idx = 0;
			FUNC1(&sport->node_group_dir_list, node_group_dir);
		FUNC6(&sport->node_group_lock);

		FUNC4(sport->ocs, "[%s] [%d] allocating node group directory\n", sport->display_name,
			node_group_dir->instance_index);
	}
	return node_group_dir;
}