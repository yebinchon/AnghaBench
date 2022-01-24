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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  XST_NIL ; 
 scalar_t__ XenbusStateClosed ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(device_t bus, device_t child, const char *path)
{

	FUNC4(bus, child, path);

	if (FUNC0(path, "/state") != 0
	 && FUNC0(path, "/online") != 0)
		return;

	if (FUNC3(child) != XenbusStateClosed
	 || FUNC1(child) != 0)
		return;

	/*
	 * Cleanup the hotplug entry in the XenStore if
	 * present.  The control domain expects any userland
	 * component associated with this device to destroy
	 * this node in order to signify it is safe to 
	 * teardown the device.  However, not all backends
	 * rely on userland components, and those that
	 * do should either use a communication channel
	 * other than the XenStore, or ensure the hotplug
	 * data is already cleaned up.
	 *
	 * This removal ensures that no matter what path
	 * is taken to mark a back-end closed, the control
	 * domain will understand that it is closed.
	 */
	FUNC5(XST_NIL, FUNC2(child), "hotplug-status");
}