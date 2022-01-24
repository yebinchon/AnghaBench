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
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_isdst; } ;

/* Variables and functions */
#define  DAYS 133 
#define  HOURS 132 
#define  MINUTES 131 
#define  MONTHS 130 
#define  WEEKS 129 
#define  YEARS 128 
 scalar_t__ FUNC0 (struct tm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sc_tokid ; 
 int sc_tokplur ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(struct tm *tm, int delay)
{
    int expectplur;

    expectplur = (delay != 1 && delay != -1) ? 1 : 0;

    switch (FUNC2()) {
    case YEARS:
	    tm->tm_year += delay;
	    break;
    case MONTHS:
	    tm->tm_mon += delay;
	    break;
    case WEEKS:
	    delay *= 7;
    case DAYS:
	    tm->tm_mday += delay;
	    break;
    case HOURS:
	    tm->tm_hour += delay;
	    break;
    case MINUTES:
	    tm->tm_min += delay;
	    break;
    default:
    	    FUNC1(sc_tokid);
	    break;
    }

    if (expectplur != sc_tokplur)
	FUNC3("pluralization is wrong");

    tm->tm_isdst = -1;
    if (FUNC0(tm) < 0)
	FUNC1(sc_tokid);
}