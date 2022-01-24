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
struct sbuf {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  E2BIG ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  SBUF_AUTOEXTEND ; 
 char* _PATH_BSHELL ; 
 int /*<<< orphan*/  _SC_ARG_MAX ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*) ; 
 int FUNC8 (int,char**,char*) ; 
 char* FUNC9 (size_t) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  optopt ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int FUNC11 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct sbuf*) ; 
 char* FUNC13 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct sbuf*) ; 
 long FUNC16 (struct sbuf*) ; 
 struct sbuf* FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct sbuf*,char) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*,int,int) ; 
 char* FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*,size_t) ; 
 int FUNC23 (char*) ; 
 char* FUNC24 (char*,char) ; 
 long FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 () ; 

int
FUNC27(int argc, char *argv[])
{
	struct sbuf *cmdbuf;
	long arg_max;
	int ch, debug, i, magic, n, nargs, rval;
	size_t cmdsize;
	char buf[4];
	char *cmd, *name, *p, *shell, *slashp, *tmpshell;

	debug = 0;
	magic = '%';		/* Default magic char is `%'. */
	nargs = -1;
	while ((ch = FUNC8(argc, argv, "a:d0123456789")) != -1)
		switch (ch) {
		case 'a':
			if (optarg[0] == '\0' || optarg[1] != '\0')
				FUNC3(1,
				    "illegal magic character specification");
			magic = optarg[0];
			break;
		case 'd':
			debug = 1;
			break;
		case '0': case '1': case '2': case '3': case '4':
		case '5': case '6': case '7': case '8': case '9':
			if (nargs != -1)
				FUNC3(1,
				    "only one -# argument may be specified");
			nargs = optopt - '0';
			break;
		default:
			FUNC26();
		}
	argc -= optind;
	argv += optind;

	if (argc < 2)
		FUNC26();

	/*
	 * The command to run is argv[0], and the args are argv[1..].
	 * Look for %digit references in the command, remembering the
	 * largest one.
	 */
	for (n = 0, p = argv[0]; *p != '\0'; ++p)
		if (FUNC0(p)) {
			++p;
			if (p[0] - '0' > n)
				n = p[0] - '0';
		}

	/*
	 * Figure out the shell and name arguments to pass to execl()
	 * in exec_shell().  Always malloc() shell and just set name
	 * to point at the last part of shell if there are any backslashes,
	 * otherwise just set it to point at the space malloc()'d.  If
	 * SHELL environment variable exists, replace contents of
	 * shell with it.
	 */
	shell = name = NULL;
	tmpshell = FUNC7("SHELL");
	shell = (tmpshell != NULL) ? FUNC20(tmpshell) : FUNC20(_PATH_BSHELL);
	if (shell == NULL)
		FUNC1(1, "strdup() failed");
	slashp = FUNC24(shell, '/');
	name = (slashp != NULL) ? slashp + 1 : shell;

	/*
	 * If there were any %digit references, then use those, otherwise
	 * build a new command string with sufficient %digit references at
	 * the end to consume (nargs) arguments each time round the loop.
	 * Allocate enough space to hold the maximum command.  Save the
	 * size to pass to snprintf().
	 */
	if (n == 0) {
		cmdsize = FUNC23(argv[0]) + 9 * (sizeof(" %1") - 1) + 1;
		if ((cmd = FUNC9(cmdsize)) == NULL)
			FUNC1(1, NULL);
		FUNC22(cmd, argv[0], cmdsize);

		/* If nargs not set, default to a single argument. */
		if (nargs == -1)
			nargs = 1;

		for (i = 1; i <= nargs; i++) {
			FUNC19(buf, sizeof(buf), " %c%d", magic, i);
			FUNC21(cmd, buf, cmdsize);
		}

		/*
		 * If nargs set to the special value 0, eat a single
		 * argument for each command execution.
		 */
		if (nargs == 0)
			nargs = 1;
	} else {
		if ((cmd = FUNC20(argv[0])) == NULL)
			FUNC1(1, NULL);
		nargs = n;
	}

	cmdbuf = FUNC17(NULL, NULL, 1024, SBUF_AUTOEXTEND);
	if (cmdbuf == NULL)
		FUNC1(1, NULL);

	arg_max = FUNC25(_SC_ARG_MAX);

	/*
	 * (argc) and (argv) are still offset by one to make it simpler to
	 * expand %digit references.  At the end of the loop check for (argc)
	 * equals 1 means that all the (argv) has been consumed.
	 */
	for (rval = 0; argc > nargs; argc -= nargs, argv += nargs) {
		FUNC12(cmdbuf);
		FUNC11(cmdbuf, "exec ");
		/* Expand command argv references. */
		for (p = cmd; *p != '\0'; ++p) {
			if (FUNC0(p)) {
				if (FUNC11(cmdbuf, argv[(++p)[0] - '0'])
				    == -1)
					FUNC2(1, ENOMEM, "sbuf");
			} else {
				if (FUNC18(cmdbuf, *p) == -1)
					FUNC2(1, ENOMEM, "sbuf");
			}
			if (FUNC16(cmdbuf) > arg_max)
				FUNC2(1, E2BIG, NULL);
		}

		/* Terminate the command string. */
		FUNC15(cmdbuf);

		/* Run the command. */
		if (debug)
			(void)FUNC10("%s\n", FUNC13(cmdbuf));
		else
			if (FUNC4(FUNC13(cmdbuf), shell, name))
				rval = 1;
	}

	if (argc != 1)
		FUNC3(1, "expecting additional argument%s after \"%s\"",
		    (nargs - argc) ? "s" : "", argv[argc - 1]);
	FUNC6(cmd);
	FUNC14(cmdbuf);
	FUNC6(shell);
	FUNC5(rval);
}