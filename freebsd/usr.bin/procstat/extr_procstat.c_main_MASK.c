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
struct procstat_cmd {scalar_t__ cmd; char* xocontainer; int /*<<< orphan*/  (* opt ) (int,char**) ;} ;
struct procstat {int dummy; } ;
struct kinfo_proc {int dummy; } ;
typedef  int pid_t ;

/* Variables and functions */
 long INT_MAX ; 
 int /*<<< orphan*/  KERN_PROC_PID ; 
 int /*<<< orphan*/  KERN_PROC_PROC ; 
 int /*<<< orphan*/  PROCSTAT_XO_VERSION ; 
 int PS_OPT_CAPABILITIES ; 
 int PS_OPT_NOHEADER ; 
 int PS_OPT_PERTHREAD ; 
 int PS_OPT_SIGNUM ; 
 int PS_OPT_VERBOSE ; 
 int PS_SUBCOMMAND_OPTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct procstat_cmd* FUNC1 (char*) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct kinfo_proc*,int) ; 
 char* optarg ; 
 int optind ; 
 int optreset ; 
 int /*<<< orphan*/  FUNC4 (struct procstat_cmd const*,struct procstat*,struct kinfo_proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct procstat*) ; 
 scalar_t__ procstat_files ; 
 int /*<<< orphan*/  FUNC6 (struct procstat*,struct kinfo_proc*) ; 
 struct kinfo_proc* FUNC7 (struct procstat*,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ procstat_kstack ; 
 struct procstat* FUNC8 (char*) ; 
 struct procstat* FUNC9 (char*,char*) ; 
 struct procstat* FUNC10 () ; 
 int procstat_opts ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 long FUNC12 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC13 (int,char**) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int,char*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int FUNC21 (int,char**) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 

int
FUNC23(int argc, char *argv[])
{
	int ch, interval;
	int i;
	struct kinfo_proc *p;
	const struct procstat_cmd *cmd;
	struct procstat *prstat, *cprstat;
	long l;
	pid_t pid;
	char *dummy;
	char *nlistf, *memf;
	int aflag;
	int cnt;

	interval = 0;
	cmd = NULL;
	memf = nlistf = NULL;
	aflag = 0;
	argc = FUNC21(argc, argv);

	while ((ch = FUNC2(argc, argv, "abCcefHhijkLlM:N:nrSstvw:x")) != -1) {
		switch (ch) {
		case 'a':
			aflag++;
			break;
		case 'b':
			if (cmd != NULL)
				FUNC14();
			cmd = FUNC1("binary");
			break;
		case 'C':
			procstat_opts |= PS_OPT_CAPABILITIES;
			break;
		case 'c':
			if (cmd != NULL)
				FUNC14();
			cmd = FUNC1("arguments");
			break;
		case 'e':
			if (cmd != NULL)
				FUNC14();
			cmd = FUNC1("environment");
			break;
		case 'f':
			if (cmd != NULL)
				FUNC14();
			cmd = FUNC1("files");
			break;
		case 'H':
			procstat_opts |= PS_OPT_PERTHREAD;
			break;
		case 'h':
			procstat_opts |= PS_OPT_NOHEADER;
			break;
		case 'i':
			if (cmd != NULL)
				FUNC14();
			cmd = FUNC1("signals");
			break;
		case 'j':
			if (cmd != NULL)
				FUNC14();
			cmd = FUNC1("tsignals");
			break;
		case 'k':
			if (cmd != NULL && cmd->cmd == procstat_kstack) {
				if ((procstat_opts & PS_OPT_VERBOSE) != 0)
					FUNC14();
				procstat_opts |= PS_OPT_VERBOSE;
			} else {
				if (cmd != NULL)
					FUNC14();
				cmd = FUNC1("kstack");
			}
			break;
		case 'L':
			if (cmd != NULL)
				FUNC14();
			cmd = FUNC1("ptlwpinfo");
			break;
		case 'l':
			if (cmd != NULL)
				FUNC14();
			cmd = FUNC1("rlimit");
			break;
		case 'M':
			memf = optarg;
			break;
		case 'N':
			nlistf = optarg;
			break;
		case 'n':
			procstat_opts |= PS_OPT_SIGNUM;
			break;
		case 'r':
			if (cmd != NULL)
				FUNC14();
			cmd = FUNC1("rusage");
			break;
		case 'S':
			if (cmd != NULL)
				FUNC14();
			cmd = FUNC1("cpuset");
			break;
		case 's':
			if (cmd != NULL)
				FUNC14();
			cmd = FUNC1("credentials");
			break;
		case 't':
			if (cmd != NULL)
				FUNC14();
			cmd = FUNC1("threads");
			break;
		case 'v':
			if (cmd != NULL)
				FUNC14();
			cmd = FUNC1("vm");
			break;
		case 'w':
			l = FUNC12(optarg, &dummy, 10);
			if (*dummy != '\0')
				FUNC14();
			if (l < 1 || l > INT_MAX)
				FUNC14();
			interval = l;
			break;
		case 'x':
			if (cmd != NULL)
				FUNC14();
			cmd = FUNC1("auxv");
			break;
		case '?':
		default:
			FUNC14();
		}

	}
	argc -= optind;
	argv += optind;

	if (cmd == NULL && argv[0] != NULL && (cmd = FUNC1(argv[0])) != NULL) {
		if ((procstat_opts & PS_SUBCOMMAND_OPTS) != 0)
			FUNC14();
		if (cmd->opt != NULL) {
			optreset = 1;
			optind = 1;
			cmd->opt(argc, argv);
			argc -= optind;
			argv += optind;
		} else {
			argc -= 1;
			argv += 1;
		}
	} else {
		if (cmd == NULL)
			cmd = FUNC1("basic");
		if (cmd->cmd != procstat_files &&
		    (procstat_opts & PS_OPT_CAPABILITIES) != 0)
			FUNC14();
	}

	/* Must specify either the -a flag or a list of pids. */
	if (!(aflag == 1 && argc == 0) && !(aflag == 0 && argc > 0))
		FUNC14();

	if (memf != NULL)
		prstat = FUNC9(nlistf, memf);
	else
		prstat = FUNC10();
	if (prstat == NULL)
		FUNC17(1, "procstat_open()");
	do {
		FUNC22(PROCSTAT_XO_VERSION);
		FUNC20("procstat");
		FUNC20(cmd->xocontainer);

		if (aflag) {
			p = FUNC7(prstat, KERN_PROC_PROC, 0, &cnt);
			if (p == NULL)
				FUNC17(1, "procstat_getprocs()");
			FUNC3(p, cnt);
			for (i = 0; i < cnt; i++) {
				FUNC4(cmd, prstat, &p[i]);

				/* Suppress header after first process. */
				procstat_opts |= PS_OPT_NOHEADER;
				FUNC19();
			}
			FUNC6(prstat, p);
		}
		for (i = 0; i < argc; i++) {
			l = FUNC12(argv[i], &dummy, 10);
			if (*dummy == '\0') {
				if (l < 0)
					FUNC14();
				pid = l;

				p = FUNC7(prstat, KERN_PROC_PID,
				    pid, &cnt);
				if (p == NULL)
					FUNC17(1, "procstat_getprocs()");
				if (cnt != 0)
					FUNC4(cmd, prstat, p);
				FUNC6(prstat, p);
			} else {
				cprstat = FUNC8(argv[i]);
				if (cprstat == NULL) {
					FUNC15("procstat_open()");
					continue;
				}
				p = FUNC7(cprstat, KERN_PROC_PID,
				    -1, &cnt);
				if (p == NULL)
					FUNC17(1, "procstat_getprocs()");
				if (cnt != 0)
					FUNC4(cmd, cprstat, p);
				FUNC6(cprstat, p);
				FUNC5(cprstat);
			}
			/* Suppress header after first process. */
			procstat_opts |= PS_OPT_NOHEADER;
		}

		FUNC16(cmd->xocontainer);
		FUNC16("procstat");
		FUNC18();
		if (interval)
			FUNC11(interval);
	} while (interval);

	FUNC5(prstat);

	FUNC0(0);
}