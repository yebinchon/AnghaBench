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
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct timespec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_CRIT ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,struct timespec*) ; 
 int carp_thresh_seconds ; 
 scalar_t__ do_syslog ; 
 int /*<<< orphan*/  do_timedog ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char const*,int,long,int) ; 
 char* test_cmd ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,struct timeval*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char const*,int,long,int) ; 
 scalar_t__ FUNC4 (struct timespec*) ; 

__attribute__((used)) static long
FUNC5(struct timespec *tp_start,
    struct timespec *tp_end)
{
	struct timeval tv_start, tv_end, tv_now, tv;
	const char *cmd_prefix, *cmd;
	struct timespec tp_now;
	int sec;

	if (!do_timedog)
		return (0);

	FUNC0(&tv_start, tp_start);
	FUNC0(&tv_end, tp_end);
	FUNC2(&tv_end, &tv_start, &tv);
	sec = tv.tv_sec;
	if (sec < carp_thresh_seconds)
		return (sec);

	if (test_cmd) {
		cmd_prefix = "Watchdog program";
		cmd = test_cmd;
	} else {
		cmd_prefix = "Watchdog operation";
		cmd = "stat(\"/etc\", &sb)";
	}
	if (do_syslog)
		FUNC1(LOG_CRIT, "%s: '%s' took too long: "
		    "%d.%06ld seconds >= %d seconds threshold",
		    cmd_prefix, cmd, sec, (long)tv.tv_usec,
		    carp_thresh_seconds);
	else
		FUNC3("%s: '%s' took too long: "
		    "%d.%06ld seconds >= %d seconds threshold",
		    cmd_prefix, cmd, sec, (long)tv.tv_usec,
		    carp_thresh_seconds);

	/*
	 * Adjust the sleep interval again in case syslog(3) took a non-trivial
	 * amount of time to run.
	 */
	if (FUNC4(&tp_now))
		return (sec);
	FUNC0(&tv_now, &tp_now);
	FUNC2(&tv_now, &tv_start, &tv);
	sec = tv.tv_sec;

	return (sec);
}