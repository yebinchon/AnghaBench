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
 scalar_t__ EAGAIN ; 
 scalar_t__ EPROCLIM ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* _PATH_VI ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,char*,char*) ; 
 int FUNC4 () ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 long FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (long) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int
FUNC17(char *tmpf)
{
	long omask;
	int pid, status;

	omask = FUNC10(FUNC11(SIGINT)|FUNC11(SIGQUIT)|FUNC11(SIGHUP));
 top:
	if ((pid = FUNC4()) < 0) {

		if (errno == EPROCLIM) {
			FUNC16("you have too many processes");
			return(0);
		}
		if (errno == EAGAIN) {
			FUNC13(1);
			goto top;
		}
		FUNC15("fork");
		return (0);
	}
	if (pid == 0) {
		const char *ed;

		FUNC12(omask);
		if (FUNC8(FUNC6()) != 0)
			FUNC2(1, "setgid failed");
		if (FUNC9(FUNC7()) != 0)
			FUNC2(1, "setuid failed");
		if ((ed = FUNC5("EDITOR")) == (char *)0)
			ed = _PATH_VI;
		FUNC3(ed, ed, tmpf, (char *)0);
		FUNC2(1, "%s", ed);
	}
	FUNC14(pid, &status, 0);
	FUNC12(omask);
	if (!FUNC1(status) || FUNC0(status) != 0)
		return (0);
	return (1);
}