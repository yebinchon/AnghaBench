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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  host ;

/* Variables and functions */
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  _PATH_DEV ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int) ; 
 int FUNC6 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void
FUNC12(int devfd, char *tty, char *mytty, const char *login)
{
	char *nows;
	time_t now;
	char host[MAXHOSTNAMELEN];
	wchar_t line[512];
	int fd;

	fd = FUNC6(devfd, tty, O_WRONLY);
	if (fd < 0)
		FUNC1(1, "openat(%s%s)", _PATH_DEV, tty);
	FUNC2(stdout);
	stdout = FUNC3(fd, "w");
	if (stdout == NULL)
		FUNC1(1, "%s%s", _PATH_DEV, tty);

	(void)FUNC8(SIGINT, done);
	(void)FUNC8(SIGHUP, done);

	/* print greeting */
	if (FUNC5(host, sizeof(host)) < 0)
		(void)FUNC9(host, "???");
	now = FUNC10((time_t *)NULL);
	nows = FUNC0(&now);
	nows[16] = '\0';
	(void)FUNC7("\r\n\007\007\007Message from %s@%s on %s at %s ...\r\n",
	    login, host, mytty, nows + 11);

	while (FUNC4(line, sizeof(line)/sizeof(wchar_t), stdin) != NULL)
		FUNC11(line);
}