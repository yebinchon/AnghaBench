#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_5__ {int tv_sec; scalar_t__ tv_usec; } ;
struct itimerval {TYPE_2__ it_value; TYPE_1__ it_interval; } ;
struct ctx {int pdp_ctx; char* pdp_apn; char* pdp_user; char* pdp_pwd; char* pin; int con_net_type; int flags; char* resolv_path; int dbm; int /*<<< orphan*/  pfh; scalar_t__ con_status; scalar_t__ fd; int /*<<< orphan*/  ifnam; int /*<<< orphan*/ * ns; int /*<<< orphan*/ * resolv; scalar_t__ con_net_stat; int /*<<< orphan*/ * con_oper; int /*<<< orphan*/ * con_apn; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_7__ {int res; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FLG_DAEMON ; 
 int FLG_DELAYED ; 
 int FLG_NODAEMON ; 
 int FLG_WDEXP ; 
 int IPASSIGNED ; 
 int /*<<< orphan*/  ITIMER_REAL ; 
 int MODE_CONN ; 
#define  MODE_DISC 128 
 char* RESOLV_PATH ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ctx*,struct ctx*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct ctx*) ; 
 int FUNC7 (struct ctx*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct ctx*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 char** FUNC13 (struct ctx*) ; 
 int FUNC14 (int,char**,char*) ; 
 char** network_access_type ; 
 size_t optind ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int running ; 
 int FUNC17 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char const*) ; 
 int FUNC19 (int /*<<< orphan*/ ,struct itimerval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sig_handle ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC21 (char const*) ; 
 int FUNC22 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ syslog_open ; 
 TYPE_3__ timers ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,int,int,int /*<<< orphan*/ *,struct ctx*) ; 
 int /*<<< orphan*/  tmr_watchdog ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC27 (struct ctx*,int) ; 

int
FUNC28(int argc, char *argv[])
{
	int ch, error, mode;
	const char *ifnam = NULL;
	char *tty = NULL;
	char **p, **tty_list;
	fd_set set;
	struct ctx ctx;
	struct itimerval it;

	FUNC3(&timers.head);
	timers.res = 1;

	ctx.pdp_ctx = 1;
	ctx.pdp_apn = ctx.pdp_user = ctx.pdp_pwd = NULL;
	ctx.pin = NULL;

	ctx.con_status = 0;
	ctx.con_apn = NULL;
	ctx.con_oper = NULL;
	ctx.con_net_stat = 0;
	ctx.con_net_type = -1;
	ctx.flags = 0;
	ctx.resolv_path = RESOLV_PATH;
	ctx.resolv = NULL;
	ctx.ns = NULL;
	ctx.dbm = 0;

	mode = MODE_CONN;
	ctx.flags |= FLG_DELAYED;

	while ((ch = FUNC14(argc, argv, "?ha:p:c:u:k:r:f:dbn")) != -1) {
		switch (ch) {
		case 'a':
			ctx.pdp_apn = argv[optind - 1];
			break;
		case 'c':
			ctx.pdp_ctx = FUNC22(argv[optind - 1], NULL, 10);
			if (ctx.pdp_ctx < 1) {
				FUNC25("Invalid context ID, defaulting to 1");
				ctx.pdp_ctx = 1;
			}
			break;
		case 'p':
			ctx.pin = argv[optind - 1];
			break;
		case 'u':
			ctx.pdp_user = argv[optind - 1];
			break;
		case 'k':
			ctx.pdp_pwd = argv[optind - 1];
			break;
		case 'r':
			ctx.resolv_path = argv[optind - 1];
			break;
		case 'd':
			mode = MODE_DISC;
			break;
		case 'b':
			ctx.flags &= ~FLG_DELAYED;
			break;
		case 'n':
			ctx.flags |= FLG_NODAEMON;
			break;
		case 'f':
			tty = argv[optind - 1];
			break;
		case 'h':
		case '?':
		default:
			FUNC24(argv[0]);
			FUNC10(EXIT_SUCCESS);
		}
	}

	argc -= optind;
	argv += optind;

	if (argc < 1)
		FUNC9(1, "no interface given");

	ifnam = argv[argc - 1];
	ctx.ifnam = FUNC21(ifnam);

	switch (mode) {
	case MODE_DISC:
		FUNC16("Disconnecting %s\n", ifnam);
		FUNC18(ifnam);
		FUNC10(EXIT_SUCCESS);
	default:
		break;
	}

	FUNC20(SIGHUP, sig_handle);
	FUNC20(SIGINT, sig_handle);
	FUNC20(SIGQUIT, sig_handle);
	FUNC20(SIGTERM, sig_handle);
	FUNC20(SIGALRM, sig_handle);

	it.it_interval.tv_sec = 1;
	it.it_interval.tv_usec = 0;
	it.it_value.tv_sec = 1;
	it.it_value.tv_usec = 0;
	error = FUNC19(ITIMER_REAL, &it, NULL);
	if (error != 0)
		FUNC9(1, "setitimer");

	FUNC23(&timers, 1, 5, &tmr_watchdog, &ctx);
	FUNC27(&ctx, 15);
	
	if (tty != NULL) {
		error = FUNC7(&ctx, tty);
		if (error != 0)
			FUNC9(1, "Failed to open %s", tty);
	}
	else {
		tty_list = FUNC13(&ctx);
		if (tty_list == NULL)
			FUNC9(1, "%s does not appear to be a uhso device", ifnam);
#ifdef DEBUG
		if (tty_list == NULL) {
			fprintf(stderr, "get_tty returned empty list\n");
		} else {
			fprintf(stderr, "tty list:\n");
			for (p = tty_list; *p != NULL; p++) {
				fprintf(stderr, "\t %s\n", *p);
			}
		}
#endif
		for (p = tty_list; *p != NULL; p++) {
			error = FUNC7(&ctx, *p);
			if (error == 0) {
				tty = *p;
				break;
			}
		}
		if (*p == NULL)
			FUNC9(1, "Failed to obtain a control port, "
			    "try specifying one manually");
	}

	if (!(ctx.flags & FLG_DELAYED) && !(ctx.flags & FLG_NODAEMON))
		FUNC6(&ctx);


	FUNC2(&set);
	FUNC1(ctx.fd, &set);
	for (;;) {

		FUNC26(&ctx);
		error = FUNC17(ctx.fd + 1, &set, NULL, NULL, NULL);
		if (error <= 0) {
			if (running && errno == EINTR)
				continue;
			if (ctx.flags & FLG_WDEXP) {
				ctx.flags &= ~FLG_WDEXP;
				FUNC27(&ctx, 5);
				FUNC8(&ctx);
				FUNC27(&ctx, 15);
				FUNC7(&ctx, tty);
				running = 1;
				continue;
			}

			break;
		}

		if (FUNC0(ctx.fd, &set)) {
			FUNC27(&ctx, 15);
			error = FUNC4(&ctx, &ctx);
			if (error != 0)
				break;
		}
		FUNC1(ctx.fd, &set);

		if (!(ctx.flags & FLG_DAEMON) && (ctx.flags & IPASSIGNED)) {
			FUNC16("Status: %s (%s)",
			    ctx.con_status ? "connected" : "disconnected",
			    network_access_type[ctx.con_net_type]);
			if (ctx.dbm < 0)
				FUNC16(", signal: %d dBm", ctx.dbm);
			FUNC16("\t\t\t\r");
			FUNC11(stdout);
		}
	}
	if (!(ctx.flags & FLG_DAEMON) && (ctx.flags & IPASSIGNED))
		FUNC16("\n");

	FUNC20(SIGHUP, SIG_DFL);
	FUNC20(SIGINT, SIG_DFL);
	FUNC20(SIGQUIT, SIG_DFL);
	FUNC20(SIGTERM, SIG_DFL);
	FUNC20(SIGALRM, SIG_IGN);

	FUNC8(&ctx);

	if (ctx.flags & FLG_DAEMON) {
		FUNC15(ctx.pfh);
		if (syslog_open)
			FUNC5();
	}

	return (0);
}