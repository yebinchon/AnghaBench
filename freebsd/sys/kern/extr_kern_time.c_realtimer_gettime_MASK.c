#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timespec {int dummy; } ;
struct TYPE_3__ {scalar_t__ tv_sec; int tv_nsec; } ;
struct itimerspec {TYPE_1__ it_value; } ;
struct itimer {struct itimerspec it_time; int /*<<< orphan*/  it_clockid; int /*<<< orphan*/  it_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct timespec*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(struct itimer *it, struct itimerspec *ovalue)
{
	struct timespec cts;

	FUNC0(&it->it_mtx, MA_OWNED);

	FUNC1(it->it_clockid, &cts);
	*ovalue = it->it_time;
	if (ovalue->it_value.tv_sec != 0 || ovalue->it_value.tv_nsec != 0) {
		FUNC2(&ovalue->it_value, &cts, &ovalue->it_value);
		if (ovalue->it_value.tv_sec < 0 ||
		    (ovalue->it_value.tv_sec == 0 &&
		     ovalue->it_value.tv_nsec == 0)) {
			ovalue->it_value.tv_sec  = 0;
			ovalue->it_value.tv_nsec = 1;
		}
	}
	return (0);
}