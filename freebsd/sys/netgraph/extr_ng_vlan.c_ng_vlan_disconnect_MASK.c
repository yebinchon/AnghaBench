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
typedef  int /*<<< orphan*/ * hook_p ;
struct TYPE_3__ {int /*<<< orphan*/ ** vlan_hook; int /*<<< orphan*/ * nomatch_hook; int /*<<< orphan*/ * downstream_hook; } ;

/* Variables and functions */
 size_t FUNC0 (uintptr_t) ; 
 scalar_t__ FUNC1 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(hook_p hook)
{
	const priv_p priv = FUNC7(FUNC2(hook));
	uintptr_t hook_data;

	if (hook == priv->downstream_hook)
		priv->downstream_hook = NULL;
	else if (hook == priv->nomatch_hook)
		priv->nomatch_hook = NULL;
	else {
		/* Purge a rule that refers to this hook. */
		hook_data = (uintptr_t)FUNC3(hook);
		if (FUNC1(hook_data))
			priv->vlan_hook[FUNC0(hook_data)] = NULL;
	}
	FUNC4(hook, NULL);
	if ((FUNC6(FUNC2(hook)) == 0) &&
	    (FUNC5(FUNC2(hook))))
		FUNC8(FUNC2(hook));
	return (0);
}