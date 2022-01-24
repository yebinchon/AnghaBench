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
struct priv {int /*<<< orphan*/  sscop; scalar_t__ enabled; int /*<<< orphan*/ * lower; int /*<<< orphan*/ * upper; int /*<<< orphan*/ * manage; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/ * hook_p ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct priv* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SSCOP_IDLE ; 
 int /*<<< orphan*/  SSCOP_RELEASE_request ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(hook_p hook)
{
	node_p node = FUNC0(hook);
	struct priv *priv = FUNC3(node);

	if(hook == priv->upper)
		priv->upper = NULL;
	else if(hook == priv->lower)
		priv->lower = NULL;
	else if(hook == priv->manage)
		priv->manage = NULL;

	if(FUNC2(node) == 0) {
		if(FUNC1(node))
			FUNC4(node);
	} else {
		/*
		 * Imply a release request, if the upper layer is
		 * disconnected.
		 */
		if(priv->upper == NULL && priv->lower != NULL &&
		   priv->enabled &&
		   FUNC6(priv->sscop) != SSCOP_IDLE) {
			FUNC5(priv->sscop, SSCOP_RELEASE_request,
			    NULL, 0);
		}
	}
	return 0;
}