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
typedef  int /*<<< orphan*/ * hook_p ;
typedef  TYPE_1__* bt3c_softc_p ;
struct TYPE_2__ {int /*<<< orphan*/ * hook; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(hook_p hook)
{
	bt3c_softc_p	sc = (bt3c_softc_p) FUNC3(FUNC1(hook));

	if (hook != sc->hook) {
		sc->hook = NULL;
		return (EINVAL);
	}

	/* set the hook into queueing mode (for incoming (from wire) packets) */
	FUNC0(FUNC2(hook));

	return (0);
}