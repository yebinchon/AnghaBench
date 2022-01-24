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
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  hookpriv_p ;
typedef  int /*<<< orphan*/ * hook_p ;
struct TYPE_3__ {int /*<<< orphan*/ * lower; int /*<<< orphan*/ * ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NETGRAPH_L2TP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  sessions ; 

__attribute__((used)) static int
FUNC9(hook_p hook)
{
	const node_p node = FUNC1(hook);
	const priv_p priv = FUNC6(node);

	/* Zero out hook pointer */
	if (hook == priv->ctrl)
		priv->ctrl = NULL;
	else if (hook == priv->lower)
		priv->lower = NULL;
	else {
		const hookpriv_p hpriv = FUNC2(hook);
		FUNC0(hpriv, sessions);
		FUNC7(hpriv, M_NETGRAPH_L2TP);
		FUNC3(hook, NULL);
	}

	/* Go away if no longer connected to anything */
	if (FUNC5(node) == 0 && FUNC4(node))
		FUNC8(node);
	return (0);
}