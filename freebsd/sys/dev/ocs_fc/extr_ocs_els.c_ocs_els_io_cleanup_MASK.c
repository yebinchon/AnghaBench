#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ocs_sm_event_t ;
struct TYPE_4__ {int els_req_free; int /*<<< orphan*/  els_callback_arg; int /*<<< orphan*/  node; int /*<<< orphan*/  (* els_callback ) (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  els_sm; } ;
typedef  TYPE_1__ ocs_io_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

void
FUNC4(ocs_io_t *els, ocs_sm_event_t node_evt, void *arg)
{
	FUNC0(els);

	/* don't want further events that could come; e.g. abort requests
	 * from the node state machine; thus, disable state machine
	 */
	FUNC2(&els->els_sm);
	FUNC1(els->node, node_evt, arg);

	/* If this IO has a callback, invoke it */
	if (els->els_callback) {
		(*els->els_callback)(els->node, arg, els->els_callback_arg);
	}
	els->els_req_free = 1;
}