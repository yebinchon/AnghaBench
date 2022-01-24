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
 int MAXCOMMAND ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 size_t FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 

__attribute__((used)) static int FUNC12(const char *child)
{
	char buffer[MAXCOMMAND];

	while (1) {
		size_t i;
		if (!FUNC4(buffer, MAXCOMMAND - 1, stdin)) {
			if (FUNC2(stdin))
				FUNC0("Command input error");
			FUNC1(0);
		}
		/* Strip end of line characters. */
		i = FUNC10(buffer);
		while (i > 0 && FUNC6(buffer[i - 1]))
			buffer[--i] = 0;

		if (!FUNC9(buffer, "capabilities")) {
			FUNC7("*connect\n\n");
			FUNC3(stdout);
		} else if (!FUNC11(buffer, "connect ", 8)) {
			FUNC7("\n");
			FUNC3(stdout);
			return FUNC8(child, buffer + 8);
		} else {
			FUNC5(stderr, "Bad command");
			return 1;
		}
	}
}