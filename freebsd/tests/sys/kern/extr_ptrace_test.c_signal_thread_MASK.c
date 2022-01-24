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
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  pthread_barrier_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigusr1_sem ; 

__attribute__((used)) static void *
FUNC6(void *arg)
{
	int err;
	sigset_t sigmask;

	pthread_barrier_t *pbarrier = (pthread_barrier_t*)arg;

	/* Wait for this thread to receive a SIGUSR1. */
	do {
		err = FUNC3(&sigusr1_sem);
		FUNC0(err == 0 || errno == EINTR);
	} while (err != 0 && errno == EINTR);

	/* Free our companion thread from the barrier. */
	FUNC1(pbarrier);

	/*
	 * Swap ignore duties; the next SIGUSR1 should go to the
	 * other thread.
	 */
	FUNC0(FUNC5(&sigmask) == 0);
	FUNC0(FUNC4(&sigmask, SIGUSR1) == 0);
	FUNC0(FUNC2(SIG_BLOCK, &sigmask, NULL) == 0);

	/* Sync up threads after swapping signal masks. */
	FUNC1(pbarrier);

	/* Wait until our companion has received its SIGUSR1. */
	FUNC1(pbarrier);

	return (NULL);
}