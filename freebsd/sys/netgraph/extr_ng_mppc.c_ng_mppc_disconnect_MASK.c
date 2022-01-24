#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/ * hook_p ;
struct TYPE_6__ {int /*<<< orphan*/ * hook; } ;
struct TYPE_5__ {int /*<<< orphan*/ * hook; } ;
struct TYPE_7__ {TYPE_2__ recv; TYPE_1__ xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int
FUNC5(hook_p hook)
{
	const node_p node = FUNC0(hook);
	const priv_p priv = FUNC3(node);

	/* Zero out hook pointer */
	if (hook == priv->xmit.hook)
		priv->xmit.hook = NULL;
	if (hook == priv->recv.hook)
		priv->recv.hook = NULL;

	/* Go away if no longer connected */
	if ((FUNC2(node) == 0)
	&& FUNC1(node))
		FUNC4(node);
	return (0);
}