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
 int EINTR ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* _PATH_VI ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,char const*,char*) ; 
 int FUNC4 () ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(const char *pathname)
{
	sig_t sighup, sigint, sigquit, sigchld;
	pid_t pid;
	int saved_errno, st, ret = -1;
	const char *ed;

	ed = FUNC5("VISUAL");
	if (ed == NULL)
		ed = FUNC5("EDITOR");
	if (ed == NULL)
		ed = _PATH_VI;

	sighup = FUNC6(SIGHUP, SIG_IGN);
	sigint = FUNC6(SIGINT, SIG_IGN);
	sigquit = FUNC6(SIGQUIT, SIG_IGN);
	sigchld = FUNC6(SIGCHLD, SIG_DFL);
	if ((pid = FUNC4()) == -1)
		goto fail;
	if (pid == 0) {
		FUNC3(ed, ed, pathname, (char *)NULL);
		FUNC2(127);
	}
	while (FUNC7(pid, &st, 0) == -1)
		if (errno != EINTR)
			goto fail;
	if (!FUNC1(st))
		errno = EINTR;
	else
		ret = FUNC0(st);

 fail:
	saved_errno = errno;
	(void)FUNC6(SIGHUP, sighup);
	(void)FUNC6(SIGINT, sigint);
	(void)FUNC6(SIGQUIT, sigquit);
	(void)FUNC6(SIGCHLD, sigchld);
	errno = saved_errno;
	return (ret);
}