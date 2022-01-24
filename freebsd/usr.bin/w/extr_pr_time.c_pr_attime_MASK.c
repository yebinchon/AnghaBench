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
typedef  char wchar_t ;
typedef  int time_t ;
struct tm {scalar_t__ tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 struct tm* FUNC0 (int*) ; 
 scalar_t__ use_ampm ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char const*,struct tm*) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 

int
FUNC6(time_t *started, time_t *now)
{
	static wchar_t buf[256];
	struct tm tp, tm;
	time_t diff;
	const wchar_t *fmt;
	int len, width, offset = 0;

	tp = *FUNC0(started);
	tm = *FUNC0(now);
	diff = *now - *started;

	/* If more than a week, use day-month-year. */
	if (diff > 86400 * 7)
		fmt = L"%d%b%y";

	/* If not today, use day-hour-am/pm. */
	else if (tm.tm_mday != tp.tm_mday ||
		 tm.tm_mon != tp.tm_mon ||
		 tm.tm_year != tp.tm_year) {
	/* The line below does not take DST into consideration */
	/* else if (*now / 86400 != *started / 86400) { */
		fmt = use_ampm ? L"%a%I%p" : L"%a%H";
	}

	/* Default is hh:mm{am,pm}. */
	else {
		fmt = use_ampm ? L"%l:%M%p" : L"%k:%M";
	}

	(void)FUNC1(buf, sizeof(buf), fmt, &tp);
	len = FUNC2(buf);
	width = FUNC3(buf, len);
	FUNC4("since", "%lu", (unsigned long) *started);
	FUNC4("delta", "%lu", (unsigned long) diff);
	if (len == width)
		FUNC5("{:login-time/%-7.7ls/%ls}", buf);
	else if (width < 7)
	        FUNC5("{:login-time/%ls}%.*s", buf, 7 - width, "      ");
	else {
		FUNC5("{:login-time/%ls}", buf);
		offset = width - 7;
	}
	return (offset);
}