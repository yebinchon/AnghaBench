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
typedef  TYPE_1__* priv_p ;
typedef  TYPE_2__* node_p ;
struct TYPE_11__ {int nd_flags; } ;
struct TYPE_10__ {scalar_t__ promisc; int /*<<< orphan*/  ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH ; 
 int NGF_REALLY_DIE ; 
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(node_p node)
{
	const priv_p priv = FUNC0(node);

	if (node->nd_flags & NGF_REALLY_DIE) {
		/*
		 * WE came here because the ethernet card is being unloaded,
		 * so stop being persistent.
		 * Actually undo all the things we did on creation.
		 * Assume the ifp has already been freed.
		 */
		FUNC2(node, NULL);
		FUNC4(priv, M_NETGRAPH);		
		FUNC3(node);	/* free node itself */
		return (0);
	}
	if (priv->promisc) {		/* disable promiscuous mode */
		(void)FUNC5(priv->ifp, 0);
		priv->promisc = 0;
	}
	FUNC1(node);		/* Signal ng_rmnode we are persisant */

	return (0);
}