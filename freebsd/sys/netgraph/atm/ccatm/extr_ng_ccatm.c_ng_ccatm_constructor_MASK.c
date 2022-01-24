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
struct ccnode {int /*<<< orphan*/ * data; int /*<<< orphan*/  node; } ;
typedef  int /*<<< orphan*/  node_p ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_NG_CCATM ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ccnode*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cc_funcs ; 
 int /*<<< orphan*/  FUNC2 (struct ccnode*,int /*<<< orphan*/ ) ; 
 struct ccnode* FUNC3 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(node_p node)
{
	struct ccnode *priv;

	priv = FUNC3(sizeof(*priv), M_NG_CCATM, M_WAITOK | M_ZERO);

	priv->node = node;
	priv->data = FUNC1(&cc_funcs);
	if (priv->data == NULL) {
		FUNC2(priv, M_NG_CCATM);
		return (ENOMEM);
	}

	FUNC0(node, priv);

	return (0);
}