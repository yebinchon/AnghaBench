#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  priv_p ;
typedef  TYPE_1__* node_p ;
struct TYPE_7__ {int nd_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH ; 
 int NGF_REALLY_DIE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(node_p node)
{
	const priv_p priv = FUNC0(node);

	if (node->nd_flags & NGF_REALLY_DIE) {
		/*
		 * WE came here because the gif interface is being destroyed,
		 * so stop being persistent.
		 * Actually undo all the things we did on creation.
		 * Assume the ifp has already been freed.
		 */
		FUNC2(node, NULL);
		FUNC4(priv, M_NETGRAPH);		
		FUNC3(node);	/* free node itself */
		return (0);
	}
	FUNC1(node);		/* Signal ng_rmnode we are persisant */
	return (0);
}