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
struct ng_atmllc_priv {int /*<<< orphan*/ * fddi; int /*<<< orphan*/ * ether; int /*<<< orphan*/ * atm; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/ * hook_p ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct ng_atmllc_priv* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(hook_p hook)
{
	node_p	node;
	struct	ng_atmllc_priv *priv;

	node = FUNC0(hook);
	priv = FUNC3(node);

	if (hook == priv->atm) {
		priv->atm = NULL;
	} else if (hook == priv->ether) {
		priv->ether = NULL;
	} else if (hook == priv->fddi) {
		priv->fddi = NULL;
	}

	if (FUNC2(node) == 0 && FUNC1(node)) {
		FUNC4(node);
	}

	return (0);
}