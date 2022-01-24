#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_5__ {scalar_t__ enable; } ;
struct TYPE_6__ {int /*<<< orphan*/  cx; scalar_t__ compress; TYPE_1__ cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH_DEFLATE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(node_p node)
{
	const priv_p priv = FUNC0(node);

	/* Take down netgraph node. */
	if (priv->cfg.enable) {
	    if (priv->compress)
		FUNC3(&priv->cx);
	    else
		FUNC5(&priv->cx);
	}

	FUNC4(priv, M_NETGRAPH_DEFLATE);
	FUNC1(node, NULL);
	FUNC2(node);		/* let the node escape */
	return (0);
}