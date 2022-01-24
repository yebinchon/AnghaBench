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
typedef  int /*<<< orphan*/  time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int lastline ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ screen_width ; 
 scalar_t__ smart_terminal ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC4(time_t *tod)
{
    /*
     *  Display the current time.
     *  "ctime" always returns a string that looks like this:
     *
     *	Sun Sep 16 01:03:52 1973
     *      012345678901234567890123
     *	          1         2
     *
     *  We want indices 11 thru 18 (length 8).
     */

    if (smart_terminal)
    {
	FUNC0(screen_width - 8, 0);
    }
    else
    {
	FUNC2("    ", stdout);
    }
#ifdef DEBUG
    {
	char *foo;
	foo = ctime(tod);
	fputs(foo, stdout);
    }
#endif
    FUNC3("%-8.8s\n", &(FUNC1(tod)[11]));
    lastline = 1;
}