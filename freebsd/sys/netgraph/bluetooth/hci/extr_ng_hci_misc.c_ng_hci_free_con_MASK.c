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
typedef  TYPE_2__* ng_hci_unit_con_p ;
struct TYPE_8__ {scalar_t__ link_type; int /*<<< orphan*/  conq; int /*<<< orphan*/  pending; TYPE_1__* unit; } ;
struct TYPE_7__ {int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NETGRAPH_HCI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NG_HCI_LINK_SCO ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 

void
FUNC6(ng_hci_unit_con_p con)
{ 
	FUNC0(con, next);

	/*
	 * If we have pending packets then assume that Host Controller has 
	 * flushed these packets and we can free them too
	 */

	if (con->link_type != NG_HCI_LINK_SCO)
		FUNC2(con->unit->buffer, con->pending);
	else
		FUNC3(con->unit->buffer, con->pending);

	FUNC1(&con->conq);

	FUNC4(con, sizeof(*con));
	FUNC5(con, M_NETGRAPH_HCI);
}