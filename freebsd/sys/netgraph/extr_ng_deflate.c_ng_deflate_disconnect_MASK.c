#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_4__ {scalar_t__ enable; } ;
struct TYPE_5__ {TYPE_1__ cfg; int /*<<< orphan*/  cx; scalar_t__ compress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int
FUNC7(hook_p hook)
{
	const node_p node = FUNC0(hook);
	const priv_p priv = FUNC3(node);

	if (priv->cfg.enable) {
	    if (priv->compress)
		FUNC4(&priv->cx);
	    else
		FUNC5(&priv->cx);
	    priv->cfg.enable = 0;
	}

	/* Go away if no longer connected. */
	if ((FUNC2(node) == 0) && FUNC1(node))
		FUNC6(node);
	return (0);
}