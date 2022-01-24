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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int ACCT_EXITREQ ; 
 int ACCT_RUNNING ; 
 int /*<<< orphan*/  PRI_MAX_KERN ; 
 int acct_state ; 
 int /*<<< orphan*/  acct_sx ; 
 int acctchkfreq ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  curthread ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void *dummy)
{
	u_char pri;

	/* This is a low-priority kernel thread. */
	pri = PRI_MAX_KERN;
	FUNC6(curthread);
	FUNC2(curthread, pri);
	FUNC7(curthread);

	/* If another accounting kthread is already running, just die. */
	FUNC4(&acct_sx);
	if (acct_state & ACCT_RUNNING) {
		FUNC5(&acct_sx);
		FUNC1(0);
	}
	acct_state |= ACCT_RUNNING;

	/* Loop until we are asked to exit. */
	while (!(acct_state & ACCT_EXITREQ)) {

		/* Perform our periodic checks. */
		FUNC0();

		/*
		 * We check this flag again before sleeping since the
		 * acctwatch() might have shut down accounting and asked us
		 * to exit.
		 */
		if (!(acct_state & ACCT_EXITREQ)) {
			FUNC3(&acct_state, &acct_sx, 0, "-",
			    acctchkfreq * hz);
		}
	}

	/*
	 * Acknowledge the exit request and shutdown.  We clear both the
	 * exit request and running flags.
	 */
	acct_state = 0;
	FUNC5(&acct_sx);
	FUNC1(0);
}