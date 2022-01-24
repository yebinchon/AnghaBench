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
struct pr {int kq; int /*<<< orphan*/  e; int /*<<< orphan*/  ostdout; } ;
struct kevent {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_PROCDESC ; 
 int /*<<< orphan*/  EV_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NOTE_EXIT ; 
 int /*<<< orphan*/  PD_CLOEXEC ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  _PATH_PR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  diffargs ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int status ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC15 (char**,char*,int /*<<< orphan*/ ,char*,char*) ; 
 struct pr* FUNC16 (int,int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 

struct pr *
FUNC18(char *file1, char *file2)
{
	int pfd[2];
	int pr_pd;
	pid_t pid;
	char *header;
	struct pr *pr;

	pr = FUNC16(1, sizeof(*pr));

	FUNC15(&header, "%s %s %s", diffargs, file1, file2);
	FUNC14(SIGPIPE, SIG_IGN);
	FUNC7(stdout);
	FUNC13(stdout);
	if (FUNC12(pfd) == -1)
		FUNC5(2, "pipe");
	switch ((pid = FUNC11(&pr_pd, PD_CLOEXEC))) {
	case -1:
		status |= 2;
		FUNC8(header);
		FUNC5(2, "No more processes");
	case 0:
		/* child */
		if (pfd[0] != STDIN_FILENO) {
			FUNC4(pfd[0], STDIN_FILENO);
			FUNC2(pfd[0]);
		}
		FUNC2(pfd[1]);
		FUNC6(_PATH_PR, _PATH_PR, "-h", header, (char *)0);
		FUNC1(127);
	default:

		/* parent */
		if (pfd[1] != STDOUT_FILENO) {
			pr->ostdout = FUNC3(STDOUT_FILENO);
			FUNC4(pfd[1], STDOUT_FILENO);
			FUNC2(pfd[1]);
			FUNC2(pfd[1]);
			}
			FUNC2(pfd[0]);
			FUNC13(stdout);
			FUNC8(header);
			pr->kq = FUNC10();
			if (pr->kq == -1)
				FUNC5(2, "kqueue");
			pr->e = FUNC17(sizeof(struct kevent));
			FUNC0(pr->e, pr_pd, EVFILT_PROCDESC, EV_ADD, NOTE_EXIT, 0,
			    NULL);
			if (FUNC9(pr->kq, pr->e, 1, NULL, 0, NULL) == -1)
				FUNC5(2, "kevent");
	}
	return (pr);
}