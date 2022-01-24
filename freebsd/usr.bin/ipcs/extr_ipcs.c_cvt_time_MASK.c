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
struct tm {int tm_hour; int tm_min; int tm_sec; } ;

/* Variables and functions */
 struct tm* FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

void
FUNC3(time_t t, char *buf)
{
	struct tm *tm;

	if (t == 0) {
		FUNC2(buf, "no-entry");
	} else {
		tm = FUNC0(&t);
		FUNC1(buf, "%2d:%02d:%02d",
			tm->tm_hour, tm->tm_min, tm->tm_sec);
	}
}