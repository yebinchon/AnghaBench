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
struct mouse_info {scalar_t__ operation; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONS_MOUSECTL ; 
 scalar_t__ MOUSE_HIDE ; 
 scalar_t__ MOUSE_SHOW ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mouse_info*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void
FUNC5(char *arg)
{
	struct mouse_info mouse;

	if (!FUNC4(arg, "on")) {
		mouse.operation = MOUSE_SHOW;
	} else if (!FUNC4(arg, "off")) {
		mouse.operation = MOUSE_HIDE;
	} else {
		FUNC3();
		FUNC1(1, "argument to -m must be either on or off");
	}

	if (FUNC2(0, CONS_MOUSECTL, &mouse) == -1) {
		FUNC3();
		FUNC0(1, "%sing the mouse",
		     mouse.operation == MOUSE_SHOW ? "show" : "hid");
	}
}