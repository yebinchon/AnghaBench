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
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_5__ {int /*<<< orphan*/  xmtx; int /*<<< orphan*/  rmtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH_PPP ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__* const,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(node_p node)
{
	const priv_p priv = FUNC0(node);

	/* Stop fragment queue timer */
	FUNC7(node);

	/* Take down netgraph node */
	FUNC6(node);
	FUNC5(&priv->rmtx);
	FUNC5(&priv->xmtx);
	FUNC3(priv, sizeof(*priv));
	FUNC4(priv, M_NETGRAPH_PPP);
	FUNC1(node, NULL);
	FUNC2(node);		/* let the node escape */
	return (0);
}