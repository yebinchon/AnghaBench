#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_3__* ocs; int /*<<< orphan*/  gidpt_delay_timer; } ;
typedef  TYPE_1__ ocs_node_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_5__ {int /*<<< orphan*/  xport; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_EVT_GIDPT_DELAY_EXPIRED ; 
 int /*<<< orphan*/  OCS_XPORT_POST_NODE_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	ocs_node_t *node = arg;
	int32_t rc;

	FUNC0(&node->gidpt_delay_timer);
	rc = FUNC2(node->ocs->xport, OCS_XPORT_POST_NODE_EVENT, node, OCS_EVT_GIDPT_DELAY_EXPIRED, NULL);
	if (rc) {
		FUNC1(node->ocs, "ocs_xport_control(OCS_XPORT_POST_NODE_EVENT) failed: %d\n", rc);
	}
}