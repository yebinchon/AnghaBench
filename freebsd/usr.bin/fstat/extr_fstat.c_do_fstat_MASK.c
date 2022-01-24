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
struct procstat {int dummy; } ;
struct passwd {int pw_uid; } ;
struct kinfo_proc {scalar_t__ ki_stat; } ;

/* Variables and functions */
 int KERN_PROC_PID ; 
 int KERN_PROC_PROC ; 
 int KERN_PROC_UID ; 
 scalar_t__ SZOMB ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int checkfile ; 
 int /*<<< orphan*/  FUNC1 (struct procstat*,struct kinfo_proc*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ fsflg ; 
 scalar_t__ FUNC4 (char*) ; 
 int FUNC5 (int,char**,char*) ; 
 struct passwd* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * memf ; 
 int mflg ; 
 int nflg ; 
 int /*<<< orphan*/ * nlistf ; 
 int /*<<< orphan*/ * optarg ; 
 int /*<<< orphan*/  optind ; 
 int /*<<< orphan*/  pflg ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct procstat*) ; 
 int /*<<< orphan*/  FUNC10 (struct procstat*,struct kinfo_proc*) ; 
 struct kinfo_proc* FUNC11 (struct procstat*,int,int,int*) ; 
 struct procstat* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct procstat* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char) ; 
 int sflg ; 
 int /*<<< orphan*/  uflg ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int vflg ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int
FUNC17(int argc, char **argv)
{
	struct kinfo_proc *p;
	struct passwd *passwd;
	struct procstat *procstat;
	int arg, ch, what;
	int cnt, i;

	arg = 0;
	what = KERN_PROC_PROC;
	nlistf = memf = NULL;
	while ((ch = FUNC5(argc, argv, "fmnp:su:vN:M:")) != -1)
		switch((char)ch) {
		case 'f':
			fsflg = 1;
			break;
		case 'M':
			memf = optarg;
			break;
		case 'N':
			nlistf = optarg;
			break;
		case 'm':
			mflg = 1;
			break;
		case 'n':
			nflg = 1;
			break;
		case 'p':
			if (pflg++)
				FUNC15();
			if (!FUNC7(*optarg)) {
				FUNC16("-p requires a process id");
				FUNC15();
			}
			what = KERN_PROC_PID;
			arg = FUNC0(optarg);
			break;
		case 's':
			sflg = 1;
			break;
		case 'u':
			if (uflg++)
				FUNC15();
			if (!(passwd = FUNC6(optarg)))
				FUNC2(1, "%s: unknown uid", optarg);
			what = KERN_PROC_UID;
			arg = passwd->pw_uid;
			break;
		case 'v':
			vflg = 1;
			break;
		case '?':
		default:
			FUNC15();
		}

	if (*(argv += optind)) {
		for (; *argv; ++argv) {
			if (FUNC4(*argv))
				checkfile = 1;
		}
		if (!checkfile)	/* file(s) specified, but none accessible */
			FUNC3(1);
	}

	if (fsflg && !checkfile) {
		/* -f with no files means use wd */
		if (FUNC4(".") == 0)
			FUNC3(1);
		checkfile = 1;
	}

	if (memf != NULL)
		procstat = FUNC12(nlistf, memf);
	else
		procstat = FUNC13();
	if (procstat == NULL)
		FUNC2(1, "procstat_open()");
	p = FUNC11(procstat, what, arg, &cnt);
	if (p == NULL)
		FUNC2(1, "procstat_getprocs()");

	/*
	 * Print header.
	 */
	if (nflg)
		FUNC8("%s",
"USER     CMD          PID   FD  DEV    INUM       MODE SZ|DV R/W");
	else
		FUNC8("%s",
"USER     CMD          PID   FD MOUNT      INUM MODE         SZ|DV R/W");
	if (checkfile && fsflg == 0)
		FUNC8(" NAME\n");
	else
		FUNC14('\n');

	/*
	 * Go through the process list.
	 */
	for (i = 0; i < cnt; i++) {
		if (p[i].ki_stat == SZOMB)
			continue;
		FUNC1(procstat, &p[i]);
	}
	FUNC10(procstat, p);
	FUNC9(procstat);
	return (0);
}