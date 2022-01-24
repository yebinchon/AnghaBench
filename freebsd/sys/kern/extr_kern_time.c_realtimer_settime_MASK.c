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
struct timespec {int dummy; } ;
struct itimerspec {struct timespec it_value; struct timespec it_interval; } ;
struct itimer {int /*<<< orphan*/  it_callout; struct itimerspec it_time; int /*<<< orphan*/  it_clockid; int /*<<< orphan*/  it_mtx; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int TIMER_ABSTIME ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct itimer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  realtimer_expire ; 
 int /*<<< orphan*/  FUNC6 (struct itimer*,struct itimerspec*) ; 
 int /*<<< orphan*/  FUNC7 (struct timespec*,struct timespec*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC8 (struct timespec*) ; 
 scalar_t__ FUNC9 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC10 (struct timespec*,struct timespec*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC11 (struct timeval*) ; 

__attribute__((used)) static int
FUNC12(struct itimer *it, int flags,
	struct itimerspec *value, struct itimerspec *ovalue)
{
	struct timespec cts, ts;
	struct timeval tv;
	struct itimerspec val;

	FUNC4(&it->it_mtx, MA_OWNED);

	val = *value;
	if (FUNC3(&val.it_value))
		return (EINVAL);

	if (FUNC9(&val.it_value)) {
		if (FUNC3(&val.it_interval))
			return (EINVAL);
	} else {
		FUNC8(&val.it_interval);
	}
	
	if (ovalue != NULL)
		FUNC6(it, ovalue);

	it->it_time = val;
	if (FUNC9(&val.it_value)) {
		FUNC5(it->it_clockid, &cts);
		ts = val.it_value;
		if ((flags & TIMER_ABSTIME) == 0) {
			/* Convert to absolute time. */
			FUNC7(&it->it_time.it_value, &cts,
				&it->it_time.it_value);
		} else {
			FUNC10(&ts, &cts, &ts);
			/*
			 * We don't care if ts is negative, tztohz will
			 * fix it.
			 */
		}
		FUNC0(&tv, &ts);
		FUNC1(&it->it_callout, FUNC11(&tv),
			realtimer_expire, it);
	} else {
		FUNC2(&it->it_callout);
	}

	return (0);
}