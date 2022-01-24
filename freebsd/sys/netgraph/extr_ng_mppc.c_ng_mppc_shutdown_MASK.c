#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_8__ {TYPE_3__* const history; } ;
struct TYPE_7__ {TYPE_3__* const history; } ;
struct TYPE_9__ {TYPE_2__ recv; TYPE_1__ xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH_MPPC ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__* const,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__* const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(node_p node)
{
	const priv_p priv = FUNC0(node);

	/* Take down netgraph node */
#ifdef NETGRAPH_MPPC_COMPRESSION
	if (priv->xmit.history != NULL)
		free(priv->xmit.history, M_NETGRAPH_MPPC);
	if (priv->recv.history != NULL)
		free(priv->recv.history, M_NETGRAPH_MPPC);
#endif
	FUNC3(priv, sizeof(*priv));
	FUNC4(priv, M_NETGRAPH_MPPC);
	FUNC1(node, NULL);
	FUNC2(node);		/* let the node escape */
	return (0);
}