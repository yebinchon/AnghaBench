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
 int FUNC0 (char*) ; 
 char ch_erase ; 
 char ch_kill ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 char msglen ; 
 scalar_t__ overstrike ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC7(char *buffer, int size, int numeric)
{
    char *ptr = buffer;
    char ch;
    char cnt = 0;
    char maxcnt = 0;

    /* allow room for null terminator */
    size -= 1;

    /* read loop */
    while ((FUNC1(stdout), FUNC6(0, ptr, 1) > 0))
    {
	/* newline means we are done */
	if ((ch = *ptr) == '\n' || ch == '\r')
	{
	    break;
	}

	/* handle special editing characters */
	if (ch == ch_kill)
	{
	    /* kill line -- account for overstriking */
	    if (overstrike)
	    {
		msglen += maxcnt;
	    }

	    /* return null string */
	    *buffer = '\0';
	    FUNC5('\r');
	    return(-1);
	}
	else if (ch == ch_erase)
	{
	    /* erase previous character */
	    if (cnt <= 0)
	    {
		/* none to erase! */
		FUNC5('\7');
	    }
	    else
	    {
		FUNC2("\b \b", stdout);
		ptr--;
		cnt--;
	    }
	}
	/* check for character validity and buffer overflow */
	else if (cnt == size || (numeric && !FUNC3(ch)) ||
		!FUNC4(ch))
	{
	    /* not legal */
	    FUNC5('\7');
	}
	else
	{
	    /* echo it and store it in the buffer */
	    FUNC5(ch);
	    ptr++;
	    cnt++;
	    if (cnt > maxcnt)
	    {
		maxcnt = cnt;
	    }
	}
    }

    /* all done -- null terminate the string */
    *ptr = '\0';

    /* account for the extra characters in the message area */
    /* (if terminal overstrikes, remember the furthest they went) */
    msglen += overstrike ? maxcnt : cnt;

    /* return either inputted number or string length */
    FUNC5('\r');
    return(cnt == 0 ? -1 : numeric ? FUNC0(buffer) : cnt);
}