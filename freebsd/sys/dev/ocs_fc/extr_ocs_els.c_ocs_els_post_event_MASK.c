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
typedef  int /*<<< orphan*/  ocs_node_t ;
struct TYPE_4__ {scalar_t__ els_evtdepth; scalar_t__ els_req_free; int /*<<< orphan*/  els_sm; int /*<<< orphan*/ * node; } ;
typedef  TYPE_1__ ocs_io_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 

void
FUNC4(ocs_io_t *els, ocs_sm_event_t evt, void *data)
{
	/* protect ELS events with node lock */
	ocs_node_t *node = els->node;
	FUNC1(node);
		els->els_evtdepth ++;
		FUNC3(&els->els_sm, evt, data);
		els->els_evtdepth --;
	FUNC2(node);
	if (els->els_evtdepth == 0 && els->els_req_free) {
		FUNC0(els);
	}
}