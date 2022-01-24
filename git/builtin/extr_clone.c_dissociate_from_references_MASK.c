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
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  F_OK ; 
 int RUN_COMMAND_NO_STDIN ; 
 int RUN_GIT_CMD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char const**,int) ; 
 scalar_t__ FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
	static const char* argv[] = { "repack", "-a", "-d", NULL };
	char *alternates = FUNC5("objects/info/alternates");

	if (!FUNC1(alternates, F_OK)) {
		if (FUNC6(argv, RUN_GIT_CMD|RUN_COMMAND_NO_STDIN))
			FUNC2(FUNC0("cannot repack to clean up"));
		if (FUNC7(alternates) && errno != ENOENT)
			FUNC3(FUNC0("cannot unlink temporary alternates file"));
	}
	FUNC4(alternates);
}