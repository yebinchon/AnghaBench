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
typedef  TYPE_1__* sc_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  node; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int SCF_CONNECTED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(hook_p hook)
{
	const sc_p sc = FUNC3(FUNC0(hook));

	/* OK to remove debug hook(s) */
	if (FUNC1(hook) == NULL)
		return (0);

	/* Stop timer if it's currently active */
	if (sc->flags & SCF_CONNECTED)
		FUNC5(&sc->handle, sc->node);

	/* Self-destruct */
	if (FUNC2(FUNC0(hook)))
		FUNC4(FUNC0(hook));
	return (0);
}