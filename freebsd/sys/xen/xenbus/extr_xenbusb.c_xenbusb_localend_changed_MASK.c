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
struct xenbus_device_ivars {int /*<<< orphan*/  xd_lock; int /*<<< orphan*/  xd_node; int /*<<< orphan*/  xd_state; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 struct xenbus_device_ivars* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(device_t bus, device_t child, const char *path)
{

	if (FUNC2(path, "/state") != 0) {
		struct xenbus_device_ivars *ivars;

		ivars = FUNC1(child);
		FUNC3(&ivars->xd_lock);
		ivars->xd_state = FUNC5(ivars->xd_node);
		FUNC4(&ivars->xd_lock);
	}
	FUNC0(child, path);
}