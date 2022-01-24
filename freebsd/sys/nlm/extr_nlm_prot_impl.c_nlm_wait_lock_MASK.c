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
struct nlm_waiting_lock {scalar_t__ nw_waiting; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  M_NLM ; 
 int /*<<< orphan*/  PCATCH ; 
 int /*<<< orphan*/  SIGDEFERSTOP_ERESTART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct nlm_waiting_lock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nlm_waiting_lock*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nlm_waiting_lock*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nlm_global_lock ; 
 int /*<<< orphan*/  nlm_waiting_locks ; 
 int /*<<< orphan*/  nw_link ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(void *handle, int timo)
{
	struct nlm_waiting_lock *nw = handle;
	int error, stops_deferred;

	/*
	 * If the granted message arrived before we got here,
	 * nw->nw_waiting will be FALSE - in that case, don't sleep.
	 */
	FUNC3(&nlm_global_lock);
	error = 0;
	if (nw->nw_waiting) {
		stops_deferred = FUNC6(SIGDEFERSTOP_ERESTART);
		error = FUNC2(nw, &nlm_global_lock, PCATCH, "nlmlock", timo);
		FUNC5(stops_deferred);
	}
	FUNC0(&nlm_waiting_locks, nw, nw_link);
	if (error) {
		/*
		 * The granted message may arrive after the
		 * interrupt/timeout but before we manage to lock the
		 * mutex. Detect this by examining nw_lock.
		 */
		if (!nw->nw_waiting)
			error = 0;
	} else {
		/*
		 * If nlm_cancel_wait is called, then error will be
		 * zero but nw_waiting will still be TRUE. We
		 * translate this into EINTR.
		 */
		if (nw->nw_waiting)
			error = EINTR;
	}
	FUNC4(&nlm_global_lock);

	FUNC1(nw, M_NLM);

	return (error);
}