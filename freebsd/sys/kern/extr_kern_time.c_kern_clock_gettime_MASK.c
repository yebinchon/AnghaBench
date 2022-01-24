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
struct timeval {int dummy; } ;
struct timespec {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct thread {struct proc* td_proc; } ;
struct proc {int dummy; } ;
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
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*,struct timeval*,struct timeval*) ; 
 int FUNC6 (struct thread*,int,struct timespec*) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC9 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC10 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC11 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC12 (struct timespec*) ; 
 int /*<<< orphan*/  time_second ; 
 int /*<<< orphan*/  FUNC13 (struct timeval*,struct timeval*) ; 

int
FUNC14(struct thread *td, clockid_t clock_id, struct timespec *ats)
{
	struct timeval sys, user;
	struct proc *p;

	p = td->td_proc;
	switch (clock_id) {
	case CLOCK_REALTIME:		/* Default to precise. */
	case CLOCK_REALTIME_PRECISE:
		FUNC11(ats);
		break;
	case CLOCK_REALTIME_FAST:
		FUNC9(ats);
		break;
	case CLOCK_VIRTUAL:
		FUNC0(p);
		FUNC1(p);
		FUNC5(p, &user, &sys);
		FUNC2(p);
		FUNC3(p);
		FUNC4(&user, ats);
		break;
	case CLOCK_PROF:
		FUNC0(p);
		FUNC1(p);
		FUNC5(p, &user, &sys);
		FUNC2(p);
		FUNC3(p);
		FUNC13(&user, &sys);
		FUNC4(&user, ats);
		break;
	case CLOCK_MONOTONIC:		/* Default to precise. */
	case CLOCK_MONOTONIC_PRECISE:
	case CLOCK_UPTIME:
	case CLOCK_UPTIME_PRECISE:
		FUNC12(ats);
		break;
	case CLOCK_UPTIME_FAST:
	case CLOCK_MONOTONIC_FAST:
		FUNC10(ats);
		break;
	case CLOCK_SECOND:
		ats->tv_sec = time_second;
		ats->tv_nsec = 0;
		break;
	case CLOCK_THREAD_CPUTIME_ID:
		FUNC8(NULL, ats);
		break;
	case CLOCK_PROCESS_CPUTIME_ID:
		FUNC0(p);
		FUNC7(p, ats);
		FUNC3(p);
		break;
	default:
		if ((int)clock_id >= 0)
			return (EINVAL);
		return (FUNC6(td, clock_id, ats));
	}
	return (0);
}