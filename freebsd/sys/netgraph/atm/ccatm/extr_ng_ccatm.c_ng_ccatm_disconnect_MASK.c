#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ccnode {int /*<<< orphan*/  hook_cnt; int /*<<< orphan*/  data; int /*<<< orphan*/ * manage; int /*<<< orphan*/ * dump; } ;
struct cchook {TYPE_1__* node; int /*<<< orphan*/  inst; scalar_t__ is_uni; } ;
struct ccdata {int dummy; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/ * hook_p ;
struct TYPE_2__ {struct ccdata* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NG_CCATM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct cchook* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct ccnode* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ccdata*) ; 
 int /*<<< orphan*/  FUNC10 (struct cchook*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(hook_p hook)
{
	node_p node = FUNC0(hook);
	struct ccnode *priv = FUNC5(node);
	struct cchook *hd = FUNC1(hook);
	struct ccdata *cc;

	if (hook == priv->dump) {
		priv->dump = NULL;

	} else if (hook == priv->manage) {
		priv->manage = NULL;
		FUNC7(priv->data);

	} else {
		if (hd->is_uni)
			FUNC6(hd->inst, 0);
		else
			FUNC8(hd->inst);

		cc = hd->node->data;

		FUNC10(hd, M_NG_CCATM);
		FUNC2(hook, NULL);

		priv->hook_cnt--;

		FUNC9(cc);
	}

	/*
	 * When the number of hooks drops to zero, delete the node.
	 */
	if (FUNC4(node) == 0 && FUNC3(node))
		FUNC11(node);

	return (0);
}