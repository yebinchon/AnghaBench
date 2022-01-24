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
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 

char *
FUNC3(char *linebuf, int *flag)
{
	char *cp;

	*flag = 1;
	cp = FUNC2(linebuf) + linebuf - 1;

	/*
	 * Strip away trailing blanks.
	 */

	while (cp > linebuf && FUNC0((unsigned char)*cp))
		cp--;
	*++cp = '\0';

	/*
	 * Now search for the beginning of the file name.
	 */

	while (cp > linebuf && !FUNC0((unsigned char)*cp))
		cp--;
	if (*cp == '\0') {
		FUNC1("No file specified.\n");
		return (NULL);
	}
	if (FUNC0((unsigned char)*cp))
		*cp++ = '\0';
	else
		*flag = 0;
	return (cp);
}