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
struct tm {size_t tm_mon; int tm_mday; int tm_year; } ;

/* Variables and functions */
 struct tm* FUNC0 (scalar_t__*) ; 
 char** months ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,int,int) ; 

char *
FUNC2(time_t tval)
{
	struct tm *tp;
	static char tbuf[50];

	if (tval) {
		tp = FUNC0(&tval);
		(void)FUNC1(tbuf, "%s %d, %d", months[tp->tm_mon],
		    tp->tm_mday, tp->tm_year + 1900);
	}
	else
		*tbuf = '\0';
	return (tbuf);
}