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
 char* _PATH_BSHELL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fmfname ; 
 int /*<<< orphan*/  fname ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fscript ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  master ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  slave ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 

__attribute__((used)) static void
FUNC10(char **av)
{
	const char *shell;

	shell = FUNC6("SHELL");
	if (shell == NULL)
		shell = _PATH_BSHELL;

	(void)FUNC0(master);
	(void)FUNC4(fscript);
	FUNC5(fmfname);
	FUNC7(slave);
	FUNC8("SCRIPT", fname, 1);
	if (av[0]) {
		FUNC2(av[0], av);
		FUNC9("%s", av[0]);
	} else {
		FUNC1(shell, shell, "-i", (char *)NULL);
		FUNC9("%s", shell);
	}
	FUNC3(1);
}