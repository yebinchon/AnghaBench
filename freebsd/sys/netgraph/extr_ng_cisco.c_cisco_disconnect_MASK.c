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
struct protoent {int af; int /*<<< orphan*/ * hook; } ;
typedef  TYPE_1__* sc_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_3__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct protoent* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(hook_p hook)
{
	const sc_p sc = FUNC4(FUNC0(hook));
	struct protoent *pep;

	/* Check it's not the debug hook */
	if ((pep = FUNC1(hook))) {
		pep->hook = NULL;
		if (pep->af == 0xffff)
			/* If it is the downstream hook, stop the timers */
			FUNC6(&sc->handle, FUNC0(hook));
	}

	/* If no more hooks, remove the node */
	if ((FUNC3(FUNC0(hook)) == 0)
	&& (FUNC2(FUNC0(hook))))
		FUNC5(FUNC0(hook));
	return (0);
}