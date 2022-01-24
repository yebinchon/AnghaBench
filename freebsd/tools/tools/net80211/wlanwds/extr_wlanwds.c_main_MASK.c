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
struct rt_msghdr {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int LOG_CONS ; 
 int /*<<< orphan*/  LOG_DAEMON ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int LOG_PERROR ; 
 int LOG_PID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PF_ROUTE ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int discover_on_join ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt_msghdr*,int /*<<< orphan*/ ) ; 
 char** ifnets ; 
 int nifnets ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 void* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 void* script ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

int
FUNC12(int argc, char *argv[])
{
	const char *progname = argv[0];
	const char *pidfile = NULL;
	int s, c, logmask, bg = 1;
	char msg[2048];
	int log_stderr = 0;

	logmask = FUNC0(LOG_INFO);
	while ((c = FUNC4(argc, argv, "efjP:s:tv")) != -1)
		switch (c) {
		case 'e':
			log_stderr = LOG_PERROR;
			break;
		case 'f':
			bg = 0;
			break;
		case 'j':
			discover_on_join = 1;
			break;
		case 'P':
			pidfile = optarg;
			break;
		case 's':
			script = optarg;
			break;
		case 't':
			logmask = FUNC0(LOG_ERR);
			break;
		case 'v':
			logmask = FUNC0(LOG_DEBUG);
			break;
		case '?':
			FUNC11(progname);
			/*NOTREACHED*/
		}
	argc -= optind, argv += optind;
	if (argc == 0) {
		FUNC3(stderr, "%s: no ifnet's specified to monitor\n",
		    progname);
		FUNC11(progname);
	}
	ifnets = argv;
	nifnets = argc;

	s = FUNC10(PF_ROUTE, SOCK_RAW, 0);
	if (s < 0)
		FUNC2(EX_OSERR, "socket");
	/*
	 * Scan for inherited state.
	 */
	FUNC8(s);

	/* XXX what directory to work in? */
	if (bg && FUNC1(0, 0) < 0)
		FUNC2(EX_OSERR, "daemon");

	FUNC6("wlanwds", log_stderr | LOG_PID | LOG_CONS, LOG_DAEMON);
	FUNC9(logmask);

	for (;;) {
		ssize_t n = FUNC7(s, msg, sizeof(msg));
		FUNC5((struct rt_msghdr *)msg, n);
	}
	return 0;
}