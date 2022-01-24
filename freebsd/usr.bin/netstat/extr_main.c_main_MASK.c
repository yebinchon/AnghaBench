#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct protox {scalar_t__ pr_name; } ;
struct TYPE_3__ {int /*<<< orphan*/  n_value; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ AF_LINK ; 
 scalar_t__ AF_NETGRAPH ; 
 scalar_t__ AF_UNIX ; 
 scalar_t__ AF_UNSPEC ; 
 int Aflag ; 
 int Bflag ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int Lflag ; 
 size_t N_SFSTAT ; 
 size_t N_UNP_COUNT ; 
 size_t N_UNP_DHEAD ; 
 size_t N_UNP_GENCNT ; 
 size_t N_UNP_SHEAD ; 
 size_t N_UNP_SPHEAD ; 
 scalar_t__ PF_KEY ; 
 int Pflag ; 
 int Qflag ; 
 int Rflag ; 
 int Tflag ; 
 int Wflag ; 
 scalar_t__ af ; 
 int aflag ; 
 void* FUNC0 (char*) ; 
 int bflag ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int dflag ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int,char**,char*) ; 
 int gflag ; 
 int hflag ; 
 int iflag ; 
 char* interface ; 
 scalar_t__ interval ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct protox* ip6protox ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 scalar_t__ FUNC8 (char) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/ * kvmd ; 
 int live ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* memf ; 
 int mflag ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 struct protox* FUNC16 (char*) ; 
 struct protox* netgraphprotox ; 
 int /*<<< orphan*/  FUNC17 () ; 
 TYPE_1__* nl ; 
 char* nlistf ; 
 void* noutputs ; 
 int numeric_addr ; 
 int numeric_port ; 
 char* optarg ; 
 scalar_t__ optind ; 
 struct protox* pfkeyprotox ; 
 int pflag ; 
 int /*<<< orphan*/  FUNC18 (struct protox*,scalar_t__,int*) ; 
 struct protox* protox ; 
 int rflag ; 
 int /*<<< orphan*/  FUNC19 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 scalar_t__ sflag ; 
 int /*<<< orphan*/  FUNC24 (char*,char*) ; 
 int FUNC25 (char*,char**,int /*<<< orphan*/ ) ; 
 void* unit ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int xflag ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 int /*<<< orphan*/  FUNC30 (int,char*) ; 
 int /*<<< orphan*/  FUNC31 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 (char*) ; 
 int FUNC34 (int,char**) ; 
 int zflag ; 

int
FUNC35(int argc, char *argv[])
{
	struct protox *tp = NULL;  /* for printing cblocks & stats */
	int ch;
	int fib = -1;
	char *endptr;
	bool first = true;

	af = AF_UNSPEC;

	argc = FUNC34(argc, argv);
	if (argc < 0)
		FUNC3(EXIT_FAILURE);

	while ((ch = FUNC5(argc, argv, "46AaBbdF:f:ghI:iLlM:mN:nPp:Qq:RrSTsuWw:xz"))
	    != -1)
		switch(ch) {
		case '4':
#ifdef INET
			af = AF_INET;
#else
			FUNC2(1, "IPv4 support is not compiled in");
#endif
			break;
		case '6':
#ifdef INET6
			af = AF_INET6;
#else
			FUNC2(1, "IPv6 support is not compiled in");
#endif
			break;
		case 'A':
			Aflag = 1;
			break;
		case 'a':
			aflag = 1;
			break;
		case 'B':
			Bflag = 1;
			break;
		case 'b':
			bflag = 1;
			break;
		case 'd':
			dflag = 1;
			break;
		case 'F':
			fib = FUNC25(optarg, &endptr, 0);
			if (*endptr != '\0' ||
			    (fib == 0 && (errno == EINVAL || errno == ERANGE)))
				FUNC31(1, "%s: invalid fib", optarg);
			break;
		case 'f':
			if (FUNC24(optarg, "inet") == 0)
				af = AF_INET;
#ifdef INET6
			else if (strcmp(optarg, "inet6") == 0)
				af = AF_INET6;
#endif
#ifdef IPSEC
			else if (strcmp(optarg, "pfkey") == 0)
				af = PF_KEY;
#endif
			else if (FUNC24(optarg, "unix") == 0 ||
				 FUNC24(optarg, "local") == 0)
				af = AF_UNIX;
#ifdef NETGRAPH
			else if (strcmp(optarg, "ng") == 0
			    || strcmp(optarg, "netgraph") == 0)
				af = AF_NETGRAPH;
#endif
			else if (FUNC24(optarg, "link") == 0)
				af = AF_LINK;
			else {
				FUNC31(1, "%s: unknown address family",
				    optarg);
			}
			break;
		case 'g':
			gflag = 1;
			break;
		case 'h':
			hflag = 1;
			break;
		case 'I': {
			char *cp;

			iflag = 1;
			for (cp = interface = optarg; FUNC7(*cp); cp++)
				continue;
			unit = FUNC0(cp);
			break;
		}
		case 'i':
			iflag = 1;
			break;
		case 'L':
			Lflag = 1;
			break;
		case 'M':
			memf = optarg;
			break;
		case 'm':
			mflag = 1;
			break;
		case 'N':
			nlistf = optarg;
			break;
		case 'n':
			numeric_addr = numeric_port = 1;
			break;
		case 'P':
			Pflag = 1;
			break;
		case 'p':
			if ((tp = FUNC16(optarg)) == NULL) {
				FUNC31(1, "%s: unknown or uninstrumented "
				    "protocol", optarg);
			}
			pflag = 1;
			break;
		case 'Q':
			Qflag = 1;
			break;
		case 'q':
			noutputs = FUNC0(optarg);
			if (noutputs != 0)
				noutputs++;
			break;
		case 'r':
			rflag = 1;
			break;
		case 'R':
			Rflag = 1;
			break;
		case 's':
			++sflag;
			break;
		case 'S':
			numeric_addr = 1;
			break;
		case 'u':
			af = AF_UNIX;
			break;
		case 'W':
		case 'l':
			Wflag = 1;
			break;
		case 'w':
			interval = FUNC0(optarg);
			iflag = 1;
			break;
		case 'T':
			Tflag = 1;
			break;
		case 'x':
			xflag = 1;
			break;
		case 'z':
			zflag = 1;
			break;
		case '?':
		default:
			FUNC27();
		}
	argv += optind;
	argc -= optind;

#define	BACKWARD_COMPATIBILITY
#ifdef	BACKWARD_COMPATIBILITY
	if (*argv) {
		if (FUNC8(**argv)) {
			interval = FUNC0(*argv);
			if (interval <= 0)
				FUNC27();
			++argv;
			iflag = 1;
		}
		if (*argv) {
			nlistf = *argv;
			if (*++argv)
				memf = *argv;
		}
	}
#endif

	/*
	 * Discard setgid privileges if not the running kernel so that bad
	 * guys can't print interesting stuff from kernel memory.
	 */
	live = (nlistf == NULL && memf == NULL);
	if (!live) {
		if (FUNC21(FUNC4()) != 0)
			FUNC30(-1, "setgid");
		/* Load all necessary kvm symbols */
		FUNC10(nl);
	}

	if (xflag && Tflag)
		FUNC31(1, "-x and -T are incompatible, pick one.");

	if (Bflag) {
		if (!live)
			FUNC27();
		FUNC1(interface);
		FUNC32();
		FUNC3(0);
	}
	if (mflag) {
		if (!live) {
			if (FUNC9(0, NULL, 0) == 0)
				FUNC11(kvmd, nl[N_SFSTAT].n_value);
		} else
			FUNC11(NULL, 0);
		FUNC32();
		FUNC3(0);
	}
	if (Qflag) {
		if (!live) {
			if (FUNC9(0, NULL, 0) == 0)
				FUNC17();
		} else
			FUNC17();
		FUNC32();
		FUNC3(0);
	}
#if 0
	/*
	 * Keep file descriptors open to avoid overhead
	 * of open/close on each call to get* routines.
	 */
	sethostent(1);
	setnetent(1);
#else
	/*
	 * This does not make sense any more with DNS being default over
	 * the files.  Doing a setXXXXent(1) causes a tcp connection to be
	 * used for the queries, which is slower.
	 */
#endif
	if (iflag && !sflag) {
		FUNC33("statistics");
		FUNC6(NULL, af);
		FUNC28("statistics");
		FUNC32();
		FUNC3(0);
	}
	if (rflag) {
		FUNC33("statistics");
		if (sflag) {
			FUNC20();
		} else
			FUNC19(fib, af);
		FUNC28("statistics");
		FUNC32();
		FUNC3(0);
	}

	if (gflag) {
		FUNC33("statistics");
		if (sflag) {
			if (af == AF_INET || af == AF_UNSPEC)
				FUNC15();
#ifdef INET6
			if (af == AF_INET6 || af == AF_UNSPEC)
				mrt6_stats();
#endif
		} else {
			if (af == AF_INET || af == AF_UNSPEC)
				FUNC13();
#ifdef INET6
			if (af == AF_INET6 || af == AF_UNSPEC)
				mroute6pr();
#endif
		}
		FUNC28("statistics");
		FUNC32();
		FUNC3(0);
	}

	if (tp) {
		FUNC33("statistics");
		FUNC18(tp, tp->pr_name, &first);
		if (!first)
			FUNC29("socket");
		FUNC28("statistics");
		FUNC32();
		FUNC3(0);
	}

	FUNC33("statistics");
	if (af == AF_INET || af == AF_UNSPEC)
		for (tp = protox; tp->pr_name; tp++)
			FUNC18(tp, tp->pr_name, &first);
#ifdef INET6
	if (af == AF_INET6 || af == AF_UNSPEC)
		for (tp = ip6protox; tp->pr_name; tp++)
			printproto(tp, tp->pr_name, &first);
#endif /*INET6*/
#ifdef IPSEC
	if (af == PF_KEY || af == AF_UNSPEC)
		for (tp = pfkeyprotox; tp->pr_name; tp++)
			printproto(tp, tp->pr_name, &first);
#endif /*IPSEC*/
#ifdef NETGRAPH
	if (af == AF_NETGRAPH || af == AF_UNSPEC)
		for (tp = netgraphprotox; tp->pr_name; tp++)
			printproto(tp, tp->pr_name, &first);
#endif /* NETGRAPH */
	if ((af == AF_UNIX || af == AF_UNSPEC) && !sflag)
		FUNC26(nl[N_UNP_COUNT].n_value, nl[N_UNP_GENCNT].n_value,
		    nl[N_UNP_DHEAD].n_value, nl[N_UNP_SHEAD].n_value,
		    nl[N_UNP_SPHEAD].n_value, &first);

	if (!first)
		FUNC29("socket");
	FUNC28("statistics");
	FUNC32();
	FUNC3(0);
}