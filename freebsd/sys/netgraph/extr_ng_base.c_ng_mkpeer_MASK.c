#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  node_p ;
typedef  TYPE_3__* hook_p ;
struct TYPE_12__ {int /*<<< orphan*/  hk_flags; TYPE_2__* hk_node; struct TYPE_12__* hk_peer; } ;
struct TYPE_11__ {TYPE_1__* nd_type; } ;
struct TYPE_10__ {int (* connect ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC8(node_p node, const char *name, const char *name2, char *type)
{
	node_p	node2;
	hook_p	hook1, hook2;
	int	error;

	if ((error = FUNC4(type, &node2))) {
		return (error);
	}

	if ((error = FUNC2(node, name, &hook1))) { /* gives us a ref */
		FUNC5(node2, NULL, NULL, 0);
		return (error);
	}

	if ((error = FUNC2(node2, name2, &hook2))) {
		FUNC5(node2, NULL, NULL, 0);
		FUNC3(hook1);
		FUNC1(hook1);
		return (error);
	}

	/*
	 * Actually link the two hooks together.
	 */
	hook1->hk_peer = hook2;
	hook2->hk_peer = hook1;

	/* Each hook is referenced by the other */
	FUNC0(hook1);
	FUNC0(hook2);

	/* Give each node the opportunity to veto the pending connection */
	if (hook1->hk_node->nd_type->connect) {
		error = (*hook1->hk_node->nd_type->connect) (hook1);
	}

	if ((error == 0) && hook2->hk_node->nd_type->connect) {
		error = (*hook2->hk_node->nd_type->connect) (hook2);

	}

	/*
	 * drop the references we were holding on the two hooks.
	 */
	if (error) {
		FUNC3(hook2);	/* also zaps hook1 */
		FUNC5(node2, NULL, NULL, 0);
	} else {
		/* As a last act, allow the hooks to be used */
		hook1->hk_flags &= ~HK_INVALID;
		hook2->hk_flags &= ~HK_INVALID;
	}
	FUNC1(hook1);
	FUNC1(hook2);
	return (error);
}