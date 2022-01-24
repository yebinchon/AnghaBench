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
 int Header_lines ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int last_hi ; 
 int lastline ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int screen_width ; 
 char* screenbuf ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 

void
FUNC8(int line, char *newline)
{
    char *optr;
    int screen_line = line + Header_lines;
    char *bufferline;

    /* remember a pointer to the current line in the screen buffer */
    bufferline = &screenbuf[FUNC3(line)];

    /* truncate the line to conform to our current screen width */
    int len = FUNC7(newline);
    if (screen_width < len)
    {
	newline[screen_width] = '\0';
    }

    /* is line higher than we went on the last display? */
    if (line >= last_hi)
    {
	/* yes, just ignore screenbuf and write it out directly */
	/* get positioned on the correct line */
	if (screen_line - lastline == 1)
	{
	    FUNC5('\n');
	    lastline++;
	}
	else
	{
	    FUNC0(0, screen_line);
	    lastline = screen_line;
	}

	/* now write the line */
	FUNC1(newline, stdout);

	/* copy it in to the buffer */
	optr = FUNC6(bufferline, newline);

	/* zero fill the rest of it */
	if (optr - bufferline < screen_width)
	{
	    FUNC4(optr, 0, screen_width - (optr - bufferline));
	}
    }
    else
    {
	FUNC2(bufferline, newline, 0, line + Header_lines);
    }
}