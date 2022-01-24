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
typedef  int /*<<< orphan*/  node_p ;
typedef  TYPE_1__* ng_hci_unit_p ;
struct TYPE_4__ {int link_policy_mask; int packet_mask; int role_switch; int /*<<< orphan*/  neighbors; int /*<<< orphan*/  con_list; int /*<<< orphan*/  cmdq; int /*<<< orphan*/  cmd_timo; int /*<<< orphan*/  buffer; int /*<<< orphan*/  debug; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_NETGRAPH_HCI ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  NG_HCI_CMD_QUEUE_LEN ; 
 int /*<<< orphan*/  NG_HCI_WARN_LEVEL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(node_p node)
{
	ng_hci_unit_p	unit = NULL;

	unit = FUNC7(sizeof(*unit), M_NETGRAPH_HCI, M_WAITOK | M_ZERO);

	unit->node = node;
	unit->debug = NG_HCI_WARN_LEVEL;

	unit->link_policy_mask = 0xffff; /* Enable all supported modes */
	unit->packet_mask = 0xffff; /* Enable all packet types */
	unit->role_switch = 1; /* Enable role switch (if device supports it) */

	/*
	 * Set default buffer info
	 *
	 * One HCI command
	 * One ACL packet with max. size of 17 bytes (1 DM1 packet)
	 * One SCO packet with max. size of 10 bytes (1 HV1 packet)
	 */

	FUNC3(unit->buffer, 1);
	FUNC2(unit->buffer, 1, 17, 1);  
	FUNC4(unit->buffer, 1, 10, 1);

	/* Init command queue & command timeout handler */
	FUNC8(&unit->cmd_timo);
	FUNC1(&unit->cmdq, NG_HCI_CMD_QUEUE_LEN);

	/* Init lists */
	FUNC0(&unit->con_list);
	FUNC0(&unit->neighbors);

	/*
	 * This node has to be a WRITER because both data and messages
	 * can change node state. 
	 */

	FUNC5(node);
	FUNC6(node, unit);

	return (0);
}