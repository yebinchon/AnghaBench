#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  ng_hci_unit_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_3__ {int typecookie; int /*<<< orphan*/  cmd; } ;
struct TYPE_4__ {TYPE_1__ header; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
#define  NGM_HCI_COOKIE 132 
#define  NGM_HCI_LP_CON_REQ 131 
#define  NGM_HCI_LP_CON_RSP 130 
#define  NGM_HCI_LP_DISCON_REQ 129 
#define  NGM_HCI_LP_QOS_REQ 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(node_p node, item_p item, hook_p lasthook)
{
	ng_hci_unit_p	unit = (ng_hci_unit_p) FUNC1(node);
	int		error = 0;

	switch (FUNC0(item)->header.typecookie) {
	case NGM_HCI_COOKIE:
		switch (FUNC0(item)->header.cmd) {
		case NGM_HCI_LP_CON_REQ:
			error = FUNC3(unit, item, lasthook);
			break;

		case NGM_HCI_LP_DISCON_REQ: /* XXX not defined by specs */
			error = FUNC5(unit, item, lasthook);
			break;

		case NGM_HCI_LP_CON_RSP:
			error = FUNC4(unit, item, lasthook);
			break;

		case NGM_HCI_LP_QOS_REQ:
			error = FUNC6(unit, item, lasthook);
			break;

		default:
			error = FUNC2(node, item, lasthook);
			break;
		}
		break;

	default:
		error = FUNC2(node, item, lasthook);
		break;
	}

	return (error);
}