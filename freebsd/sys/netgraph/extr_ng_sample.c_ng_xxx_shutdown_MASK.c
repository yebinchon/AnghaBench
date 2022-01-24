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
typedef  TYPE_1__* xxx_p ;
typedef  TYPE_2__* node_p ;
struct TYPE_11__ {int nd_flags; } ;
struct TYPE_10__ {TYPE_2__* node; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH ; 
 int NGF_REALLY_DIE ; 
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__* const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(node_p node)
{
	const xxx_p privdata = FUNC0(node);

#ifndef PERSISTANT_NODE
	FUNC2(node, NULL);
	FUNC3(node);
	FUNC4(privdata, M_NETGRAPH);
#else
	if (node->nd_flags & NGF_REALLY_DIE) {
		/*
		 * WE came here because the widget card is being unloaded,
		 * so stop being persistent.
		 * Actually undo all the things we did on creation.
		 */
		NG_NODE_SET_PRIVATE(node, NULL);
		NG_NODE_UNREF(privdata->node);
		free(privdata, M_NETGRAPH);
		return (0);
	}
	NG_NODE_REVIVE(node);		/* tell ng_rmnode() we will persist */
#endif /* PERSISTANT_NODE */
	return (0);
}