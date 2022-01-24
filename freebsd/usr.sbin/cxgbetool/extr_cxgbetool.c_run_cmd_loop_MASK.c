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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int MAX_ARGS ; 
 int errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int,char const**) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 char* FUNC6 (char**,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(void)
{
	int i, rc = 0;
	char buffer[128], *buf;
	const char *args[MAX_ARGS + 1];

	/*
	 * Simple loop: displays a "> " prompt and processes any input as a
	 * cxgbetool command.  You're supposed to enter only the part after
	 * "cxgbetool t4nexX".  Use "quit" or "exit" to exit.
	 */
	for (;;) {
		FUNC3(stdout, "> ");
		FUNC1(stdout);
		buf = FUNC2(buffer, sizeof(buffer), stdin);
		if (buf == NULL) {
			if (FUNC0(stdin)) {
				FUNC7("stdin error");
				rc = errno;	/* errno from fgets */
			}
			break;
		}

		i = 0;
		while ((args[i] = FUNC6(&buf, " \t\n")) != NULL) {
			if (args[i][0] != 0 && ++i == MAX_ARGS)
				break;
		}
		args[i] = 0;

		if (i == 0)
			continue;	/* skip empty line */

		if (!FUNC5(args[0], "quit") || !FUNC5(args[0], "exit"))
			break;

		rc = FUNC4(i, args);
	}

	/* rc normally comes from the last command (not including quit/exit) */
	return (rc);
}