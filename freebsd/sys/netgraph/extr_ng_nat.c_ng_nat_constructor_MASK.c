#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_4__ {int nextid; int /*<<< orphan*/  node; int /*<<< orphan*/  redirhead; int /*<<< orphan*/  dlt; scalar_t__ rdrcount; int /*<<< orphan*/  lib; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLT_RAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NETGRAPH ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  PKT_ALIAS_SAME_PORTS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(node_p node)
{
	priv_p priv;

	/* Initialize private descriptor. */
	priv = FUNC5(sizeof(*priv), M_NETGRAPH, M_WAITOK | M_ZERO);

	/* Init aliasing engine. */
	priv->lib = FUNC0(NULL);

	/* Set same ports on. */
	(void )FUNC1(priv->lib, PKT_ALIAS_SAME_PORTS,
	    PKT_ALIAS_SAME_PORTS);

	/* Init redirects housekeeping. */
	priv->rdrcount = 0;
	priv->nextid = 1;
	priv->dlt = DLT_RAW;
	FUNC4(&priv->redirhead);

	/* Link structs together. */
	FUNC3(node, priv);
	priv->node = node;

	/*
	 * libalias is not thread safe, so our node
	 * must be single threaded.
	 */
	FUNC2(node);

	return (0);
}