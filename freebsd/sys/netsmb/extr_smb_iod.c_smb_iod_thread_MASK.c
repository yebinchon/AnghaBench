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
struct smbiod {int iod_flags; int /*<<< orphan*/  iod_evlock; int /*<<< orphan*/  iod_rqlock; int /*<<< orphan*/  iod_sleeptimo; int /*<<< orphan*/  iod_td; int /*<<< orphan*/  iod_scred; } ;

/* Variables and functions */
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  M_SMBIOD ; 
 int /*<<< orphan*/  PWAIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int SMBIOD_SHUTDOWN ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC1 (struct smbiod*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct smbiod*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC9(void *arg)
{
	struct smbiod *iod = arg;

	FUNC3(&Giant);

	/*
	 * Here we assume that the thread structure will be the same
	 * for an entire kthread (kproc, to be more precise) life.
	 */
	iod->iod_td = curthread;
	FUNC6(&iod->iod_scred, iod->iod_td, NULL);
	while ((iod->iod_flags & SMBIOD_SHUTDOWN) == 0) {
		FUNC5(iod);
		FUNC0("going to sleep for %d ticks\n", iod->iod_sleeptimo);
		if (iod->iod_flags & SMBIOD_SHUTDOWN)
			break;
		FUNC8(&iod->iod_flags, PWAIT, "90idle", iod->iod_sleeptimo);
	}

	/* We can now safely destroy the mutexes and free the iod structure. */
	FUNC7(&iod->iod_rqlock);
	FUNC7(&iod->iod_evlock);
	FUNC1(iod, M_SMBIOD);
	FUNC4(&Giant);
	FUNC2(0);
}