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
struct TYPE_5__ {int /*<<< orphan*/ ** hooks; TYPE_1__* links; } ;
struct TYPE_4__ {int /*<<< orphan*/ * hook; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int
FUNC7(hook_p hook)
{
	const node_p node = FUNC0(hook);
	const priv_p priv = FUNC4(node);
	const int index = (intptr_t)FUNC1(hook);

	/* Zero out hook pointer */
	if (index < 0)
		priv->links[~index].hook = NULL;
	else
		priv->hooks[index] = NULL;

	/* Update derived info (or go away if no hooks left). */
	if (FUNC3(node) > 0)
		FUNC5(node, 0);
	else if (FUNC2(node))
		FUNC6(node);

	return (0);
}