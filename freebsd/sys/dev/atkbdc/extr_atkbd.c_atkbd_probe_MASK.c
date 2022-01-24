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
typedef  int /*<<< orphan*/ * KBDC ;

/* Variables and functions */
 int ATKBD_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int KB_CONF_FAIL_IF_NO_KBD ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  default_kbd ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC3(int unit, void *arg, int flags)
{
	KBDC kbdc;
	int *data = (int *)arg;	/* data[0]: controller, data[1]: irq */

	/* XXX */
	if (unit == ATKBD_DEFAULT) {
		if (FUNC0(&default_kbd))
			return 0;
	}

	kbdc = FUNC1(data[0]);
	if (kbdc == NULL)
		return ENXIO;
	if (FUNC2(kbdc, flags)) {
		if (flags & KB_CONF_FAIL_IF_NO_KBD)
			return ENXIO;
	}
	return 0;
}