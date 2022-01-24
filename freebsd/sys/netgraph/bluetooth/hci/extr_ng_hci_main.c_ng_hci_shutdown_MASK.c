#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  node_p ;
typedef  TYPE_1__* ng_hci_unit_p ;
struct TYPE_5__ {int /*<<< orphan*/  cmdq; int /*<<< orphan*/ * node; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH_HCI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC7(node_p node)
{
	ng_hci_unit_p	unit = (ng_hci_unit_p) FUNC1(node);

	FUNC2(node, NULL);
	FUNC3(node);

	unit->node = NULL;
	FUNC6(unit, 0x16 /* Connection terminated by local host */);

	FUNC0(&unit->cmdq);

	FUNC4(unit, sizeof(*unit));
	FUNC5(unit, M_NETGRAPH_HCI);

	return (0);
}