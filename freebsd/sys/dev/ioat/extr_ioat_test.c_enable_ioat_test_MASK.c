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
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * g_ioat_cdev ; 
 int /*<<< orphan*/  ioat_cdevsw ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(bool enable)
{

	FUNC2(&Giant, MA_OWNED);

	if (enable && g_ioat_cdev == NULL) {
		g_ioat_cdev = FUNC1(&ioat_cdevsw, 0, UID_ROOT, GID_WHEEL,
		    0600, "ioat_test");
	} else if (!enable && g_ioat_cdev != NULL) {
		FUNC0(g_ioat_cdev);
		g_ioat_cdev = NULL;
	}
	return (0);
}