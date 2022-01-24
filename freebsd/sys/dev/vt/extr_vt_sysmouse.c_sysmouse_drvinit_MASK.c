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

/* Variables and functions */
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  VTY_VT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysmouse_cdevsw ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  sysmouse_lock ; 
 int /*<<< orphan*/  sysmouse_sleep ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *unused)
{

	if (!FUNC4(VTY_VT))
		return;
	FUNC2(&sysmouse_lock, "sysmouse", NULL, MTX_DEF);
	FUNC0(&sysmouse_sleep, "sysmrd");
	FUNC1(&sysmouse_cdevsw, 0, UID_ROOT, GID_WHEEL, 0600,
	    "sysmouse");
#ifdef EVDEV_SUPPORT
	sysmouse_evdev_init();
#endif
}