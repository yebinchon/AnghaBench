#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ng_hci_unit_p ;
typedef  TYPE_2__* ng_hci_unit_con_p ;
struct TYPE_8__ {int link_type; int /*<<< orphan*/  con_timo; int /*<<< orphan*/  conq; int /*<<< orphan*/  con_handle; int /*<<< orphan*/  state; TYPE_1__* unit; } ;
struct TYPE_7__ {int /*<<< orphan*/  con_list; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NETGRAPH_HCI ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NG_HCI_CON_CLOSED ; 
 int NG_HCI_LINK_SCO ; 
 TYPE_2__* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

ng_hci_unit_con_p
FUNC6(ng_hci_unit_p unit, int link_type)
{
	ng_hci_unit_con_p	con = NULL;
	int			num_pkts;
	static int		fake_con_handle = 0x0f00;

	con = FUNC4(sizeof(*con), M_NETGRAPH_HCI,
		M_NOWAIT | M_ZERO);
	if (con != NULL) {
		con->unit = unit;
		con->state = NG_HCI_CON_CLOSED;

		/*
		 * XXX
		 *
		 * Assign fake connection handle to the connection descriptor.
		 * Bluetooth specification marks 0x0f00 - 0x0fff connection
		 * handles as reserved. We need this fake connection handles
		 * for timeouts. Connection handle will be passed as argument
		 * to timeout so when timeout happens we can find the right
		 * connection descriptor. We can not pass pointers, because
		 * timeouts are external (to Netgraph) events and there might
		 * be a race when node/hook goes down and timeout event already
		 * went into node's queue
		 */

		con->con_handle = fake_con_handle ++;
		if (fake_con_handle > 0x0fff)
			fake_con_handle = 0x0f00;

		con->link_type = link_type;

		if (con->link_type != NG_HCI_LINK_SCO)
			FUNC2(unit->buffer, num_pkts);
		else
			FUNC3(unit->buffer, num_pkts);

		FUNC1(&con->conq, num_pkts);

		FUNC5(&con->con_timo);

		FUNC0(&unit->con_list, con, next);
	}

	return (con);
}