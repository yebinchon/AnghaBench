#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct passwd {int /*<<< orphan*/  pw_uid; int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_dir; } ;
struct event {int dummy; } ;
struct env {TYPE_2__* sc_iev_dns; TYPE_1__* sc_iev; int /*<<< orphan*/  sc_idms; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  env ;
struct TYPE_6__ {int /*<<< orphan*/  fd; } ;
struct TYPE_5__ {int /*<<< orphan*/  ev; int /*<<< orphan*/  handler; void* events; TYPE_3__ ibuf; struct env* data; } ;
struct TYPE_4__ {int /*<<< orphan*/  ev; int /*<<< orphan*/  handler; void* events; TYPE_3__ ibuf; struct env* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 void* EV_READ ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  PROC_CLIENT ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  YPLDAP_USER ; 
 void* FUNC1 (int,int) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  client_dispatch_dns ; 
 int /*<<< orphan*/  client_dispatch_parent ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  client_sig_handler ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,struct env*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct passwd* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct env*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC23 (int*,struct passwd*) ; 
 int /*<<< orphan*/  ypldap_process ; 

pid_t
FUNC24(int pipe_main2client[2])
{
	pid_t            pid, dns_pid;
	int              pipe_dns[2];
	struct passwd	*pw;
	struct event	 ev_sigint;
	struct event	 ev_sigterm;
	struct env	 env;

	switch (pid = FUNC11()) {
	case -1:
		FUNC10("cannot fork");
		break;
	case 0:
		break;
	default:
		return (pid);
	}

	FUNC14(&env, 0, sizeof(env));
	FUNC0(&env.sc_idms);

	if ((pw = FUNC12(YPLDAP_USER)) == NULL)
		FUNC10("getpwnam");

	if (FUNC22(AF_UNIX, SOCK_STREAM, PF_UNSPEC, pipe_dns) == -1)
		FUNC10("socketpair");
	dns_pid = FUNC23(pipe_dns, pw);
	FUNC5(pipe_dns[1]);

#ifndef DEBUG
	if (FUNC3(pw->pw_dir) == -1)
		FUNC10("chroot");
	if (FUNC2("/") == -1)
		FUNC10("chdir");
#else
#warning disabling chrooting in DEBUG mode
#endif
	FUNC16("ldap client");
	ypldap_process = PROC_CLIENT;

#ifndef DEBUG
	if (FUNC15(1, &pw->pw_gid) ||
	    FUNC17(pw->pw_gid, pw->pw_gid, pw->pw_gid) ||
	    FUNC18(pw->pw_uid, pw->pw_uid, pw->pw_uid))
		FUNC10("cannot drop privileges");
#else
#warning disabling privilege revocation in DEBUG mode
#endif

	FUNC8();
	FUNC19(SIGPIPE, SIG_IGN);
	FUNC21(&ev_sigint, SIGINT, client_sig_handler, NULL);
	FUNC21(&ev_sigterm, SIGTERM, client_sig_handler, NULL);
	FUNC20(&ev_sigint, NULL);
	FUNC20(&ev_sigterm, NULL);

	FUNC5(pipe_main2client[0]);
	if ((env.sc_iev = FUNC1(1, sizeof(*env.sc_iev))) == NULL)
		FUNC10(NULL);
	if ((env.sc_iev_dns = FUNC1(1, sizeof(*env.sc_iev_dns))) == NULL)
		FUNC10(NULL);

	env.sc_iev->events = EV_READ;
	env.sc_iev->data = &env;
	FUNC13(&env.sc_iev->ibuf, pipe_main2client[1]);
	env.sc_iev->handler = client_dispatch_parent;
	FUNC9(&env.sc_iev->ev, env.sc_iev->ibuf.fd, env.sc_iev->events,
	    env.sc_iev->handler, &env);
	FUNC6(&env.sc_iev->ev, NULL);

	env.sc_iev_dns->events = EV_READ;
	env.sc_iev_dns->data = &env;
	FUNC13(&env.sc_iev_dns->ibuf, pipe_dns[0]);
	env.sc_iev_dns->handler = client_dispatch_dns;
	FUNC9(&env.sc_iev_dns->ev, env.sc_iev_dns->ibuf.fd,
	    env.sc_iev_dns->events, env.sc_iev_dns->handler, &env);
	FUNC6(&env.sc_iev_dns->ev, NULL);

	FUNC7();
	FUNC4();

	return (0);

}