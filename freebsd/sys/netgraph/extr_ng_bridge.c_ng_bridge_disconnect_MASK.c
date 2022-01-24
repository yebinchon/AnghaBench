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
typedef  int /*<<< orphan*/  link_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_4__ {int /*<<< orphan*/  persistent; int /*<<< orphan*/  numLinks; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH_BRIDGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(hook_p hook)
{
	const priv_p priv = FUNC4(FUNC0(hook));
	link_p link = FUNC1(hook);

	/* Remove all hosts associated with this link */
	FUNC6(priv, link);

	/* Free associated link information */
	FUNC5(link, M_NETGRAPH_BRIDGE);
	priv->numLinks--;

	/* If no more hooks, go away */
	if ((FUNC3(FUNC0(hook)) == 0)
	    && (FUNC2(FUNC0(hook)))
	    && !priv->persistent) {
		FUNC7(FUNC0(hook));
	}
	return (0);
}