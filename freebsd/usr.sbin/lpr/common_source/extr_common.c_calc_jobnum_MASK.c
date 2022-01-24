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
 scalar_t__ FUNC0 (char const) ; 

int
FUNC1(const char *cfname, const char **hostpp)
{
	int jnum;
	const char *cp, *numstr, *hoststr;

	numstr = cfname + 3;
	if (!FUNC0(*numstr))
		numstr++;
	jnum = 0;
	for (cp = numstr; (cp < numstr + 5) && FUNC0(*cp); cp++)
		jnum = jnum * 10 + (*cp - '0');
	hoststr = cp;

	/*
	 * If the filename was built with an IP number instead of a hostname,
	 * then recalculate using only the first three digits found.
	 */
	while(FUNC0(*cp))
		cp++;
	if (*cp == '.') {
		jnum = 0;
		for (cp = numstr; (cp < numstr + 3) && FUNC0(*cp); cp++)
			jnum = jnum * 10 + (*cp - '0');
		hoststr = cp;
	}
	if (hostpp != NULL)
		*hostpp = hoststr;
	return (jnum);
}