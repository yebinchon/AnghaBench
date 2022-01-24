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
struct timespec {int tv_nsec; unsigned long long tv_sec; } ;
struct thread {int dummy; } ;
typedef  scalar_t__ clockid_t ;

/* Variables and functions */
 scalar_t__ CLOCK_REALTIME ; 
 int EINVAL ; 
 int /*<<< orphan*/  PRIV_CLOCK_SETTIME ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,struct timespec*) ; 
 int /*<<< orphan*/  allow_insane_settime ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct thread*,struct timeval*) ; 
 unsigned long long FUNC3 () ; 

int
FUNC4(struct thread *td, clockid_t clock_id, struct timespec *ats)
{
	struct timeval atv;
	int error;

	if ((error = FUNC1(td, PRIV_CLOCK_SETTIME)) != 0)
		return (error);
	if (clock_id != CLOCK_REALTIME)
		return (EINVAL);
	if (ats->tv_nsec < 0 || ats->tv_nsec >= 1000000000 ||
	    ats->tv_sec < 0)
		return (EINVAL);
	if (!allow_insane_settime &&
	    (ats->tv_sec > 8000ULL * 365 * 24 * 60 * 60 ||
	    ats->tv_sec < FUNC3()))
		return (EINVAL);
	/* XXX Don't convert nsec->usec and back */
	FUNC0(&atv, ats);
	error = FUNC2(td, &atv);
	return (error);
}