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
typedef  int u_int ;
typedef  int time_t ;
struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
struct thread {scalar_t__* td_retval; int /*<<< orphan*/  td_flags; int /*<<< orphan*/  td_pflags; int /*<<< orphan*/  td_oldsigmask; } ;
struct pollfd {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int sbintime_t ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
 int ERESTART ; 
 int EWOULDBLOCK ; 
 int FD_SETSIZE ; 
 int INT32_MAX ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  TDF_ASTPENDING ; 
 int /*<<< orphan*/  TDP_OLDMASK ; 
 scalar_t__ FUNC0 (int*,int) ; 
 int FUNC1 (struct pollfd*,struct pollfd*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pollfd*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pollfd* FUNC4 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int maxfilesperproc ; 
 int FUNC5 (struct pollfd*) ; 
 int FUNC6 (struct thread*,struct pollfd*,struct pollfd*,int) ; 
 int FUNC7 (struct thread*) ; 
 int FUNC8 (struct thread*,struct pollfd*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct thread*) ; 
 int /*<<< orphan*/  FUNC10 (struct thread*) ; 
 int FUNC11 (struct thread*,int,int) ; 
 int tc_precexp ; 
 scalar_t__ tc_tick_sbt ; 
 int /*<<< orphan*/  FUNC12 (struct thread*) ; 
 int /*<<< orphan*/  FUNC13 (struct thread*) ; 
 int FUNC14 (struct timespec) ; 

int
FUNC15(struct thread *td, struct pollfd *ufds, u_int nfds,
    struct timespec *tsp, sigset_t *uset)
{
	struct pollfd *kfds;
	struct pollfd stackfds[32];
	sbintime_t sbt, precision, tmp;
	time_t over;
	struct timespec ts;
	int error;

	precision = 0;
	if (tsp != NULL) {
		if (tsp->tv_sec < 0)
			return (EINVAL);
		if (tsp->tv_nsec < 0 || tsp->tv_nsec >= 1000000000)
			return (EINVAL);
		if (tsp->tv_sec == 0 && tsp->tv_nsec == 0)
			sbt = 0;
		else {
			ts = *tsp;
			if (ts.tv_sec > INT32_MAX / 2) {
				over = ts.tv_sec - INT32_MAX / 2;
				ts.tv_sec -= over;
			} else
				over = 0;
			tmp = FUNC14(ts);
			precision = tmp;
			precision >>= tc_precexp;
			if (FUNC0(&sbt, tmp))
				sbt += tc_tick_sbt;
			sbt += tmp;
		}
	} else
		sbt = -1;

	/*
	 * This is kinda bogus.  We have fd limits, but that is not
	 * really related to the size of the pollfd array.  Make sure
	 * we let the process use at least FD_SETSIZE entries and at
	 * least enough for the system-wide limits.  We want to be reasonably
	 * safe, but not overly restrictive.
	 */
	if (nfds > maxfilesperproc && nfds > FD_SETSIZE) 
		return (EINVAL);
	if (nfds > FUNC5(stackfds))
		kfds = FUNC4(nfds, sizeof(*kfds), M_TEMP, M_WAITOK);
	else
		kfds = stackfds;
	error = FUNC1(ufds, kfds, nfds * sizeof(*kfds));
	if (error)
		goto done;

	if (uset != NULL) {
		error = FUNC3(td, SIG_SETMASK, uset,
		    &td->td_oldsigmask, 0);
		if (error)
			goto done;
		td->td_pflags |= TDP_OLDMASK;
		/*
		 * Make sure that ast() is called on return to
		 * usermode and TDP_OLDMASK is cleared, restoring old
		 * sigmask.
		 */
		FUNC12(td);
		td->td_flags |= TDF_ASTPENDING;
		FUNC13(td);
	}

	FUNC10(td);
	/* Iterate until the timeout expires or descriptors become ready. */
	for (;;) {
		error = FUNC8(td, kfds, nfds);
		if (error || td->td_retval[0] != 0)
			break;
		error = FUNC11(td, sbt, precision);
		if (error)
			break;
		error = FUNC7(td);
		if (error || td->td_retval[0] != 0)
			break;
	}
	FUNC9(td);

done:
	/* poll is not restarted after signals... */
	if (error == ERESTART)
		error = EINTR;
	if (error == EWOULDBLOCK)
		error = 0;
	if (error == 0) {
		error = FUNC6(td, kfds, ufds, nfds);
		if (error)
			goto out;
	}
out:
	if (nfds > FUNC5(stackfds))
		FUNC2(kfds, M_TEMP);
	return (error);
}