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
struct hostent {scalar_t__ h_addr; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
struct TYPE_3__ {scalar_t__ class; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  L2CAP_LM_MASTER ; 
 scalar_t__ L2CAP_PSM_BNEP ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  LOG_DAEMON ; 
 int LOG_NDELAY ; 
 int LOG_PERROR ; 
 int LOG_PID ; 
 scalar_t__ SDP_SERVICE_CLASS_PANU ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char**,char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 
 struct hostent* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 char* control_path ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 () ; 
 int FUNC18 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  h_errno ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 char* interface_name ; 
 int /*<<< orphan*/  l2cap_mode ; 
 scalar_t__ l2cap_psm ; 
 int /*<<< orphan*/  local_bdaddr ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  main_exit ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  remote_bdaddr ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int server_limit ; 
 scalar_t__ service_class ; 
 int /*<<< orphan*/ * service_name ; 
 TYPE_1__* services ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC26 (char*,char) ; 
 unsigned long FUNC27 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 (int*) ; 
 int /*<<< orphan*/  FUNC31 (char*) ; 

int
FUNC32(int argc, char *argv[])
{
	unsigned long	ul;
	char *		ep;
	int		ch, status;

	while ((ch = FUNC18(argc, argv, "a:c:d:i:l:m:p:S:s:")) != -1) {
		switch (ch) {
		case 'a': /* remote address */
			if (!FUNC7(optarg, &remote_bdaddr)) {
				struct hostent  *he;

				if ((he = FUNC9(optarg)) == NULL)
					FUNC13(EXIT_FAILURE, "%s: %s",
					    optarg, FUNC20(h_errno));

				FUNC6(&remote_bdaddr,
					(bdaddr_t *)he->h_addr);
			}

			break;

		case 'c': /* control socket path */
			control_path = optarg;
			break;

		case 'd': /* local address */
			if (!FUNC8(optarg, &local_bdaddr)) {
				struct hostent  *he;

				if ((he = FUNC9(optarg)) == NULL)
					FUNC13(EXIT_FAILURE, "%s: %s",
					    optarg, FUNC20(h_errno));

				FUNC6(&local_bdaddr,
					(bdaddr_t *)he->h_addr);
			}
			break;

		case 'i': /* tap interface name */
			if (FUNC26(optarg, '/') == NULL) {
				FUNC4(&ep, "/dev/%s", optarg);
				interface_name = ep;
			} else
				interface_name = optarg;
			break;

		case 'l': /* limit server sessions */
			ul = FUNC27(optarg, &ep, 10);
			if (*optarg == '\0' || *ep != '\0' || ul == 0)
				FUNC13(EXIT_FAILURE, "%s: invalid session limit",
					optarg);

			server_limit = ul;
			break;

		case 'm': /* link mode */
			FUNC31("Setting link mode is not yet supported");
			break;

		case 'p': /* protocol/service multiplexer */
			ul = FUNC27(optarg, &ep, 0);
			if (*optarg == '\0' || *ep != '\0'
			    || ul > 0xffff || FUNC0(ul))
				FUNC13(EXIT_FAILURE, "%s: invalid PSM", optarg);

			l2cap_psm = ul;
			break;

		case 's': /* service */
		case 'S': /* service (no SDP) */
			for (ul = 0; FUNC25(optarg, services[ul].name); ul++) {
				if (ul == FUNC3(services))
					FUNC13(EXIT_FAILURE, "%s: unknown service", optarg);
			}

			if (ch == 's')
				service_name = services[ul].name;

			service_class = services[ul].class;
			break;

		default:
			FUNC29();
			/* NOTREACHED */
		}
	}

	argc -= optind;
	argv += optind;

	/* validate options */
	if (FUNC5(&local_bdaddr) || service_class == 0)
		FUNC29();

	if (!FUNC5(&remote_bdaddr) && (server_limit != 0 ||
	    control_path != NULL || (service_name != NULL && l2cap_psm != 0)))
		FUNC29();

	/* default options */
	if (interface_name == NULL)
		interface_name = "/dev/tap";

	if (l2cap_psm == 0)
		l2cap_psm = L2CAP_PSM_BNEP;

	if (FUNC5(&remote_bdaddr) && server_limit == 0) {
		if (service_class == SDP_SERVICE_CLASS_PANU)
			server_limit = 1;
		else
			server_limit = 7;
	}

#ifdef L2CAP_LM_MASTER
	if (server_limit > 1 && service_class != SDP_SERVICE_CLASS_PANU)
		l2cap_mode |= L2CAP_LM_MASTER;
#endif

	/*
	 * fork() now so that the setup can be done in the child process
	 * (as kqueue is not inherited) but block in the parent until the
	 * setup is finished so we can return an error if necessary.
	 */
	switch(FUNC17()) {
	case -1: /* bad */
		FUNC12(EXIT_FAILURE, "fork() failed");

	case 0:	/* child */
		FUNC24(SIGPIPE, SIG_IGN);

		FUNC22(FUNC19(), LOG_NDELAY | LOG_PERROR | LOG_PID, LOG_DAEMON);

		FUNC10();
		FUNC23();
		FUNC15();
		FUNC11();
		FUNC28();

		FUNC21();

		FUNC14();
		break;

	default: /* parent */
		FUNC24(SIGUSR1, main_exit);
		FUNC30(&status);

		if (FUNC2(status))
			FUNC16(FUNC1(status));

		break;
	}

	FUNC12(EXIT_FAILURE, "exiting");
}