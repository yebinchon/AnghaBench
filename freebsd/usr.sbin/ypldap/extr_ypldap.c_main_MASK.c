#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tv ;
struct timeval {int dummy; } ;
struct passwd {int /*<<< orphan*/  pw_uid; int /*<<< orphan*/  pw_gid; } ;
struct event {int dummy; } ;
struct env {TYPE_2__* sc_iev; int /*<<< orphan*/  sc_group_gids; int /*<<< orphan*/  sc_user_uids; } ;
struct TYPE_3__ {int /*<<< orphan*/  fd; } ;
struct TYPE_4__ {int /*<<< orphan*/  ev; int /*<<< orphan*/  handler; int /*<<< orphan*/  events; TYPE_1__ ibuf; struct env* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  PROC_MAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int SOCK_NONBLOCK ; 
 int SOCK_STREAM ; 
 int YPLDAP_OPT_NOACTION ; 
 int YPLDAP_OPT_VERBOSE ; 
 int /*<<< orphan*/  YPLDAP_USER ; 
 TYPE_2__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  client_pid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conffile ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct env*) ; 
 int /*<<< orphan*/  FUNC11 (struct event*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC12 (struct event*,int /*<<< orphan*/ ,struct env*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC16 () ; 
 int FUNC17 (int,char**,char*) ; 
 struct passwd* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_dispatch_client ; 
 int /*<<< orphan*/  main_init_timer ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  main_sig_handler ; 
 int /*<<< orphan*/  FUNC25 (struct timeval*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int opts ; 
 scalar_t__ FUNC26 (struct env*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * pipe_main2client ; 
 scalar_t__ FUNC27 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (struct event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct env*) ; 
 int FUNC33 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 (struct env*) ; 
 int /*<<< orphan*/  ypldap_process ; 

int
FUNC37(int argc, char *argv[])
{
	int		 c;
	int		 debug;
	struct passwd	*pw;
	struct env	 env;
	struct event	 ev_sigint;
	struct event	 ev_sigterm;
	struct event	 ev_sigchld;
	struct event	 ev_sighup;
	struct event	 ev_timer;
	struct timeval	 tv;

	debug = 0;
	ypldap_process = PROC_MAIN;

	FUNC22(1);

	while ((c = FUNC17(argc, argv, "dD:nf:v")) != -1) {
		switch (c) {
		case 'd':
			debug = 2;
			break;
		case 'D':
			if (FUNC3(optarg) < 0)
				FUNC23("could not parse macro definition %s",
				    optarg);
			break;
		case 'n':
			debug = 2;
			opts |= YPLDAP_OPT_NOACTION;
			break;
		case 'f':
			conffile = optarg;
			break;
		case 'v':
			opts |= YPLDAP_OPT_VERBOSE;
			break;
		default:
			FUNC34();
		}
	}

	argc -= optind;
	argv += optind;

	if (argc)
		FUNC34();

	FUNC0(&env.sc_user_uids);
	FUNC0(&env.sc_group_gids);

	if (FUNC26(&env, conffile, opts))
		FUNC13(1);
	if (opts & YPLDAP_OPT_NOACTION) {
		FUNC15(stderr, "configuration OK\n");
		FUNC13(0);
	}

	if (FUNC16())
		FUNC6(1, "need root privileges");

	FUNC22(debug);

	if (!debug) {
		if (FUNC4(1, 0) == -1)
			FUNC5(1, "failed to daemonize");
	}

	FUNC21("startup%s", (debug > 1)?" [debug mode]":"");

	if (FUNC33(AF_UNIX, SOCK_STREAM | SOCK_NONBLOCK, PF_UNSPEC,
	    pipe_main2client) == -1)
		FUNC14("socketpair");

	client_pid = FUNC20(pipe_main2client);

	FUNC28("parent");
	FUNC9();

	FUNC32(&ev_sigint, SIGINT, main_sig_handler, &env);
	FUNC32(&ev_sigterm, SIGTERM, main_sig_handler, &env);
	FUNC32(&ev_sighup, SIGHUP, main_sig_handler, &env);
	FUNC32(&ev_sigchld, SIGCHLD, main_sig_handler, &env);
	FUNC31(&ev_sigint, NULL);
	FUNC31(&ev_sigterm, NULL);
	FUNC31(&ev_sighup, NULL);
	FUNC31(&ev_sigchld, NULL);

	FUNC2(pipe_main2client[1]);
	if ((env.sc_iev = FUNC1(1, sizeof(*env.sc_iev))) == NULL)
		FUNC14(NULL);
	FUNC19(&env.sc_iev->ibuf, pipe_main2client[0]);
	env.sc_iev->handler = main_dispatch_client;

	env.sc_iev->events = EV_READ;
	env.sc_iev->data = &env;
	FUNC10(&env.sc_iev->ev, env.sc_iev->ibuf.fd, env.sc_iev->events,
	     env.sc_iev->handler, &env);
	FUNC7(&env.sc_iev->ev, NULL);

	FUNC36(&env);

	if ((pw = FUNC18(YPLDAP_USER)) == NULL)
		FUNC14("getpwnam");

#ifndef DEBUG
	if (FUNC27(1, &pw->pw_gid) ||
	    FUNC29(pw->pw_gid, pw->pw_gid, pw->pw_gid) ||
	    FUNC30(pw->pw_uid, pw->pw_uid, pw->pw_uid))
		FUNC14("cannot drop privileges");
#else
#warning disabling privilege revocation in debug mode
#endif

	FUNC25(&tv, 0, sizeof(tv));
	FUNC12(&ev_timer, main_init_timer, &env);
	FUNC11(&ev_timer, &tv);

	FUNC35();
	FUNC8();
	FUNC24();

	return (0);
}