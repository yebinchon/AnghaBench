#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  active_ios_lock; scalar_t__ els_pend; int /*<<< orphan*/  els_io_pend_list; scalar_t__ els_active; int /*<<< orphan*/  els_io_active_list; int /*<<< orphan*/  io_alloc_enabled; struct TYPE_11__* ocs; struct TYPE_11__* node; } ;
typedef  TYPE_1__ ocs_t ;
typedef  TYPE_1__ ocs_node_t ;
typedef  TYPE_1__ ocs_io_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  OCS_EVT_ALL_CHILD_NODES_FREE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	ocs_io_t *els = (ocs_io_t *)arg;
	ocs_t *ocs;
	ocs_node_t *node;
	int send_empty_event = FALSE;

	FUNC0(els);
	FUNC0(els->node);
	FUNC0(els->node->ocs);
	ocs = els->node->ocs;

	node = els->node;
	ocs = node->ocs;

	FUNC4(&node->active_ios_lock);
		if (els->els_active) {
			/* if active, remove from active list and check empty */
			FUNC3(&node->els_io_active_list, els);
			/* Send list empty event if the IO allocator is disabled, and the list is empty
			 * If node->io_alloc_enabled was not checked, the event would be posted continually
			 */
			send_empty_event = (!node->io_alloc_enabled) && FUNC2(&node->els_io_active_list);
			els->els_active = 0;
		} else if (els->els_pend) {
			/* if pending, remove from pending list; node shutdown isn't
			 * gated off the pending list (only the active list), so no
			 * need to check if pending list is empty
			 */
			FUNC3(&node->els_io_pend_list, els);
			els->els_pend = 0;
		} else {
			FUNC5(ocs, "assertion failed: niether els->els_pend nor els->active set\n");
			FUNC8(&node->active_ios_lock);
			return;
		}

	FUNC8(&node->active_ios_lock);

	FUNC1(ocs, els);

	if (send_empty_event) {
		FUNC6(node, OCS_EVT_ALL_CHILD_NODES_FREE, NULL);
	}

	FUNC7(ocs);
}