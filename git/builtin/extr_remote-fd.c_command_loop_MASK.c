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
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 size_t FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 

__attribute__((used)) static void FUNC10(int input_fd, int output_fd)
{
	char buffer[MAXCOMMAND];

	while (1) {
		size_t i;
		if (!FUNC4(buffer, MAXCOMMAND - 1, stdin)) {
			if (FUNC2(stdin))
				FUNC1("Input error");
			return;
		}
		/* Strip end of line characters. */
		i = FUNC8(buffer);
		while (i > 0 && FUNC5(buffer[i - 1]))
			buffer[--i] = 0;

		if (!FUNC7(buffer, "capabilities")) {
			FUNC6("*connect\n\n");
			FUNC3(stdout);
		} else if (!FUNC9(buffer, "connect ", 8)) {
			FUNC6("\n");
			FUNC3(stdout);
			if (FUNC0(input_fd,
				output_fd))
				FUNC1("Copying data between file descriptors failed");
			return;
		} else {
			FUNC1("Bad command: %s", buffer);
		}
	}
}