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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_year; int tm_isdst; void* tm_min; void* tm_hour; void* tm_mday; void* tm_mon; } ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;

/* Variables and functions */
 void* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 struct tm* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct tm*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(const char *arg, int year, struct timespec *tvp)
{
	time_t now;
	struct tm *t;

	now = FUNC5(NULL);
	if ((t = FUNC3(&now)) == NULL)
		FUNC1(1, "localtime");

	t->tm_mon = FUNC0(arg);		/* MMDDhhmm[yy] */
	--t->tm_mon;			/* Convert from 01-12 to 00-11 */
	t->tm_mday = FUNC0(arg);
	t->tm_hour = FUNC0(arg);
	t->tm_min = FUNC0(arg);
	if (year) {
		t->tm_year = FUNC0(arg);
		if (t->tm_year < 39)	/* support 2000-2038 not 1902-1969 */
			t->tm_year += 100;
	}

	t->tm_isdst = -1;		/* Figure out DST. */
	tvp[0].tv_sec = tvp[1].tv_sec = FUNC4(t);
	if (tvp[0].tv_sec == -1)
		FUNC2(1,
	"out of range or illegal time specification: MMDDhhmm[yy]");

	tvp[0].tv_nsec = tvp[1].tv_nsec = 0;
}