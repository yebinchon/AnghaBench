#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* hook_p ;
struct TYPE_9__ {struct TYPE_9__* hk_peer; } ;
struct TYPE_8__ {scalar_t__ hk_node; TYPE_3__* hk_peer; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_3__ ng_deadhook ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int
FUNC6(hook_p hook1, hook_p hook2)
{
	if (hook1->hk_node != hook2->hk_node) {
		FUNC4();
		return (EINVAL);
	}
	FUNC2();
	if (FUNC0(hook1) || FUNC0(hook2)) {
		FUNC3();
		return (EINVAL);
	}
	hook1->hk_peer->hk_peer = hook2->hk_peer;
	hook2->hk_peer->hk_peer = hook1->hk_peer;

	hook1->hk_peer = &ng_deadhook;
	hook2->hk_peer = &ng_deadhook;
	FUNC3();

	FUNC1(hook1);
	FUNC1(hook2);

	/* XXX If we ever cache methods on hooks update them as well */
	FUNC5(hook1);
	FUNC5(hook2);
	return (0);
}