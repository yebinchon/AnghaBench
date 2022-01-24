#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct termios {int /*<<< orphan*/  c_lflag; } ;
struct group {char* gr_passwd; char* gr_name; } ;
typedef  int /*<<< orphan*/  line ;
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECHO ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  TCSANOW ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 char* FUNC6 (char*) ; 
 int FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC8 (char*,char) ; 
 char* FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,struct termios*) ; 

__attribute__((used)) static void
FUNC11(struct group *grp, bool update, int fd, bool precrypted)
{
	int		 b;
	int		 istty;
	struct termios	 t, n;
	char		*p, line[256];

	if (fd == -1)
		return;

	if (fd == '-') {
		grp->gr_passwd = "*";	/* No access */
		return;
	}
	
	if ((istty = FUNC4(fd))) {
		n = t;
		/* Disable echo */
		n.c_lflag &= ~(ECHO);
		FUNC10(fd, TCSANOW, &n);
		FUNC5("%sassword for group %s:", update ? "New p" : "P",
		    grp->gr_name);
		FUNC2(stdout);
	}
	b = FUNC7(fd, line, sizeof(line) - 1);
	if (istty) {	/* Restore state */
		FUNC10(fd, TCSANOW, &t);
		FUNC3('\n', stdout);
		FUNC2(stdout);
	}
	if (b < 0)
		FUNC0(EX_OSERR, "-h file descriptor");
	line[b] = '\0';
	if ((p = FUNC9(line, " \t\r\n")) != NULL)
		*p = '\0';
	if (!*line)
		FUNC1(EX_DATAERR, "empty password read on file descriptor %d",
		    conf.fd);
	if (precrypted) {
		if (FUNC8(line, ':') != 0)
			FUNC1(EX_DATAERR, "wrong encrypted passwrd");
		grp->gr_passwd = line;
	} else
		grp->gr_passwd = FUNC6(line);
}