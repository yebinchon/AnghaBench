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
struct passwd {int /*<<< orphan*/  pw_uid; int /*<<< orphan*/  pw_gid; } ;
struct event {int dummy; } ;
struct env {TYPE_2__* sc_iev; } ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_3__ {int /*<<< orphan*/  fd; } ;
struct TYPE_4__ {int /*<<< orphan*/  ev; int /*<<< orphan*/  handler; int /*<<< orphan*/  events; TYPE_1__ ibuf; struct env* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 TYPE_2__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  dns_dispatch_imsg ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  dns_sig_handler ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct env*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

pid_t
FUNC17(int pipe_ntp[2], struct passwd *pw)
{
	pid_t			 pid;
	struct event	 ev_sigint;
	struct event	 ev_sigterm;
	struct event	 ev_sighup;
	struct env	 env;

	switch (pid = FUNC9()) {
	case -1:
		FUNC8("cannot fork");
		break;
	case 0:
		break;
	default:
		return (pid);
	}

	FUNC12("dns engine");
	FUNC1(pipe_ntp[0]);

	if (FUNC11(1, &pw->pw_gid) ||
	    FUNC13(pw->pw_gid, pw->pw_gid, pw->pw_gid) ||
	    FUNC14(pw->pw_uid, pw->pw_uid, pw->pw_uid))
		FUNC8("can't drop privileges");
	FUNC3();

	FUNC6();
	FUNC16(&ev_sigint, SIGINT, dns_sig_handler, NULL);
	FUNC16(&ev_sigterm, SIGTERM, dns_sig_handler, NULL);
	FUNC16(&ev_sighup, SIGHUP, dns_sig_handler, NULL);
	FUNC15(&ev_sigint, NULL);
	FUNC15(&ev_sigterm, NULL);
	FUNC15(&ev_sighup, NULL);

	if ((env.sc_iev = FUNC0(1, sizeof(*env.sc_iev))) == NULL)
		FUNC8(NULL);

	env.sc_iev->events = EV_READ;
	env.sc_iev->data = &env;
	FUNC10(&env.sc_iev->ibuf, pipe_ntp[1]);
	env.sc_iev->handler = dns_dispatch_imsg;
	FUNC7(&env.sc_iev->ev, env.sc_iev->ibuf.fd, env.sc_iev->events,
	    env.sc_iev->handler, &env);
	FUNC4(&env.sc_iev->ev, NULL);

	FUNC5();
	FUNC2();

	return (0);
}