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
struct sigaction {int /*<<< orphan*/  sa_sigaction; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_flags; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  SA_SIGINFO ; 
 int /*<<< orphan*/  SIGRTMIN ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  handler ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int received ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union sigval) ; 

int
FUNC8()
{
	struct sigaction sa;
	union sigval val;
	int ret;
	int i;
	sigset_t set;

	sa.sa_flags = SA_SIGINFO;
	FUNC5(&sa.sa_mask);
	sa.sa_sigaction = handler;
	FUNC3(SIGRTMIN, &sa, NULL);
	FUNC5(&set);
	FUNC4(&set, SIGRTMIN);
	FUNC6(SIG_BLOCK, &set, NULL);
	i = 0;
	for (;;) {
		val.sival_int = i;
		ret = FUNC7(FUNC1(), SIGRTMIN, val);
		if (ret == -1) {
			if (errno != EAGAIN) {
				FUNC0(1, "errno != EAGAIN");
			}
			break;
		}
		i++;
	}
	FUNC6(SIG_UNBLOCK, &set, NULL);
	if (received != i)
		FUNC0(1, "error, signal lost");
	FUNC2("OK\n");
}