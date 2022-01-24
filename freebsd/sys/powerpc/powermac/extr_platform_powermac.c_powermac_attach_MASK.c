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
typedef  int /*<<< orphan*/  platform_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  model ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static int
FUNC4(platform_t plat)
{
	phandle_t rootnode;
	char model[32];


	/*
	 * Quiesce Open Firmware on PowerMac11,2 and 12,1. It is
	 * necessary there to shut down a background thread doing fan
	 * management, and is harmful on other machines (it will make OF
	 * shut off power to various system components it had turned on).
	 *
	 * Note: we don't need to worry about which OF module we are
	 * using since this is called only from very early boot, within
	 * OF's boot context.
	 */

	rootnode = FUNC0("/");
	if (FUNC1(rootnode, "model", model, sizeof(model)) > 0) {
		if (FUNC3(model, "PowerMac11,2") == 0 ||
		    FUNC3(model, "PowerMac12,1") == 0) {
			FUNC2();
		}
	}

	return (0);
}