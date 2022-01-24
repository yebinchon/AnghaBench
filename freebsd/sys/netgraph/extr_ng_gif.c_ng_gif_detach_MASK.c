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
struct ifnet {int dummy; } ;
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/ * node_p ;
struct TYPE_3__ {int /*<<< orphan*/ * ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const) ; 

__attribute__((used)) static void
FUNC5(struct ifnet *ifp)
{
	const node_p node = FUNC0(ifp);
	priv_p priv;

	if (node == NULL)		/* no node (why not?), ignore */
		return;
	priv = FUNC2(node);
	FUNC3(node);	/* Force real removal of node */
	/*
	 * We can't assume the ifnet is still around when we run shutdown
	 * So zap it now. XXX We HOPE that anything running at this time
	 * handles it (as it should in the non netgraph case).
	 */
	FUNC1(ifp, NULL);
	priv->ifp = NULL;	/* XXX race if interrupted an output packet */
	FUNC4(node);		/* remove all netgraph parts */
}