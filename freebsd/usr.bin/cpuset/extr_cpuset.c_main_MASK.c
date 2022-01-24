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
typedef  int pid_t ;
typedef  int /*<<< orphan*/  mask ;
typedef  int lwpid_t ;
typedef  int /*<<< orphan*/  domainset_t ;
typedef  int /*<<< orphan*/  domains ;
typedef  int cpusetid_t ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_LEVEL_CPUSET ; 
 int /*<<< orphan*/  CPU_LEVEL_ROOT ; 
 int /*<<< orphan*/  CPU_LEVEL_WHICH ; 
 int /*<<< orphan*/  CPU_WHICH_CPUSET ; 
 int /*<<< orphan*/  CPU_WHICH_DOMAIN ; 
 int /*<<< orphan*/  CPU_WHICH_IRQ ; 
 int /*<<< orphan*/  CPU_WHICH_JAIL ; 
 int /*<<< orphan*/  CPU_WHICH_PID ; 
 int /*<<< orphan*/  CPU_WHICH_TID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int Cflag ; 
 int DOMAINSET_POLICY_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ ENOENT ; 
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int cflag ; 
 scalar_t__ FUNC3 (int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int dflag ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int,char**,char*) ; 
 int gflag ; 
 int id ; 
 int iflag ; 
 int /*<<< orphan*/  jail_errmsg ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int jflag ; 
 int /*<<< orphan*/  level ; 
 int lflag ; 
 int nflag ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int pflag ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int rflag ; 
 int sflag ; 
 int tflag ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  which ; 
 int xflag ; 

int
FUNC18(int argc, char *argv[])
{
	domainset_t domains;
	cpusetid_t setid;
	cpuset_t mask;
	int policy;
	lwpid_t tid;
	pid_t pid;
	int ch;

	FUNC0(&mask);
	FUNC1(&domains);
	policy = DOMAINSET_POLICY_INVALID;
	level = CPU_LEVEL_WHICH;
	which = CPU_WHICH_PID;
	id = pid = tid = setid = -1;
	while ((ch = FUNC11(argc, argv, "Ccd:gij:l:n:p:rs:t:x:")) != -1) {
		switch (ch) {
		case 'C':
			Cflag = 1;
			break;
		case 'c':
			cflag = 1;
			level = CPU_LEVEL_CPUSET;
			break;
		case 'd':
			dflag = 1;
			which = CPU_WHICH_DOMAIN;
			id = FUNC2(optarg);
			break;
		case 'g':
			gflag = 1;
			break;
		case 'i':
			iflag = 1;
			break;
		case 'j':
			jflag = 1;
			which = CPU_WHICH_JAIL;
			id = FUNC12(optarg);
			if (id < 0)
				FUNC8(EXIT_FAILURE, "%s", jail_errmsg);
			break;
		case 'l':
			lflag = 1;
			FUNC13(optarg, &mask);
			break;
		case 'n':
			nflag = 1;
			FUNC14(optarg, &domains, &policy);
			break;
		case 'p':
			pflag = 1;
			which = CPU_WHICH_PID;
			id = pid = FUNC2(optarg);
			break;
		case 'r':
			level = CPU_LEVEL_ROOT;
			rflag = 1;
			break;
		case 's':
			sflag = 1;
			which = CPU_WHICH_CPUSET;
			id = setid = FUNC2(optarg);
			break;
		case 't':
			tflag = 1;
			which = CPU_WHICH_TID;
			id = tid = FUNC2(optarg);
			break;
		case 'x':
			xflag = 1;
			which = CPU_WHICH_IRQ;
			id = FUNC2(optarg);
			break;
		default:
			FUNC17();
		}
	}
	argc -= optind;
	argv += optind;
	if (gflag) {
		if (argc || Cflag || lflag || nflag)
			FUNC17();
		/* Only one identity specifier. */
		if (dflag + jflag + xflag + sflag + pflag + tflag > 1)
			FUNC17();
		if (iflag)
			FUNC16();
		else
			FUNC15();
		FUNC10(EXIT_SUCCESS);
	}

	if (dflag || iflag || rflag)
		FUNC17();
	/*
	 * The user wants to run a command with a set and possibly cpumask.
	 */
	if (argc) {
		if (Cflag || pflag || tflag || xflag || jflag)
			FUNC17();
		if (sflag) {
			if (FUNC6(CPU_WHICH_PID, -1, setid))
				FUNC7(argc, "setid");
		} else {
			if (FUNC3(&setid))
				FUNC7(argc, "newid");
		}
		if (lflag) {
			if (FUNC4(level, CPU_WHICH_PID,
			    -1, sizeof(mask), &mask) != 0)
				FUNC7(EXIT_FAILURE, "setaffinity");
		}
		if (nflag) {
			if (FUNC5(level, CPU_WHICH_PID,
			    -1, sizeof(domains), &domains, policy) != 0)
				FUNC7(EXIT_FAILURE, "setdomain");
		}
		errno = 0;
		FUNC9(*argv, argv);
		FUNC7(errno == ENOENT ? 127 : 126, "%s", *argv);
	}
	/*
	 * We're modifying something that presently exists.
	 */
	if (Cflag && (jflag || !pflag || sflag || tflag || xflag))
		FUNC17();
	if ((!lflag && !nflag) && cflag)
		FUNC17();
	if ((!lflag && !nflag) && !(Cflag || sflag))
		FUNC17();
	/* You can only set a mask on a thread. */
	if (tflag && (sflag | pflag | xflag | jflag))
		FUNC17();
	/* You can only set a mask on an irq. */
	if (xflag && (jflag | pflag | sflag | tflag))
		FUNC17();
	if (Cflag) {
		/*
		 * Create a new cpuset and move the specified process
		 * into the set.
		 */
		if (FUNC3(&setid) < 0)
			FUNC7(EXIT_FAILURE, "newid");
		sflag = 1;
	}
	if (pflag && sflag) {
		if (FUNC6(CPU_WHICH_PID, pid, setid))
			FUNC7(EXIT_FAILURE, "setid");
		/*
		 * If the user specifies a set and a list we want the mask
		 * to effect the pid and not the set.
		 */
		which = CPU_WHICH_PID;
		id = pid;
	}
	if (lflag) {
		if (FUNC4(level, which, id, sizeof(mask),
		    &mask) != 0)
			FUNC7(EXIT_FAILURE, "setaffinity");
	}
	if (nflag) {
		if (FUNC5(level, which, id, sizeof(domains),
		    &domains, policy) != 0)
			FUNC7(EXIT_FAILURE, "setdomain");
	}

	FUNC10(EXIT_SUCCESS);
}