#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ng_hci_unit_p ;
typedef  int /*<<< orphan*/ * hook_p ;
struct TYPE_3__ {int state; int /*<<< orphan*/ * drv; int /*<<< orphan*/ * raw; int /*<<< orphan*/ * sco; int /*<<< orphan*/ * acl; } ;

/* Variables and functions */
 int EINVAL ; 
 int NG_HCI_UNIT_CONNECTED ; 
 int NG_HCI_UNIT_INITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(hook_p hook)
{
	ng_hci_unit_p	 unit = (ng_hci_unit_p) FUNC3(FUNC0(hook));

	if (hook == unit->acl)
		unit->acl = NULL;
	else if (hook == unit->sco)
		unit->sco = NULL;
	else if (hook == unit->raw)
		unit->raw = NULL;
	else if (hook == unit->drv) {
		unit->drv = NULL;

		/* Connection terminated by local host */
		FUNC4(unit, 0x16);
		unit->state &= ~(NG_HCI_UNIT_CONNECTED|NG_HCI_UNIT_INITED);
	} else
		return (EINVAL);

	/* Shutdown when all hooks are disconnected */
	if ((FUNC2(FUNC0(hook)) == 0) &&
	    (FUNC1(FUNC0(hook))))
		FUNC5(FUNC0(hook));

	return (0);
}