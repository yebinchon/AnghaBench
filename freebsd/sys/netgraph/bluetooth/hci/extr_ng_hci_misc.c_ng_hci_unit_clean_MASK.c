#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ng_hci_unit_p ;
typedef  TYPE_2__* ng_hci_unit_con_p ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {int state; int /*<<< orphan*/  buffer; int /*<<< orphan*/  con_list; int /*<<< orphan*/  cmdq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int NG_HCI_CON_TIMEOUT_PENDING ; 
 int NG_HCI_UNIT_COMMAND_PENDING ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 

void
FUNC13(ng_hci_unit_p unit, int reason)
{
	int	size;

	/* Drain command queue */
	if (unit->state & NG_HCI_UNIT_COMMAND_PENDING)
		FUNC8(unit);

	FUNC2(&unit->cmdq);
	FUNC5(unit->buffer, 1);

	/* Clean up connection list */
	while (!FUNC0(&unit->con_list)) {
		ng_hci_unit_con_p	con = FUNC1(&unit->con_list);

		/* Remove all timeouts (if any) */
		if (con->flags & NG_HCI_CON_TIMEOUT_PENDING)
			FUNC9(con);

		/*
		 * Notify upper layer protocol and destroy connection 
		 * descriptor. Do not really care about the result.
		 */

		FUNC12(con, reason);
		FUNC11(con);
	}

	FUNC4(unit->buffer, size);
	FUNC3(unit->buffer, size);

	FUNC7(unit->buffer, size);
	FUNC6(unit->buffer, size);

	/* Clean up neighbors list */
	FUNC10(unit);
}