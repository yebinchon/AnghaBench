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
struct stat {scalar_t__ st_uid; int /*<<< orphan*/  st_mode; } ;
typedef  int mode_t ;

/* Variables and functions */
 int ALL_POINTS ; 
 scalar_t__ CLEAR ; 
 scalar_t__ CLEARALL ; 
 int /*<<< orphan*/  DEFFILEMODE ; 
 int DEF_POINTS ; 
 scalar_t__ ENOENT ; 
 int KTRFAC_INHERIT ; 
 int KTRFLAG_DESCEND ; 
 int KTROP_CLEAR ; 
 int KTROP_CLEARFILE ; 
 scalar_t__ NOTSET ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_NONBLOCK ; 
 int O_WRONLY ; 
 int PROC_ABI_POINTS ; 
 int /*<<< orphan*/  SIGSYS ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ clear ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* def_tracefile ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,struct stat*) ; 
 int FUNC7 (int,char**,char*) ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 (char*) ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 (char const*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  no_ktrace ; 
 int FUNC12 (char const*,int,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 scalar_t__ pid ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int) ; 
 int FUNC16 (char const*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 

int
FUNC19(int argc, char *argv[])
{
	int append, ch, fd, inherit, ops, trpoints;
	const char *tracefile;
	mode_t omask;
	struct stat sb;

	append = ops = inherit = 0;
	trpoints = DEF_POINTS;
	tracefile = def_tracefile;
	while ((ch = FUNC7(argc,argv,"aCcdf:g:ip:t:")) != -1)
		switch((char)ch) {
		case 'a':
			append = 1;
			break;
		case 'C':
			FUNC13("1", CLEARALL);
			break;
		case 'c':
			FUNC13(NULL, CLEAR);
			break;
		case 'd':
			ops |= KTRFLAG_DESCEND;
			break;
		case 'f':
			tracefile = optarg;
			break;
		case 'g':
			FUNC13(optarg, NOTSET);
			pid = -pid;
			break;
		case 'i':
			inherit = 1;
			break;
		case 'p':
			FUNC13(optarg, NOTSET);
			break;
		case 't':
			trpoints = FUNC9(optarg);
			if (trpoints < 0) {
				FUNC18("unknown facility in %s", optarg);
				FUNC17();
			}
			break;
		default:
			FUNC17();
		}

	argv += optind;
	argc -= optind;

	/* must have either -[Cc], a pid or a command */
	if (clear == NOTSET && pid == 0 && argc == 0)
		FUNC17();
	/* can't have both a pid and a command */
	/* (note that -C sets pid to 1) */
	if (pid != 0 && argc > 0) {
		FUNC17();
	}

	if (inherit)
		trpoints |= KTRFAC_INHERIT;

	(void)FUNC14(SIGSYS, no_ktrace);
	if (clear != NOTSET) {
		if (clear == CLEARALL) {
			ops = KTROP_CLEAR | KTRFLAG_DESCEND;
			trpoints = ALL_POINTS;
		} else {
			ops |= pid ? KTROP_CLEAR : KTROP_CLEARFILE;
		}
		if (FUNC11(tracefile, ops, trpoints, pid) < 0)
			FUNC2(1, "%s", tracefile);
		FUNC5(0);
	}

	omask = FUNC15(S_IRWXG|S_IRWXO);
	if (append) {
		if ((fd = FUNC12(tracefile, O_CREAT | O_WRONLY | O_NONBLOCK,
		    DEFFILEMODE)) < 0)
			FUNC2(1, "%s", tracefile);
		if (FUNC6(fd, &sb) != 0 || sb.st_uid != FUNC10())
			FUNC3(1, "refuse to append to %s not owned by you",
			    tracefile);
		if (!(FUNC0(sb.st_mode)))
			FUNC3(1, "%s not regular file", tracefile);
	} else {
		if (FUNC16(tracefile) == -1 && errno != ENOENT)
			FUNC2(1, "unlink %s", tracefile);
		if ((fd = FUNC12(tracefile, O_CREAT | O_EXCL | O_WRONLY,
		    DEFFILEMODE)) < 0)
			FUNC2(1, "%s", tracefile);
	}
	(void)FUNC15(omask);
	(void)FUNC1(fd);

	trpoints |= PROC_ABI_POINTS;

	if (argc > 0) { 
		if (FUNC11(tracefile, ops, trpoints, FUNC8()) < 0)
			FUNC2(1, "%s", tracefile);
		FUNC4(*argv, argv);
		FUNC2(1, "exec of '%s' failed", *argv);
	}
	if (FUNC11(tracefile, ops, trpoints, pid) < 0)
		FUNC2(1, "%s", tracefile);
	FUNC5(0);
}