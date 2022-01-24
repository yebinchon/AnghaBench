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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,long,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 

char *
FUNC3(time_t seconds)
{
	time_t hours, minutes;
	static char buf[20];
	static time_t now;

	if (now == 0)
		FUNC2(&now);
	if (now > seconds) {
		FUNC1(buf, "none", sizeof (buf));
		return (buf);
	}
	seconds -= now;
	minutes = (seconds + 30) / 60;
	hours = (minutes + 30) / 60;
	if (hours >= 36) {
		FUNC0(buf, "%lddays", (long)(hours + 12) / 24);
		return (buf);
	}
	if (minutes >= 60) {
		FUNC0(buf, "%2ld:%ld", (long)minutes / 60,
		    (long)minutes % 60);
		return (buf);
	}
	FUNC0(buf, "%2ld", (long)minutes);
	return (buf);
}