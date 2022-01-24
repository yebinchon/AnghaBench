#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  TYPE_3__* hpriv_p ;
typedef  int /*<<< orphan*/ * hook_p ;
struct TYPE_11__ {int /*<<< orphan*/  mtx; } ;
struct TYPE_9__ {int /*<<< orphan*/ * hook; } ;
struct TYPE_10__ {int /*<<< orphan*/ * lower; TYPE_1__ uppersess; int /*<<< orphan*/ * upper; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NETGRAPH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__* const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  sessions ; 

__attribute__((used)) static int
FUNC10(hook_p hook)
{
	const node_p node = FUNC1(hook);
	const priv_p priv = FUNC5(node);
	const hpriv_p hpriv = FUNC2(hook);

	/* Zero out hook pointer */
	if (hook == priv->upper) {
		priv->upper = NULL;
		priv->uppersess.hook = NULL;
	} else if (hook == priv->lower) {
		priv->lower = NULL;
	} else {
		/* Reset node (stops timers) */
		FUNC8(hpriv);

		FUNC0(hpriv, sessions);
		FUNC7(&hpriv->mtx);
		FUNC6(hpriv, M_NETGRAPH);
	}

	/* Go away if no longer connected to anything */
	if ((FUNC4(node) == 0)
	&& (FUNC3(node)))
		FUNC9(node);
	return (0);
}