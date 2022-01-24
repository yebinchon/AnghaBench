#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* hook_p ;
struct TYPE_6__ {int /*<<< orphan*/  hk_refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__ ng_deadhook ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(hook_p hook)
{

	if (hook == &ng_deadhook)
		return;

	if (FUNC3(&hook->hk_refs)) { /* we were the last */
		if (FUNC1(hook)) /* it'll probably be ng_deadnode */
			FUNC2((FUNC1(hook)));
		FUNC0(hook);
	}
}