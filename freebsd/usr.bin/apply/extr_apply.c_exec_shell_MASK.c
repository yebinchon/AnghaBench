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
typedef  int /*<<< orphan*/  sig_t ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,char*,char const*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 () ; 
 int FUNC8 (int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 

__attribute__((used)) static int
FUNC10(const char *command, const char *use_shell, const char *use_name)
{
	pid_t pid;
	int omask, pstat;
	sig_t intsave, quitsave;

	if (!command)		/* just checking... */
		return(1);

	omask = FUNC3(FUNC4(SIGCHLD));
	switch(pid = FUNC7()) {
	case -1:			/* error */
		FUNC1(1, "vfork");
	case 0:				/* child */
		(void)FUNC6(omask);
		FUNC2(use_shell, use_name, "-c", command, (char *)NULL);
		FUNC9("%s", use_shell);
		FUNC0(1);
	}
	intsave = FUNC5(SIGINT, SIG_IGN);
	quitsave = FUNC5(SIGQUIT, SIG_IGN);
	pid = FUNC8(pid, &pstat, 0);
	(void)FUNC6(omask);
	(void)FUNC5(SIGINT, intsave);
	(void)FUNC5(SIGQUIT, quitsave);
	return(pid == -1 ? -1 : pstat);
}