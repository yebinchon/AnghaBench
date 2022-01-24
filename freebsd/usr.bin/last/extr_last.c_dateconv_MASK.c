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

/* Variables and functions */
 void* FUNC0 (char*) ; 
 struct tm* FUNC1 (int*) ; 
 int FUNC2 (struct tm*) ; 
 char* FUNC3 (char*,char) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 

__attribute__((used)) static time_t
FUNC8(char *arg)
{
        time_t timet;
        struct tm *t;
        int yearset;
        char *p;

        /* Start with the current time. */
        if (FUNC5(&timet) < 0)
                FUNC6(1, "time");
        if ((t = FUNC1(&timet)) == NULL)
                FUNC6(1, "localtime");

        /* [[CC]YY]MMDDhhmm[.SS] */
        if ((p = FUNC3(arg, '.')) == NULL)
                t->tm_sec = 0; 		/* Seconds defaults to 0. */
        else {
                if (FUNC4(p + 1) != 2)
                        goto terr;
                *p++ = '\0';
                t->tm_sec = FUNC0(p);
        }

        yearset = 0;
        switch (FUNC4(arg)) {
        case 12:                	/* CCYYMMDDhhmm */
                t->tm_year = FUNC0(arg);
                t->tm_year *= 100;
                yearset = 1;
                /* FALLTHROUGH */
        case 10:                	/* YYMMDDhhmm */
                if (yearset) {
                        yearset = FUNC0(arg);
                        t->tm_year += yearset;
                } else {
                        yearset = FUNC0(arg);
                        if (yearset < 69)
                                t->tm_year = yearset + 2000;
                        else
                                t->tm_year = yearset + 1900;
                }
                t->tm_year -= 1900;     /* Convert to UNIX time. */
                /* FALLTHROUGH */
        case 8:				/* MMDDhhmm */
                t->tm_mon = FUNC0(arg);
                --t->tm_mon;    	/* Convert from 01-12 to 00-11 */
                t->tm_mday = FUNC0(arg);
                t->tm_hour = FUNC0(arg);
                t->tm_min = FUNC0(arg);
                break;
        case 4:				/* hhmm */
                t->tm_hour = FUNC0(arg);
                t->tm_min = FUNC0(arg);
                break;
        default:
                goto terr;
        }
        t->tm_isdst = -1;       	/* Figure out DST. */
        timet = FUNC2(t);
        if (timet == -1)
terr:           FUNC7(1,
        "out of range or illegal time specification: [[CC]YY]MMDDhhmm[.SS]");
        return timet;
}