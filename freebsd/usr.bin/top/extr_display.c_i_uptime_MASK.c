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
struct timeval {int tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,int) ; 
 int screen_width ; 
 scalar_t__ smart_terminal ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC3(struct timeval *bt, time_t *tod)
{
    time_t uptime;
    int days, hrs, mins, secs;

    if (bt->tv_sec != -1) {
	uptime = *tod - bt->tv_sec;
	days = uptime / 86400;
	uptime %= 86400;
	hrs = uptime / 3600;
	uptime %= 3600;
	mins = uptime / 60;
	secs = uptime % 60;

	/*
	 *  Display the uptime.
	 */

	if (smart_terminal)
	{
	    FUNC0((screen_width - 24) - (days > 9 ? 1 : 0), 0);
	}
	else
	{
	    FUNC1(" ", stdout);
	}
	FUNC2(" up %d+%02d:%02d:%02d", days, hrs, mins, secs);
    }
}