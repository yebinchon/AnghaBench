#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ocs; int /*<<< orphan*/  node_group_lock; int /*<<< orphan*/  node_group_dir_list; int /*<<< orphan*/  display_name; } ;
typedef  TYPE_1__ ocs_sport_t ;
struct TYPE_7__ {int /*<<< orphan*/  node_group_list; int /*<<< orphan*/  instance_index; TYPE_1__* sport; } ;
typedef  TYPE_2__ ocs_node_group_dir_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(ocs_node_group_dir_t *node_group_dir)
{
	ocs_sport_t *sport;
	if (node_group_dir != NULL) {
		sport = node_group_dir->sport;
		FUNC4(sport->ocs, "[%s] [%d] freeing node group directory\n", sport->display_name,
			node_group_dir->instance_index);
		FUNC3(&sport->node_group_lock);
			if (!FUNC1(&node_group_dir->node_group_list)) {
				FUNC5(sport->ocs, "[%s] WARNING: node group list not empty\n", sport->display_name);
			}
			FUNC2(&sport->node_group_dir_list, node_group_dir);
		FUNC6(&sport->node_group_lock);
		FUNC0(sport->ocs, node_group_dir, sizeof(*node_group_dir));
	}
}