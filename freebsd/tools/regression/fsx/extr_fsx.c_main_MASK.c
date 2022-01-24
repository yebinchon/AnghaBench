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
struct timespec {int tv_nsec; } ;
typedef  int ssize_t ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  logfile ;
typedef  int /*<<< orphan*/  goodfile ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  SIGVTALRM ; 
 int /*<<< orphan*/  SIGXCPU ; 
 int /*<<< orphan*/  SIGXFSZ ; 
 int /*<<< orphan*/  _IOLBF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  cleanup ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int closeprob ; 
 int debug ; 
 int debugstart ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ fd ; 
 scalar_t__ file_size ; 
 char* fname ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ fsxgoodfd ; 
 int /*<<< orphan*/ * fsxlogf ; 
 void* FUNC7 (char*,char**) ; 
 int FUNC8 (int,char**,char*) ; 
 scalar_t__ FUNC9 () ; 
 char* good_buf ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int invlprob ; 
 int lite ; 
 void* FUNC11 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  mapped_msync ; 
 int /*<<< orphan*/  mapped_reads ; 
 int /*<<< orphan*/  mapped_writes ; 
 int maxfilelen ; 
 int maxoplen ; 
 int /*<<< orphan*/  FUNC13 (char*,char,int) ; 
 int monitorend ; 
 void* monitorstart ; 
 int numops ; 
 scalar_t__ FUNC14 (char*,int,int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 char* original_buf ; 
 scalar_t__ page_mask ; 
 scalar_t__ page_size ; 
 void* progressinterval ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int quiet ; 
 int FUNC17 () ; 
 int /*<<< orphan*/  randomoplen ; 
 void* readbdy ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int seed ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int simulatedopcount ; 
 int /*<<< orphan*/  sizechecks ; 
 int /*<<< orphan*/  state ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*,int) ; 
 int style ; 
 char* temp_buf ; 
 int /*<<< orphan*/  FUNC25 () ; 
 void* truncbdy ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (char*,...) ; 
 int FUNC28 (scalar_t__,char*,size_t) ; 
 void* writebdy ; 

int
FUNC29(int argc, char **argv)
{
	int	i, ch;
	char	*endp;
	char goodfile[1024];
	char logfile[1024];
	struct timespec now;

	goodfile[0] = 0;
	logfile[0] = 0;

	page_size = FUNC9();
	page_mask = page_size - 1;

	FUNC20(stdout, (char *)0, _IOLBF, 0); /* line buffered stdout */

	while ((ch = FUNC8(argc, argv,
	    "b:c:di:l:m:no:p:qr:s:t:w:D:LN:OP:RS:UW")) != -1)
		switch (ch) {
		case 'b':
			simulatedopcount = FUNC7(optarg, &endp);
			if (!quiet)
				FUNC6(stdout, "Will begin at operation %d\n",
					simulatedopcount);
			if (simulatedopcount == 0)
				FUNC26();
			simulatedopcount -= 1;
			break;
		case 'c':
			closeprob = FUNC7(optarg, &endp);
			if (!quiet)
				FUNC6(stdout,
					"Chance of close/open is 1 in %d\n",
					closeprob);
			if (closeprob <= 0)
				FUNC26();
			break;
		case 'd':
			debug = 1;
			break;
		case 'i':
			invlprob = FUNC7(optarg, &endp);
			if (!quiet)
				FUNC6(stdout,
					"Chance of MS_INVALIDATE is 1 in %d\n",
					invlprob);
			if (invlprob <= 0)
				FUNC26();
			break;
		case 'l':
			maxfilelen = FUNC7(optarg, &endp);
			if (maxfilelen <= 0)
				FUNC26();
			break;
		case 'm':
			monitorstart = FUNC7(optarg, &endp);
			if (monitorstart < 0)
				FUNC26();
			if (!endp || *endp++ != ':')
				FUNC26();
			monitorend = FUNC7(endp, &endp);
			if (monitorend < 0)
				FUNC26();
			if (monitorend == 0)
				monitorend = -1; /* aka infinity */
			debug = 1;
		case 'n':
			sizechecks = 0;
			break;
		case 'o':
			maxoplen = FUNC7(optarg, &endp);
			if (maxoplen <= 0)
				FUNC26();
			break;
		case 'p':
			progressinterval = FUNC7(optarg, &endp);
			if (progressinterval < 0)
				FUNC26();
			break;
		case 'q':
			quiet = 1;
			break;
		case 'r':
			readbdy = FUNC7(optarg, &endp);
			if (readbdy <= 0)
				FUNC26();
			break;
		case 's':
			style = FUNC7(optarg, &endp);
			if (style < 0 || style > 1)
				FUNC26();
			break;
		case 't':
			truncbdy = FUNC7(optarg, &endp);
			if (truncbdy <= 0)
				FUNC26();
			break;
		case 'w':
			writebdy = FUNC7(optarg, &endp);
			if (writebdy <= 0)
				FUNC26();
			break;
		case 'D':
			debugstart = FUNC7(optarg, &endp);
			if (debugstart < 1)
				FUNC26();
			break;
		case 'L':
			lite = 1;
			break;
		case 'N':
			numops = FUNC7(optarg, &endp);
			if (numops < 0)
				FUNC26();
			break;
		case 'O':
			randomoplen = 0;
			break;
		case 'P':
			FUNC24(goodfile, optarg, sizeof(goodfile));
			FUNC22(goodfile, "/");
			FUNC24(logfile, optarg, sizeof(logfile));
			FUNC22(logfile, "/");
			break;
		case 'R':
			mapped_reads = 0;
			break;
		case 'S':
			seed = FUNC7(optarg, &endp);
			if (seed == 0) {
				if (FUNC1(CLOCK_REALTIME, &now) != 0)
					FUNC3(1, "clock_gettime");
				seed = now.tv_nsec % 10000;
			}
			if (!quiet)
				FUNC6(stdout, "Seed set to %d\n", seed);
			if (seed < 0)
				FUNC26();
			break;
		case 'W':
			mapped_writes = 0;
			if (!quiet)
				FUNC6(stdout, "mapped writes DISABLED\n");
			break;
		case 'U':
			mapped_msync = 0;
			if (!quiet)
				FUNC6(stdout, "mapped msync DISABLED\n");
			break;

		default:
			FUNC26();
			/* NOTREACHED */
		}
	argc -= optind;
	argv += optind;
	if (argc != 1)
		FUNC26();
	fname = argv[0];

	FUNC21(SIGHUP,	cleanup);
	FUNC21(SIGINT,	cleanup);
	FUNC21(SIGPIPE,	cleanup);
	FUNC21(SIGALRM,	cleanup);
	FUNC21(SIGTERM,	cleanup);
	FUNC21(SIGXCPU,	cleanup);
	FUNC21(SIGXFSZ,	cleanup);
	FUNC21(SIGVTALRM,	cleanup);
	FUNC21(SIGUSR1,	cleanup);
	FUNC21(SIGUSR2,	cleanup);

	FUNC10(seed, state, 256);
	FUNC19(state);
	fd = FUNC14(fname, O_RDWR|(lite ? 0 : O_CREAT|O_TRUNC), 0666);
	if (fd < 0) {
		FUNC16(fname);
		FUNC4(91);
	}
	FUNC23(goodfile, fname, 256);
	FUNC22 (goodfile, ".fsxgood");
	fsxgoodfd = FUNC14(goodfile, O_RDWR|O_CREAT|O_TRUNC, 0666);
	if (fsxgoodfd < 0) {
		FUNC16(goodfile);
		FUNC4(92);
	}
	FUNC23(logfile, fname, 256);
	FUNC22 (logfile, ".fsxlog");
	fsxlogf = FUNC5(logfile, "w");
	if (fsxlogf == NULL) {
		FUNC16(logfile);
		FUNC4(93);
	}
	if (lite) {
		off_t ret;
		file_size = maxfilelen = FUNC11(fd, (off_t)0, SEEK_END);
		if (file_size == (off_t)-1) {
			FUNC16(fname);
			FUNC27("main: lseek eof");
			FUNC4(94);
		}
		ret = FUNC11(fd, (off_t)0, SEEK_SET);
		if (ret == (off_t)-1) {
			FUNC16(fname);
			FUNC27("main: lseek 0");
			FUNC4(95);
		}
	}
	original_buf = (char *) FUNC12(maxfilelen);
	for (i = 0; i < maxfilelen; i++)
		original_buf[i] = FUNC17() % 256;
	good_buf = (char *) FUNC12(maxfilelen);
	FUNC13(good_buf, '\0', maxfilelen);
	temp_buf = (char *) FUNC12(maxoplen);
	FUNC13(temp_buf, '\0', maxoplen);
	if (lite) {	/* zero entire existing file */
		ssize_t written;

		written = FUNC28(fd, good_buf, (size_t)maxfilelen);
		if (written != maxfilelen) {
			if (written == -1) {
				FUNC16(fname);
				FUNC27("main: error on write");
			} else
				FUNC27("main: short write, 0x%x bytes instead of 0x%lx\n",
				     (unsigned)written, maxfilelen);
			FUNC4(98);
		}
	} else 
		FUNC0();

	while (numops == -1 || numops--)
		FUNC25();

	if (FUNC2(fd)) {
		FUNC16("close");
		FUNC18(99);
	}
	FUNC15("All operations completed A-OK!\n");

	FUNC4(0);
	return 0;
}