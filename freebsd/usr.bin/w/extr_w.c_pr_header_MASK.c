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
struct timespec {int tv_sec; } ;
struct sbuf {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_UPTIME ; 
 int FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int FUNC1 (double*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 scalar_t__ FUNC3 (double*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*) ; 
 scalar_t__ FUNC6 (struct sbuf*) ; 
 struct sbuf* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct sbuf*,char*,int,...) ; 
 scalar_t__ FUNC9 (char*,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ use_ampm ; 
 scalar_t__ use_comma ; 
 int /*<<< orphan*/  FUNC10 (char const*,...) ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 

__attribute__((used)) static void
FUNC12(time_t *nowp, int nusers)
{
	double avenrun[3];
	time_t uptime;
	struct timespec tp;
	int days, hrs, i, mins, secs;
	char buf[256];
	struct sbuf *upbuf;

	upbuf = FUNC7();
	/*
	 * Print time of day.
	 */
	if (FUNC9(buf, sizeof(buf),
	    use_ampm ? "%l:%M%p" : "%k:%M", FUNC2(nowp)) != 0)
		FUNC10("{:time-of-day/%s} ", buf);
	/*
	 * Print how long system has been up.
	 */
	if (FUNC0(CLOCK_UPTIME, &tp) != -1) {
		uptime = tp.tv_sec;
		if (uptime > 60)
			uptime += 30;
		days = uptime / 86400;
		uptime %= 86400;
		hrs = uptime / 3600;
		uptime %= 3600;
		mins = uptime / 60;
		secs = uptime % 60;
		FUNC10(" up");
		FUNC10("{e:uptime/%lu}", (unsigned long) tp.tv_sec);
		FUNC10("{e:days/%d}{e:hours/%d}{e:minutes/%d}{e:seconds/%d}", days, hrs, mins, secs);

		if (days > 0)
			FUNC8(upbuf, " %d day%s,",
				days, days > 1 ? "s" : "");
		if (hrs > 0 && mins > 0)
			FUNC8(upbuf, " %2d:%02d,", hrs, mins);
		else if (hrs > 0)
			FUNC8(upbuf, " %d hr%s,",
				hrs, hrs > 1 ? "s" : "");
		else if (mins > 0)
			FUNC8(upbuf, " %d min%s,",
				mins, mins > 1 ? "s" : "");
		else 
			FUNC8(upbuf, " %d sec%s,",
				secs, secs > 1 ? "s" : "");
		if (FUNC6(upbuf) != 0)
			FUNC11(1, "Could not generate output");
		FUNC10("{:uptime-human/%s}", FUNC4(upbuf));
		FUNC5(upbuf);
	}

	/* Print number of users logged in to system */
	FUNC10(" {:users/%d} {Np:user,users}", nusers);

	/*
	 * Print 1, 5, and 15 minute load averages.
	 */
	if (FUNC1(avenrun, FUNC3(avenrun)) == -1)
		FUNC10(", no load average information available\n");
	else {
	        static const char *format[] = {
		    " {:load-average-1/%.2f}",
		    " {:load-average-5/%.2f}",
		    " {:load-average-15/%.2f}",
		};
		FUNC10(", load averages:");
		for (i = 0; i < (int)(FUNC3(avenrun)); i++) {
			if (use_comma && i > 0)
				FUNC10(",");
			FUNC10(format[i], avenrun[i]);
		}
		FUNC10("\n");
	}
}