#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ els_req_cnt; scalar_t__ els_cmpl_cnt; int /*<<< orphan*/  attached; int /*<<< orphan*/  els_io_active_list; } ;
typedef  TYPE_1__ ocs_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  __ocs_node_wait_ios_shutdown ; 
 int /*<<< orphan*/  __ocs_node_wait_node_free ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(ocs_node_t *node)
{
	FUNC1(node, -1);

	/* check to see if ELS requests, completions are quiesced */
	if ((node->els_req_cnt == 0) && (node->els_cmpl_cnt == 0) &&
	    FUNC2(node, &node->els_io_active_list)) {
		if (!node->attached) {
			/* hw node detach already completed, proceed */
			FUNC0(node, "HW node not attached\n");
			FUNC3(node, __ocs_node_wait_ios_shutdown, NULL);
		} else {
			/* hw node detach hasn't completed, transition and wait */
			FUNC0(node, "HW node still attached\n");
			FUNC3(node, __ocs_node_wait_node_free, NULL);
		}
		return 1;
	}
	return 0;
}