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
struct tm {int tm_year; int tm_isdst; void* tm_min; void* tm_hour; void* tm_mday; void* tm_mon; void* tm_sec; } ;
struct timeval {int tv_sec; } ;

/* Variables and functions */
 void* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 struct tm* FUNC2 (int*) ; 
 int FUNC3 (struct tm*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char const*,char) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static time_t
FUNC7(const char *arg)
{
    /*
     * This is pretty much a copy of stime_arg1() from touch.c.  I changed
     * the return value and the argument list because it's more convenient
     * (IMO) to do everything in one place. - Joe Halpin
     */
    struct timeval tv[2];
    time_t now;
    struct tm *t;
    int yearset;
    char *p;
    
    if (FUNC1(&tv[0], NULL))
	FUNC4("Cannot get current time");
    
    /* Start with the current time. */
    now = tv[0].tv_sec;
    if ((t = FUNC2(&now)) == NULL)
	FUNC4("localtime");
    /* [[CC]YY]MMDDhhmm[.SS] */
    if ((p = FUNC5(arg, '.')) == NULL)
	t->tm_sec = 0;		/* Seconds defaults to 0. */
    else {
	if (FUNC6(p + 1) != 2)
	    goto terr;
	*p++ = '\0';
	t->tm_sec = FUNC0(p);
    }
    
    yearset = 0;
    switch(FUNC6(arg)) {
    case 12:			/* CCYYMMDDhhmm */
	t->tm_year = FUNC0(arg);
	t->tm_year *= 100;
	yearset = 1;
	/* FALLTHROUGH */
    case 10:			/* YYMMDDhhmm */
	if (yearset) {
	    yearset = FUNC0(arg);
	    t->tm_year += yearset;
	} else {
	    yearset = FUNC0(arg);
	    t->tm_year = yearset + 2000;
	}
	t->tm_year -= 1900;	/* Convert to UNIX time. */
	/* FALLTHROUGH */
    case 8:				/* MMDDhhmm */
	t->tm_mon = FUNC0(arg);
	--t->tm_mon;		/* Convert from 01-12 to 00-11 */
	t->tm_mday = FUNC0(arg);
	t->tm_hour = FUNC0(arg);
	t->tm_min = FUNC0(arg);
	break;
    default:
	goto terr;
    }
    
    t->tm_isdst = -1;		/* Figure out DST. */
    tv[0].tv_sec = tv[1].tv_sec = FUNC3(t);
    if (tv[0].tv_sec != -1)
	return tv[0].tv_sec;
    else
terr:
	FUNC4(
	   "out of range or illegal time specification: [[CC]YY]MMDDhhmm[.SS]");
}