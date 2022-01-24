#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct TYPE_10__* ocs; int /*<<< orphan*/  node_group_lock; int /*<<< orphan*/  node_group_list_count; int /*<<< orphan*/  node_group_list; int /*<<< orphan*/  display_name; struct TYPE_10__* sport; } ;
typedef  TYPE_1__ ocs_sport_t ;
struct TYPE_11__ {int /*<<< orphan*/  instance_index; TYPE_1__* node_group_dir; } ;
typedef  TYPE_2__ ocs_remote_node_group_t ;
typedef  TYPE_1__ ocs_node_group_dir_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(ocs_remote_node_group_t *node_group)
{
	ocs_sport_t *sport;
	ocs_node_group_dir_t *node_group_dir;

	if (node_group != NULL) {

		FUNC0(node_group->node_group_dir);
		FUNC0(node_group->node_group_dir->sport);
		FUNC0(node_group->node_group_dir->sport->ocs);

		node_group_dir = node_group->node_group_dir;
		sport = node_group_dir->sport;

		FUNC4(sport->ocs, "[%s] [%d] freeing node group\n", sport->display_name, node_group->instance_index);

		/* Remove from node group directory node group list */
		FUNC3(&sport->node_group_lock);
			FUNC2(&node_group_dir->node_group_list, node_group);
			node_group_dir->node_group_list_count --;
		/* TODO: note that we're going to have the node_group_dir entry persist forever ... we could delete it if
		 * the group_list_count goes to zero (or the linked list is empty */
		FUNC5(&sport->node_group_lock);
		FUNC1(sport->ocs, node_group, sizeof(*node_group));
	}
}