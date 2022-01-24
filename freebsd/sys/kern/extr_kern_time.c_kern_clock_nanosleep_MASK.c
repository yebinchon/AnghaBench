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
typedef  int time_t ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct thread {scalar_t__ td_rtcgen; } ;
typedef  scalar_t__ sbintime_t ;
typedef  int clockid_t ;

/* Variables and functions */
#define  CLOCK_MONOTONIC 141 
#define  CLOCK_MONOTONIC_FAST 140 
#define  CLOCK_MONOTONIC_PRECISE 139 
#define  CLOCK_PROCESS_CPUTIME_ID 138 
#define  CLOCK_PROF 137 
#define  CLOCK_REALTIME 136 
#define  CLOCK_REALTIME_FAST 135 
#define  CLOCK_REALTIME_PRECISE 134 
#define  CLOCK_SECOND 133 
#define  CLOCK_THREAD_CPUTIME_ID 132 
#define  CLOCK_UPTIME 131 
#define  CLOCK_UPTIME_FAST 130 
#define  CLOCK_UPTIME_PRECISE 129 
#define  CLOCK_VIRTUAL 128 
 int /*<<< orphan*/  C_ABSOLUTE ; 
 int EINTR ; 
 int EINVAL ; 
 int ENOTSUP ; 
 int ERESTART ; 
 int EWOULDBLOCK ; 
 int INT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PCATCH ; 
 int PWAIT ; 
 int TIMER_ABSTIME ; 
 scalar_t__ FUNC1 (scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 size_t curcpu ; 
 int FUNC3 (struct thread*,int,struct timespec*) ; 
 int /*<<< orphan*/ * nanowait ; 
 int /*<<< orphan*/  rtc_generation ; 
 struct timespec FUNC4 (scalar_t__) ; 
 scalar_t__ tc_precexp ; 
 scalar_t__ tc_tick_sbt ; 
 int /*<<< orphan*/  FUNC5 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC6 (struct timespec*,struct timespec*,struct timespec*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct timespec) ; 

int
FUNC9(struct thread *td, clockid_t clock_id, int flags,
    const struct timespec *rqt, struct timespec *rmt)
{
	struct timespec ts, now;
	sbintime_t sbt, sbtt, prec, tmp;
	time_t over;
	int error;
	bool is_abs_real;

	if (rqt->tv_nsec < 0 || rqt->tv_nsec >= 1000000000)
		return (EINVAL);
	if ((flags & ~TIMER_ABSTIME) != 0)
		return (EINVAL);
	switch (clock_id) {
	case CLOCK_REALTIME:
	case CLOCK_REALTIME_PRECISE:
	case CLOCK_REALTIME_FAST:
	case CLOCK_SECOND:
		is_abs_real = (flags & TIMER_ABSTIME) != 0;
		break;
	case CLOCK_MONOTONIC:
	case CLOCK_MONOTONIC_PRECISE:
	case CLOCK_MONOTONIC_FAST:
	case CLOCK_UPTIME:
	case CLOCK_UPTIME_PRECISE:
	case CLOCK_UPTIME_FAST:
		is_abs_real = false;
		break;
	case CLOCK_VIRTUAL:
	case CLOCK_PROF:
	case CLOCK_PROCESS_CPUTIME_ID:
		return (ENOTSUP);
	case CLOCK_THREAD_CPUTIME_ID:
	default:
		return (EINVAL);
	}
	do {
		ts = *rqt;
		if ((flags & TIMER_ABSTIME) != 0) {
			if (is_abs_real)
				td->td_rtcgen =
				    FUNC2(&rtc_generation);
			error = FUNC3(td, clock_id, &now);
			FUNC0(error == 0, ("kern_clock_gettime: %d", error));
			FUNC6(&ts, &now, &ts);
		}
		if (ts.tv_sec < 0 || (ts.tv_sec == 0 && ts.tv_nsec == 0)) {
			error = EWOULDBLOCK;
			break;
		}
		if (ts.tv_sec > INT32_MAX / 2) {
			over = ts.tv_sec - INT32_MAX / 2;
			ts.tv_sec -= over;
		} else
			over = 0;
		tmp = FUNC8(ts);
		prec = tmp;
		prec >>= tc_precexp;
		if (FUNC1(&sbt, tmp))
			sbt += tc_tick_sbt;
		sbt += tmp;
		error = FUNC7(&nanowait[curcpu], PWAIT | PCATCH, "nanslp",
		    sbt, prec, C_ABSOLUTE);
	} while (error == 0 && is_abs_real && td->td_rtcgen == 0);
	td->td_rtcgen = 0;
	if (error != EWOULDBLOCK) {
		if (FUNC1(&sbtt, tmp))
			sbtt += tc_tick_sbt;
		if (sbtt >= sbt)
			return (0);
		if (error == ERESTART)
			error = EINTR;
		if ((flags & TIMER_ABSTIME) == 0 && rmt != NULL) {
			ts = FUNC4(sbt - sbtt);
			ts.tv_sec += over;
			if (ts.tv_sec < 0)
				FUNC5(&ts);
			*rmt = ts;
		}
		return (error);
	}
	return (0);
}