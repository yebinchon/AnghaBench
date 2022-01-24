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
typedef  scalar_t__ time_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,char*,long,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 

__attribute__((used)) static char *
FUNC4(int64_t seconds)
{
	time_t hours, minutes;
	char *buf;
	static time_t now;

	if (now == 0)
		FUNC3(&now);
	if (now > seconds) {
		if ((buf = FUNC2("none")) == NULL)
			FUNC1(1, "strdup() failed in timeprt()");
		return (buf);
	}
	seconds -= now;
	minutes = (seconds + 30) / 60;
	hours = (minutes + 30) / 60;
	if (hours >= 36) {
		if (FUNC0(&buf, "%lddays", ((long)hours + 12) / 24) < 0)
			FUNC1(1, "asprintf() failed in timeprt(1)");
		return (buf);
	}
	if (minutes >= 60) {
		if (FUNC0(&buf, "%2ld:%ld", (long)minutes / 60,
		    (long)minutes % 60) < 0)
			FUNC1(1, "asprintf() failed in timeprt(2)");
		return (buf);
	}
	if (FUNC0(&buf, "%2ld", (long)minutes) < 0)
		FUNC1(1, "asprintf() failed in timeprt(3)");
	return (buf);
}