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
 int EXIT_MISC ; 
 int EXIT_NOEXEC ; 
 int EXIT_NOTFOUND ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (char*,char**) ; 
 int FUNC4 (int,char**,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(int argc, char *argv[])
{
	int exit_status;

	while (FUNC4(argc, argv, "") != -1)
		FUNC7();
	argc -= optind;
	argv += optind;
	if (argc < 1)
		FUNC7();

	if (FUNC5(STDOUT_FILENO))
		FUNC0();
	if (FUNC5(STDERR_FILENO) && FUNC1(STDOUT_FILENO, STDERR_FILENO) == -1)
		/* may have just closed stderr */
		FUNC2(EXIT_MISC, "%s", argv[0]);

	(void)FUNC6(SIGHUP, SIG_IGN);

	FUNC3(*argv, argv);
	exit_status = (errno == ENOENT) ? EXIT_NOTFOUND : EXIT_NOEXEC;
	FUNC2(exit_status, "%s", argv[0]);
}