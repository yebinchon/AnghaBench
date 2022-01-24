#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ocs_sm_event_t ;
struct TYPE_8__ {int evtdepth; scalar_t__ req_free; int /*<<< orphan*/  hold_frames; int /*<<< orphan*/  sm; } ;
typedef  TYPE_1__ ocs_node_t ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 

void
FUNC6(ocs_node_t *node, ocs_sm_event_t evt, void *arg)
{
	int free_node = FALSE;
	FUNC0(node);

	FUNC2(node);
		node->evtdepth ++;

		FUNC5(&node->sm, evt, arg);

		/* If our event call depth is one and we're not holding frames
		 * then we can dispatch any pending frames.   We don't want to allow
		 * the ocs_process_node_pending() call to recurse.
		 */
		if (!node->hold_frames && (node->evtdepth == 1)) {
			FUNC4(node);
		}
		node->evtdepth --;

		/* Free the node object if so requested, and we're at an event
		 * call depth of zero
		 */
		if ((node->evtdepth == 0) && node->req_free) {
			free_node = TRUE;
		}
	FUNC3(node);

	if (free_node) {
		FUNC1(node);
	}

	return;
}