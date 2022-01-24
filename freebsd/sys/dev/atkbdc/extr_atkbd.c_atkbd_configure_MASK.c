#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  kb_flags; } ;
typedef  TYPE_1__ keyboard_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATKBD_DEFAULT ; 
 int /*<<< orphan*/  ATKBD_DRIVER_NAME ; 
 int /*<<< orphan*/  KB_REGISTERED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__**,int*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ,char*,int*) ; 

__attribute__((used)) static int
FUNC8(int flags)
{
	keyboard_t *kbd;
	int arg[2];
	int i;

	/*
	 * Probe the keyboard controller, if not present or if the driver
	 * is disabled, unregister the keyboard if any.
	 */
	if (FUNC2() != 0 ||
	    FUNC6("atkbd", ATKBD_DEFAULT)) {
		i = FUNC3(ATKBD_DRIVER_NAME, ATKBD_DEFAULT);
		if (i >= 0) {
			kbd = FUNC4(i);
			FUNC5(kbd);
			kbd->kb_flags &= ~KB_REGISTERED;
		}
		return 0;
	}
	
	/* XXX: a kludge to obtain the device configuration flags */
	if (FUNC7("atkbd", ATKBD_DEFAULT, "flags", &i) == 0)
		flags |= i;

	/* probe the default keyboard */
	arg[0] = -1;
	arg[1] = -1;
	kbd = NULL;
	if (FUNC1(ATKBD_DEFAULT, arg, flags))
		return 0;
	if (FUNC0(ATKBD_DEFAULT, &kbd, arg, flags))
		return 0;

	/* return the number of found keyboards */
	return 1;
}