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
 int /*<<< orphan*/  CMDLINE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

int
FUNC12(const char *cmd, const char *args)
{

	if (FUNC5(cmd, "proto")) {
		if (*args == '\0') {
			FUNC4(CMDLINE, 0);
			FUNC2();
			FUNC0("which proto?");
		} else if (!FUNC8(args)) {
			FUNC3("%s: Unknown protocol.", args);
		}
		return (1);
	}
	if (FUNC5(cmd, "ignore") || FUNC5(cmd, "display")) {
		FUNC1(args, FUNC5(cmd, "display"));
		return (1);
	}
	if (FUNC5(cmd, "reset")) {
		FUNC8(0);
		FUNC6(0, 0);
		FUNC7(-1, 0);
		return (1);
	}
	if (FUNC5(cmd, "show")) {
		FUNC4(CMDLINE, 0); FUNC2();
		if (*args == '\0') {
			FUNC11();
			FUNC9();
			FUNC10();
			return (1);
		}
		if (FUNC5(args, "protos"))
			FUNC11();
		else if (FUNC5(args, "hosts"))
			FUNC9();
		else if (FUNC5(args, "ports"))
			FUNC10();
		else
			FUNC0("show what?");
		return (1);
	}
	return (0);
}