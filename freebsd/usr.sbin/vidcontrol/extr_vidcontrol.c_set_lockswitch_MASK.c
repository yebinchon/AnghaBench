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
 int /*<<< orphan*/  VT_LOCKSWITCH ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void
FUNC5(char *arg)
{
	int data;

	if (!FUNC4(arg, "off")) {
		data = 0x01;
	} else if (!FUNC4(arg, "on")) {
		data = 0x02;
	} else {
		FUNC3();
		FUNC1(1, "argument to -S must be either on or off");
	}

	if (FUNC2(0, VT_LOCKSWITCH, &data) == -1) {
		FUNC3();
		FUNC0(1, "turning %s vty switching",
		     data == 0x01 ? "off" : "on");
	}
}