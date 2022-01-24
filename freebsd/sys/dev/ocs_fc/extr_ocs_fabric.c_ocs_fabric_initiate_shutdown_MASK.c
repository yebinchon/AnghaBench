#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  hw; } ;
typedef  TYPE_1__ ocs_t ;
struct TYPE_10__ {scalar_t__ free_group; } ;
struct TYPE_9__ {TYPE_5__ rnode; int /*<<< orphan*/ * node_group; scalar_t__ attached; TYPE_1__* ocs; } ;
typedef  TYPE_2__ ocs_node_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 scalar_t__ OCS_HW_RTN_SUCCESS_SYNC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC5(ocs_node_t *node)
{
	ocs_hw_rtn_e rc;
	ocs_t *ocs = node->ocs;
	FUNC4(node);

	if (node->attached) {
		/* issue hw node free; don't care if succeeds right away
		 * or sometime later, will check node->attached later in
		 * shutdown process
		 */
		rc = FUNC1(&ocs->hw, &node->rnode);
		if (node->rnode.free_group) {
			FUNC3(node->node_group);
			node->node_group = NULL;
			node->rnode.free_group = FALSE;
		}
		if (rc != OCS_HW_RTN_SUCCESS && rc != OCS_HW_RTN_SUCCESS_SYNC) {
			FUNC0(node, "Failed freeing HW node, rc=%d\n", rc);
		}
	}
	/*
	 * node has either been detached or is in the process of being detached,
	 * call common node's initiate cleanup function
	 */
	FUNC2(node);
}