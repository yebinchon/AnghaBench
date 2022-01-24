#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct priv {int /*<<< orphan*/  sscf; scalar_t__ enabled; int /*<<< orphan*/ * lower; int /*<<< orphan*/ * upper; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/ * hook_p ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct priv* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SSCFU_RELEASED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(hook_p hook)
{
	node_p node = FUNC0(hook);
	struct priv *priv = FUNC3(node);

	if (hook == priv->upper)
		priv->upper = NULL;
	else if (hook == priv->lower)
		priv->lower = NULL;
	else {
		FUNC4(LOG_ERR, "bogus hook");
		return (EINVAL);
	}

	if (FUNC2(node) == 0) {
		if (FUNC1(node))
			FUNC5(node);
	} else {
		/*
		 * Because there are no timeouts reset the protocol
		 * if the lower layer is disconnected.
		 */
		if (priv->lower == NULL &&
		    priv->enabled &&
		    FUNC6(priv->sscf) != SSCFU_RELEASED)
			FUNC7(priv->sscf);
	}
	return (0);
}