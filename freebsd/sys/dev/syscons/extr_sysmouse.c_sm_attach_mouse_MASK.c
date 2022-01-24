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
 int /*<<< orphan*/  VTY_SC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  smdev_ttydevsw ; 
 int /*<<< orphan*/  sysmouse_tty ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *unused)
{
	if (!FUNC3(VTY_SC))
		return;
	sysmouse_tty = FUNC1(&smdev_ttydevsw, NULL);
	FUNC2(sysmouse_tty, NULL, "sysmouse");
#ifdef EVDEV_SUPPORT
	smdev_evdev_init();
#endif
}