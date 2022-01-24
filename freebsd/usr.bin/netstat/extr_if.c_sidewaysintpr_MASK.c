#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct itimerval {TYPE_1__ it_interval; TYPE_1__ it_value; } ;
struct iftot {scalar_t__ ift_od; scalar_t__ ift_co; scalar_t__ ift_ob; scalar_t__ ift_oe; scalar_t__ ift_op; scalar_t__ ift_ib; scalar_t__ ift_id; scalar_t__ ift_ie; scalar_t__ ift_ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  catchalarm ; 
 scalar_t__ dflag ; 
 int /*<<< orphan*/  FUNC0 (struct iftot*) ; 
 char* interface ; 
 int /*<<< orphan*/  interval ; 
 scalar_t__ noutputs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct itimerval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,scalar_t__,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int signalled ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void
FUNC14(void)
{
	struct iftot ift[2], *new, *old;
	struct itimerval interval_it;
	int oldmask, line;

	new = &ift[0];
	old = &ift[1];
	FUNC0(old);

	(void)FUNC5(SIGALRM, catchalarm);
	signalled = false;
	interval_it.it_interval.tv_sec = interval;
	interval_it.it_interval.tv_usec = 0;
	interval_it.it_value = interval_it.it_interval;
	FUNC1(ITIMER_REAL, &interval_it, NULL);
	FUNC13("interface-statistics");

banner:
	FUNC10("{T:/%17s} {T:/%14s} {T:/%16s}\n", "input",
	    interface != NULL ? interface : "(Total)", "output");
	FUNC10("{T:/%10s} {T:/%5s} {T:/%5s} {T:/%10s} {T:/%10s} {T:/%5s} "
	    "{T:/%10s} {T:/%5s}",
	    "packets", "errs", "idrops", "bytes", "packets", "errs", "bytes",
	    "colls");
	if (dflag)
		FUNC10(" {T:/%5.5s}", "drops");
	FUNC10("\n");
	FUNC11();
	line = 0;

loop:
	if ((noutputs != 0) && (--noutputs == 0)) {
		FUNC9("interface-statistics");
		return;
	}
	oldmask = FUNC3(FUNC4(SIGALRM));
	while (!signalled)
		FUNC6(0);
	signalled = false;
	FUNC7(oldmask);
	line++;

	FUNC0(new);

	FUNC12("stats");
	FUNC2("lu", 10, "received-packets",
	    new->ift_ip - old->ift_ip, 1, 1);
	FUNC2("lu", 5, "received-errors",
	    new->ift_ie - old->ift_ie, 1, 1);
	FUNC2("lu", 5, "dropped-packets",
	    new->ift_id - old->ift_id, 1, 1);
	FUNC2("lu", 10, "received-bytes",
	    new->ift_ib - old->ift_ib, 1, 0);
	FUNC2("lu", 10, "sent-packets",
	    new->ift_op - old->ift_op, 1, 1);
	FUNC2("lu", 5, "send-errors",
	    new->ift_oe - old->ift_oe, 1, 1);
	FUNC2("lu", 10, "sent-bytes",
	    new->ift_ob - old->ift_ob, 1, 0);
	FUNC2("NRSlu", 5, "collisions",
	    new->ift_co - old->ift_co, 1, 1);
	if (dflag)
		FUNC2("LSlu", 5, "dropped-packets",
		    new->ift_od - old->ift_od, 1, 1);
	FUNC8("stats");
	FUNC10("\n");
	FUNC11();

	if (new == &ift[0]) {
		new = &ift[1];
		old = &ift[0];
	} else {
		new = &ift[0];
		old = &ift[1];
	}

	if (line == 21)
		goto banner;
	else
		goto loop;

	/* NOTREACHED */
}