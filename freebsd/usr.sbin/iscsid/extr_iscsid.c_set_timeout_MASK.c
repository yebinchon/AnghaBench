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
struct TYPE_4__ {int tv_sec; } ;
struct TYPE_3__ {int tv_sec; } ;
struct sigaction {TYPE_2__ it_value; TYPE_1__ it_interval; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
struct itimerval {TYPE_2__ it_value; TYPE_1__ it_interval; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  sa ;
typedef  int /*<<< orphan*/  itv ;

/* Variables and functions */
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  FUNC0 (struct sigaction*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigalrm_handler ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(int timeout)
{
	struct sigaction sa;
	struct itimerval itv;
	int error;

	if (timeout <= 0) {
		FUNC1("session timeout disabled");
		return;
	}

	FUNC0(&sa, sizeof(sa));
	sa.sa_handler = sigalrm_handler;
	FUNC5(&sa.sa_mask);
	error = FUNC4(SIGALRM, &sa, NULL);
	if (error != 0)
		FUNC2(1, "sigaction");

	/*
	 * First SIGALRM will arive after conf_timeout seconds.
	 * If we do nothing, another one will arrive a second later.
	 */
	FUNC0(&itv, sizeof(itv));
	itv.it_interval.tv_sec = 1;
	itv.it_value.tv_sec = timeout;

	FUNC1("setting session timeout to %d seconds",
	    timeout);
	error = FUNC3(ITIMER_REAL, &itv, NULL);
	if (error != 0)
		FUNC2(1, "setitimer");
}