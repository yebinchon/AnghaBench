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
typedef  int /*<<< orphan*/  u_char ;
struct ngm_connect {int /*<<< orphan*/  peerhook; int /*<<< orphan*/  ourhook; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  ngc ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BUF_SIZE ; 
 char* DEFAULT_HOOKNAME ; 
 int /*<<< orphan*/  EX_OSERR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NGM_CONNECT ; 
 int /*<<< orphan*/  NGM_GENERIC_COOKIE ; 
 char* NG_SOCK_HOOK_NAME ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC4 (int,char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,char*,char*,int) ; 
 scalar_t__ FUNC6 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ngm_connect*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,char**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int FUNC17 (int,char**,char*) ; 
 int infd ; 
 int /*<<< orphan*/ * msgs ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  outfd ; 
 int FUNC18 (int,char*,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int,char const*) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC24 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC25(int ac, char *av[])
{
	struct ngm_connect ngc;
	const char *path = NULL;
	const char *hook = DEFAULT_HOOKNAME;
	int     csock, dsock;
	int     asciiFlag = 0;
	int     loopFlag = 0;
	int	noInput = 0;
	int	execFlag = 0;
	int	ch;

	if ((msgs = FUNC22()) == NULL)
		FUNC12(EX_OSERR, NULL);

	/* Parse flags */
	while ((ch = FUNC17(ac, av, "aedlm:nsS")) != -1) {
		switch (ch) {
		case 'a':
			asciiFlag = 1;
			break;
		case 'd':
			FUNC7(FUNC7(-1) + 1);
			break;
		case 'e':
			execFlag = 1;
			break;
		case 'l':
			loopFlag = 1;
			break;
		case 'n':
			noInput = 1;
			break;
		case 'm':
			if (FUNC21(msgs, optarg) == -1)
				FUNC12(EX_OSERR, NULL);
			break;
		case 's':
			outfd = STDIN_FILENO;
			break;
		case 'S':
			infd = STDOUT_FILENO;
			break;
		case '?':
		default:
			FUNC8();
		}
	}
	ac -= optind;
	av += optind;

	if (execFlag) {
		if (asciiFlag || loopFlag) {
			FUNC16(stderr, "conflicting options\n");
			FUNC8();
		}
		if (ac < 3)
			FUNC8();
		path = av[0];
		hook = av[1];
		av += 2;
		ac -= 2;
	} else {
		/* Get params */
		switch (ac) {
		case 2:
			hook = av[1];
			/* FALLTHROUGH */
		case 1:
			path = av[0];
			break;
		default:
			FUNC8();
		}
	}

	/* Get sockets */
	if (FUNC3(NULL, &csock, &dsock) < 0)
		FUNC13(EX_OSERR, "can't get sockets");

	/* Connect socket node to specified node */
	FUNC23(ngc.path, sizeof(ngc.path), "%s", path);
	FUNC23(ngc.ourhook, sizeof(ngc.ourhook), NG_SOCK_HOOK_NAME);
	FUNC23(ngc.peerhook, sizeof(ngc.peerhook), "%s", hook);

	if (FUNC6(csock, ".",
	    NGM_GENERIC_COOKIE, NGM_CONNECT, &ngc, sizeof(ngc)) < 0)
		FUNC13(EX_OSERR, "can't connect to node");

	if (execFlag) {
		/* move dsock to fd 0 and 1 */
		(void)FUNC10(0);
		(void)FUNC10(1);
		if (!noInput)
			(void)FUNC11(dsock, 0);
		(void)FUNC11(dsock, 1);

		FUNC20(csock, path);

		/* try executing the program */
		(void)FUNC14(av[0], av);
		FUNC12(EX_OSERR, "%s", av[0]);

	} else
		FUNC20(csock, path);

	/* Close standard input if not reading from it */
	if (noInput)
		FUNC15(stdin);

	/* Relay data */
	while (1) {
		fd_set  rfds;

		/* Setup bits */
		FUNC2(&rfds);
		if (!noInput)
			FUNC1(infd, &rfds);
		FUNC1(dsock, &rfds);

		/* Wait for something to happen */
		if (FUNC19(FD_SETSIZE, &rfds, NULL, NULL, NULL) < 0)
			FUNC12(EX_OSERR, "select");

		/* Check data from socket */
		if (FUNC0(dsock, &rfds)) {
			char    buf[BUF_SIZE];
			int     rl, wl;

			/* Read packet from socket */
			if ((rl = FUNC4(dsock,
			    buf, sizeof(buf), NULL)) < 0)
				FUNC12(EX_OSERR, "read(hook)");
			if (rl == 0)
				FUNC13(EX_OSERR, "read EOF from hook?!");

			/* Write packet to stdout */
			if (asciiFlag)
				FUNC9((u_char *) buf, rl);
			else if ((wl = FUNC24(outfd, buf, rl)) != rl) {
				if (wl < 0) {
					FUNC12(EX_OSERR, "write(stdout)");
				} else {
					FUNC13(EX_OSERR,
					    "stdout: read %d, wrote %d",
					    rl, wl);
				}
			}
			/* Loopback */
			if (loopFlag) {
				if (FUNC5(dsock, NG_SOCK_HOOK_NAME, buf, rl) < 0)
					FUNC12(EX_OSERR, "write(hook)");
			}
		}

		/* Check data from stdin */
		if (FUNC0(infd, &rfds)) {
			char    buf[BUF_SIZE];
			int     rl;

			/* Read packet from stdin */
			if ((rl = FUNC18(infd, buf, sizeof(buf))) < 0)
				FUNC12(EX_OSERR, "read(stdin)");
			if (rl == 0)
				FUNC13(EX_OSERR, "EOF(stdin)");

			/* Write packet to socket */
			if (FUNC5(dsock, NG_SOCK_HOOK_NAME, buf, rl) < 0)
				FUNC12(EX_OSERR, "write(hook)");
		}
	}
}