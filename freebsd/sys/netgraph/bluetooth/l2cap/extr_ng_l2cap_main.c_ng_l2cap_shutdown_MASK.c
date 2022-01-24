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
typedef  TYPE_1__* ng_l2cap_p ;
struct TYPE_5__ {int /*<<< orphan*/ * node; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH_L2CAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(node_p node)
{
	ng_l2cap_p	l2cap = (ng_l2cap_p) FUNC0(node);

	FUNC1(node, NULL);
	FUNC2(node);

	/* Clean up L2CAP node. Delete all connection, channels and commands */
	l2cap->node = NULL;
	FUNC5(l2cap);

	FUNC3(l2cap, sizeof(*l2cap));
	FUNC4(l2cap, M_NETGRAPH_L2CAP);

	return (0);
}