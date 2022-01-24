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
typedef  int /*<<< orphan*/  uint32_t ;
struct sockaddr_rfcomm {int rfcomm_len; int rfcomm_channel; int server_channel; int /*<<< orphan*/  rfcomm_bdaddr; void* rfcomm_family; int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_handler; } ;
struct sockaddr {int dummy; } ;
struct sigaction {int rfcomm_len; int rfcomm_channel; int server_channel; int /*<<< orphan*/  rfcomm_bdaddr; void* rfcomm_family; int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_handler; } ;
struct hostent {int /*<<< orphan*/ * h_addr; } ;
typedef  int /*<<< orphan*/  sp ;
typedef  struct sockaddr_rfcomm sdp_sp_profile_t ;
typedef  int /*<<< orphan*/  sa ;
typedef  int /*<<< orphan*/  ra ;
typedef  int /*<<< orphan*/  ma ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  bt_addr_any ;
typedef  int /*<<< orphan*/  bdaddr_t ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 void* AF_BLUETOOTH ; 
 int /*<<< orphan*/  BLUETOOTH_PROTO_RFCOMM ; 
 scalar_t__ EINTR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_DAEMON ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int LOG_NDELAY ; 
 int LOG_PERROR ; 
 int LOG_PID ; 
 int /*<<< orphan*/ * NG_HCI_BDADDR_ANY ; 
 int /*<<< orphan*/  PF_BLUETOOTH ; 
 int /*<<< orphan*/  SA_NOCLDWAIT ; 
 int SDP_SERVICE_CLASS_DIALUP_NETWORKING ; 
 int SDP_SERVICE_CLASS_FAX ; 
 int SDP_SERVICE_CLASS_LAN_ACCESS_USING_PPP ; 
 int SDP_SERVICE_CLASS_SERIAL_PORT ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int SPPD_BUFFER_SIZE ; 
 int /*<<< orphan*/  SPPD_IDENT ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int FUNC3 (int,struct sockaddr*,int*) ; 
 scalar_t__ FUNC4 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct hostent* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int,struct sockaddr*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ done ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int,int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC16 (int,char**,char*) ; 
 scalar_t__ FUNC17 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  h_errno ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int,int) ; 
 scalar_t__ FUNC20 (int,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (struct sockaddr_rfcomm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * optarg ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC26 (void*) ; 
 scalar_t__ FUNC27 (void*) ; 
 void* FUNC28 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC29 (void*,int,int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (void*,int /*<<< orphan*/ ) ; 
 int FUNC31 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ ,struct sockaddr_rfcomm*,int /*<<< orphan*/ *) ; 
 int FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC34 (int,char*,int) ; 
 int /*<<< orphan*/  sppd_sighandler ; 
 scalar_t__ FUNC35 (char**,int*,int*) ; 
 scalar_t__ FUNC36 (int,char*,int) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC37 (scalar_t__) ; 
 int FUNC38 (int /*<<< orphan*/ *,char**,int) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 () ; 
 int /*<<< orphan*/  FUNC42 (char*) ; 

int
FUNC43(int argc, char *argv[]) 
{
	struct sigaction	 sa;
	struct sockaddr_rfcomm	 ra;
	bdaddr_t		 addr;
	int			 n, background, channel, service,
				 s, amaster, aslave, fd, doserver,
				 dopty;
	fd_set			 rfd;
	char			*tty = NULL, *ep = NULL, buf[SPPD_BUFFER_SIZE];

	FUNC22(&addr, NG_HCI_BDADDR_ANY, sizeof(addr));
	background = channel = 0;
	service = SDP_SERVICE_CLASS_SERIAL_PORT;
	doserver = 0;
	dopty = 0;

	/* Parse command line options */
	while ((n = FUNC16(argc, argv, "a:bc:thS")) != -1) {
		switch (n) { 
		case 'a': /* BDADDR */
			if (!FUNC5(optarg, &addr)) {
				struct hostent	*he = NULL;

				if ((he = FUNC6(optarg)) == NULL)
					FUNC13(1, "%s: %s", optarg, FUNC18(h_errno));

				FUNC22(&addr, he->h_addr, sizeof(addr));
			}
			break;

		case 'c': /* RFCOMM channel */
			channel = FUNC38(optarg, &ep, 10);
			if (*ep != '\0') {
				channel = 0;
				switch (FUNC40(optarg[0])) {
				case 'd': /* DialUp Networking */
					service = SDP_SERVICE_CLASS_DIALUP_NETWORKING;
					break;

				case 'f': /* Fax */
					service = SDP_SERVICE_CLASS_FAX;
					break;

				case 'l': /* LAN */
					service = SDP_SERVICE_CLASS_LAN_ACCESS_USING_PPP;
					break;

				case 's': /* Serial Port */
					service = SDP_SERVICE_CLASS_SERIAL_PORT;
					break;

				default:
					FUNC13(1, "Unknown service name: %s",
						optarg);
					/* NOT REACHED */
				}
			}
			break;

		case 'b': /* Run in background */
			background = 1;
			break;

		case 't': /* Open pseudo TTY */
			dopty = 1;
			break;

		case 'S':
			doserver = 1;
			break;

		case 'h':
		default:
			FUNC41();
			/* NOT REACHED */
		}
	}

	/* Check if we have everything we need */
	if (!doserver && FUNC21(&addr, NG_HCI_BDADDR_ANY, sizeof(addr)) == 0)
		FUNC41();
		/* NOT REACHED */

	/* Set signal handlers */
	FUNC23(&sa, 0, sizeof(sa));
	sa.sa_handler = sppd_sighandler;

	if (FUNC32(SIGTERM, &sa, NULL) < 0)
		FUNC11(1, "Could not sigaction(SIGTERM)");
 
	if (FUNC32(SIGHUP, &sa, NULL) < 0)
		FUNC11(1, "Could not sigaction(SIGHUP)");
 
	if (FUNC32(SIGINT, &sa, NULL) < 0)
		FUNC11(1, "Could not sigaction(SIGINT)");

	sa.sa_handler = SIG_IGN;
	sa.sa_flags = SA_NOCLDWAIT;

	if (FUNC32(SIGCHLD, &sa, NULL) < 0)
		FUNC11(1, "Could not sigaction(SIGCHLD)");

	/* Open TTYs */
	if (dopty) {
		if (FUNC35(&tty, &amaster, &aslave) < 0)
			FUNC14(1);

		fd = amaster;
	} else {
		if (background)
			FUNC41();

		amaster = STDIN_FILENO;
		fd = STDOUT_FILENO;
	}

	/* Open RFCOMM connection */

	if (doserver) {
		struct sockaddr_rfcomm	 ma;
		bdaddr_t		 bt_addr_any;
		sdp_sp_profile_t	 sp;
		void			*ss;
		uint32_t		 sdp_handle;
		int			 acceptsock, aaddrlen;

		acceptsock = FUNC33(PF_BLUETOOTH, SOCK_STREAM,
					BLUETOOTH_PROTO_RFCOMM);
		if (acceptsock < 0)
			FUNC11(1, "Could not create socket");

		FUNC22(&bt_addr_any, NG_HCI_BDADDR_ANY, sizeof(bt_addr_any));

		FUNC23(&ma, 0, sizeof(ma));
		ma.rfcomm_len = sizeof(ma);
		ma.rfcomm_family = AF_BLUETOOTH;
		FUNC22(&ma.rfcomm_bdaddr, &bt_addr_any, sizeof(bt_addr_any));
		ma.rfcomm_channel = channel;

		if (FUNC4(acceptsock, (struct sockaddr *)&ma, sizeof(ma)) < 0)
			FUNC11(1, "Could not bind socket on channel %d", channel);
		if (FUNC19(acceptsock, 10) != 0)
			FUNC11(1, "Could not listen on socket");

		aaddrlen = sizeof(ma);
		if (FUNC17(acceptsock, (struct sockaddr *)&ma, &aaddrlen) < 0)
			FUNC11(1, "Could not get socket name");
		channel = ma.rfcomm_channel;

		ss = FUNC28(NULL);
		if (ss == NULL)
			FUNC13(1, "Unable to create local SDP session");
		if (FUNC27(ss) != 0)
			FUNC13(1, "Unable to open local SDP session. %s (%d)",
			    FUNC37(FUNC27(ss)), FUNC27(ss));
		FUNC23(&sp, 0, sizeof(sp));
		sp.server_channel = channel;

		if (FUNC29(ss, SDP_SERVICE_CLASS_SERIAL_PORT,
				&bt_addr_any, (void *)&sp, sizeof(sp),
				&sdp_handle) != 0) {
			FUNC13(1, "Unable to register LAN service with "
			    "local SDP daemon. %s (%d)",
			    FUNC37(FUNC27(ss)), FUNC27(ss));
		}

		s = -1;
		while (s < 0) {
			aaddrlen = sizeof(ra);
			s = FUNC3(acceptsock, (struct sockaddr *)&ra,
			    &aaddrlen);
			if (s < 0)
				FUNC11(1, "Unable to accept()");
			if (FUNC21(&addr, NG_HCI_BDADDR_ANY, sizeof(addr)) &&
			    FUNC21(&addr, &ra.rfcomm_bdaddr, sizeof(addr))) {
				FUNC42("Connect from wrong client");
				FUNC7(s);
				s = -1;
			}
		}
		FUNC30(ss, sdp_handle);
		FUNC26(ss);
		FUNC7(acceptsock);
	} else {
		/* Check channel, if was not set then obtain it via SDP */
		if (channel == 0 && service != 0)
			if (FUNC25(NULL, &addr,
				    service, &channel, &n) != 0)
				FUNC12(1, n, "Could not obtain RFCOMM channel");
		if (channel <= 0 || channel > 30)
			FUNC13(1, "Invalid RFCOMM channel number %d", channel);

		s = FUNC33(PF_BLUETOOTH, SOCK_STREAM, BLUETOOTH_PROTO_RFCOMM);
		if (s < 0)
			FUNC11(1, "Could not create socket");

		FUNC23(&ra, 0, sizeof(ra));
		ra.rfcomm_len = sizeof(ra);
		ra.rfcomm_family = AF_BLUETOOTH;

		if (FUNC4(s, (struct sockaddr *) &ra, sizeof(ra)) < 0)
			FUNC11(1, "Could not bind socket");

		FUNC22(&ra.rfcomm_bdaddr, &addr, sizeof(ra.rfcomm_bdaddr));
		ra.rfcomm_channel = channel;

		if (FUNC9(s, (struct sockaddr *) &ra, sizeof(ra)) < 0)
			FUNC11(1, "Could not connect socket");
	}

	/* Became daemon if required */
	if (background && FUNC10(0, 0) < 0)
		FUNC11(1, "Could not daemon()");

	FUNC24(SPPD_IDENT, LOG_NDELAY|LOG_PERROR|LOG_PID, LOG_DAEMON);
	FUNC39(LOG_INFO, "Starting on %s...", (tty != NULL)? tty : "stdin/stdout");

	/* Print used tty on stdout for wrappers to pick up */
	if (!background)
		FUNC15(stdout, "%s\n", tty);

	for (done = 0; !done; ) {
		FUNC2(&rfd);
		FUNC1(amaster, &rfd);
		FUNC1(s, &rfd);

		n = FUNC31(FUNC20(amaster, s) + 1, &rfd, NULL, NULL, NULL);
		if (n < 0) {
			if (errno == EINTR)
				continue;

			FUNC39(LOG_ERR, "Could not select(). %s",
					FUNC37(errno));
			FUNC14(1);
		}

		if (n == 0)
			continue;

		if (FUNC0(amaster, &rfd)) {
			n = FUNC34(amaster, buf, sizeof(buf));
			if (n < 0) {
				FUNC39(LOG_ERR, "Could not read master pty, " \
					"fd=%d. %s", amaster, FUNC37(errno));
				FUNC14(1);
			}

			if (n == 0)
				break; /* XXX */

			if (FUNC36(s, buf, n) < 0) {
				FUNC39(LOG_ERR, "Could not write to socket, " \
					"fd=%d, size=%d. %s",
					s, n, FUNC37(errno));
				FUNC14(1);
			}
		}

		if (FUNC0(s, &rfd)) {
			n = FUNC34(s, buf, sizeof(buf));
			if (n < 0) {
				FUNC39(LOG_ERR, "Could not read socket, " \
					"fd=%d. %s", s, FUNC37(errno));
				FUNC14(1);
			}

			if (n == 0)
				break;

			if (FUNC36(fd, buf, n) < 0) {
				FUNC39(LOG_ERR, "Could not write to master " \
					"pty, fd=%d, size=%d. %s",
					fd, n, FUNC37(errno));
				FUNC14(1);
			}
		}
	}

	FUNC39(LOG_INFO, "Completed on %s", (tty != NULL)? tty : "stdin/stdout");
	FUNC8();

	FUNC7(s);

	if (tty != NULL) {
		FUNC7(aslave);
		FUNC7(amaster);
	}	

	return (0);
}