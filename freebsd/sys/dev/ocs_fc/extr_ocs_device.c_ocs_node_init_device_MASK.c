#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  fc_id; } ;
struct TYPE_8__ {int send_plogi; int /*<<< orphan*/  nodedb_state; TYPE_2__ rnode; TYPE_1__* ocs; } ;
typedef  TYPE_3__ ocs_node_t ;
struct TYPE_6__ {int nodedb_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int OCS_NODEDB_PAUSE_NEW_NODES ; 
 int /*<<< orphan*/  __ocs_d_init ; 
 int /*<<< orphan*/  __ocs_node_paused ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(ocs_node_t *node, int send_plogi)
{
	node->send_plogi = send_plogi;
	if ((node->ocs->nodedb_mask & OCS_NODEDB_PAUSE_NEW_NODES) && !FUNC0(node->rnode.fc_id)) {
		node->nodedb_state = __ocs_d_init;
		FUNC1(node, __ocs_node_paused, NULL);
	} else {
		FUNC1(node, __ocs_d_init, NULL);
	}
}