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
typedef  int /*<<< orphan*/  xname ;
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  cmdbuf ;

/* Variables and functions */
 int BUFSIZ ; 
 int PATHSIZE ; 
 scalar_t__ SIGPIPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* _PATH_CSHELL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC5 (char*,int) ; 
 char* homedir ; 
 char* myname ; 
 scalar_t__ FUNC6 (int*) ; 
 char* prevfile ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int,char*,int) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*,...) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ,int,int,char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC13 (char*,char) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 char* FUNC15 (char*) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  wait_status ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

char *
FUNC18(char *name)
{
	char xname[PATHSIZE];
	char cmdbuf[PATHSIZE];		/* also used for file names */
	int pid, l;
	char *cp, *sh;
	int pivec[2];
	struct stat sbuf;

	/*
	 * The order of evaluation is "%" and "#" expand into constants.
	 * "&" can expand into "+".  "+" can expand into shell meta characters.
	 * Shell meta characters expand into constants.
	 * This way, we make no recursive expansion.
	 */
	switch (*name) {
	case '%':
		FUNC3(name[1] ? name + 1 : myname, xname, sizeof(xname));
		return (FUNC9(xname));
	case '#':
		if (name[1] != 0)
			break;
		if (prevfile[0] == 0) {
			FUNC7("No previous file\n");
			return (NULL);
		}
		return (FUNC9(prevfile));
	case '&':
		if (name[1] == 0 && (name = FUNC15("MBOX")) == NULL)
			name = "~/mbox";
		/* fall through */
	}
	if (name[0] == '+' && FUNC5(cmdbuf, sizeof(cmdbuf)) >= 0) {
		(void)FUNC10(xname, sizeof(xname), "%s/%s", cmdbuf, name + 1);
		name = FUNC9(xname);
	}
	/* catch the most common shell meta character */
	if (name[0] == '~' && homedir != NULL &&
	    (name[1] == '/' || name[1] == '\0')) {
		(void)FUNC10(xname, sizeof(xname), "%s%s", homedir, name + 1);
		name = FUNC9(xname);
	}
	if (!FUNC14(name, "~{[*?$`'\"\\"))
		return (FUNC9(name));
	if (FUNC6(pivec) < 0) {
		FUNC17("pipe");
		return (NULL);
	}
	(void)FUNC10(cmdbuf, sizeof(cmdbuf), "echo %s", name);
	if ((sh = FUNC15("SHELL")) == NULL)
		sh = _PATH_CSHELL;
	pid = FUNC11(sh, 0, -1, pivec[1], "-c", cmdbuf, NULL);
	if (pid < 0) {
		(void)FUNC2(pivec[0]);
		(void)FUNC2(pivec[1]);
		return (NULL);
	}
	(void)FUNC2(pivec[1]);
	l = FUNC8(pivec[0], xname, BUFSIZ);
	(void)FUNC2(pivec[0]);
	if (FUNC16(pid) < 0 && FUNC0(wait_status) &&
	    FUNC1(wait_status) != SIGPIPE) {
		FUNC4(stderr, "\"%s\": Expansion failed.\n", name);
		return (NULL);
	}
	if (l < 0) {
		FUNC17("read");
		return (NULL);
	}
	if (l == 0) {
		FUNC4(stderr, "\"%s\": No match.\n", name);
		return (NULL);
	}
	if (l == BUFSIZ) {
		FUNC4(stderr, "\"%s\": Expansion buffer overflow.\n", name);
		return (NULL);
	}
	xname[l] = '\0';
	for (cp = &xname[l-1]; *cp == '\n' && cp > xname; cp--)
		;
	cp[1] = '\0';
	if (FUNC13(xname, ' ') && FUNC12(xname, &sbuf) < 0) {
		FUNC4(stderr, "\"%s\": Ambiguous.\n", name);
		return (NULL);
	}
	return (FUNC9(xname));
}