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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ lastline ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int screen_width ; 
 char* screenbuf ; 
 scalar_t__ smart_terminal ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 scalar_t__ y_procs ; 

void
FUNC6(int line, char *thisline)
{
    char *p;
    char *base;

    /* make sure we are on the correct line */
    while (lastline < y_procs + line)
    {
	FUNC3('\n');
	lastline++;
    }

    /* truncate the line to conform to our current screen width */
    int len = FUNC5(thisline);
    if (screen_width < len)
    {
	thisline[screen_width] = '\0';
    }

    /* write the line out */
    FUNC0(thisline, stdout);

    /* copy it in to our buffer */
    base = smart_terminal ? screenbuf + FUNC1(line) : screenbuf;
    p = FUNC4(base, thisline);

    /* zero fill the rest of it */
    if (p - base < screen_width)
    {
	FUNC2(p, 0, screen_width - (p - base));
    }
}