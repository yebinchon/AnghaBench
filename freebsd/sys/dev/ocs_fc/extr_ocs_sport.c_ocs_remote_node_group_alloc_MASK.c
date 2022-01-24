#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  node_group_lock; struct TYPE_16__* sport; int /*<<< orphan*/  node_group_list_count; int /*<<< orphan*/  node_group_list; int /*<<< orphan*/  display_name; int /*<<< orphan*/  hw; int /*<<< orphan*/  node_group_next_instance; struct TYPE_16__* ocs; } ;
typedef  TYPE_1__ ocs_t ;
typedef  TYPE_1__ ocs_sport_t ;
struct TYPE_17__ {scalar_t__ instance_index; int /*<<< orphan*/  indicator; TYPE_1__* node_group_dir; } ;
typedef  TYPE_3__ ocs_remote_node_group_t ;
typedef  TYPE_1__ ocs_node_group_dir_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;

/* Variables and functions */
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_3__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,scalar_t__) ; 
 TYPE_3__* FUNC7 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

ocs_remote_node_group_t *
FUNC9(ocs_node_group_dir_t *node_group_dir)
{
	ocs_t *ocs;
	ocs_sport_t *sport;
	ocs_remote_node_group_t *node_group;
	ocs_hw_rtn_e hrc;

	FUNC0(node_group_dir, NULL);
	FUNC0(node_group_dir->sport, NULL);
	FUNC0(node_group_dir->sport->ocs, NULL);

	sport = node_group_dir->sport;
	ocs = sport->ocs;


	node_group = FUNC7(ocs, sizeof(*node_group), OCS_M_ZERO | OCS_M_NOWAIT);
	if (node_group != NULL) {

		/* set pointer to node group directory */
		node_group->node_group_dir = node_group_dir;

		FUNC4(&node_group_dir->sport->node_group_lock);
			node_group->instance_index = sport->node_group_next_instance++;
		FUNC8(&node_group_dir->sport->node_group_lock);

		/* invoke HW node group inialization */
		hrc = FUNC2(&ocs->hw, node_group);
		if (hrc != OCS_HW_RTN_SUCCESS) {
			FUNC6(ocs, "ocs_hw_node_group_alloc() failed: %d\n", hrc);
			FUNC1(ocs, node_group, sizeof(*node_group));
			return NULL;
		}

		FUNC5(ocs, "[%s] [%d] indicator x%03x allocating node group\n", sport->display_name,
			node_group->indicator, node_group->instance_index);

			/* add to the node group directory entry node group list */
		FUNC4(&node_group_dir->sport->node_group_lock);
			FUNC3(&node_group_dir->node_group_list, node_group);
			node_group_dir->node_group_list_count ++;
		FUNC8(&node_group_dir->sport->node_group_lock);
	}
	return node_group;
}