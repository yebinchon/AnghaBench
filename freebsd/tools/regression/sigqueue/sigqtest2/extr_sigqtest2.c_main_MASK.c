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
union sigval {int sival_int; } ;
struct sigaction {int /*<<< orphan*/  sa_sigaction; int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  SA_SIGINFO ; 
 int /*<<< orphan*/  SIGRTMIN ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  rtsig_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union sigval) ; 

int
FUNC7()
{
	struct sigaction sa;
	sigset_t set;
	union sigval val;

	/* test job control with empty signal queue */
	FUNC1();

	/* now full fill signal queue in kernel */
	FUNC4(&sa.sa_mask);
	sa.sa_flags = SA_SIGINFO;
	sa.sa_sigaction = rtsig_handler;
	FUNC2(SIGRTMIN, &sa, NULL);
	FUNC4(&set);
	FUNC3(&set, SIGRTMIN);
	FUNC5(SIG_BLOCK, &set, NULL);
	val.sival_int = 1;
	while (FUNC6(FUNC0(), SIGRTMIN, val))
		;

	/* signal queue is fully filled, test the job control again. */
	FUNC1();
	return (0);
}