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

void
FUNC1(char *pline, int *fc, char **fv, int nf)
{
	char *p;

	p = pline;
	*fc = 0;

	while (1) {
		while (FUNC0((unsigned char)*p))
			p++;

		if (*p == '\0' || *p == '#')
			break;

		if (*fc < nf)
			fv[(*fc)++] = p;

		while (*p && !FUNC0((unsigned char)*p) && *p != '#')
			p++;

		if (*p == '\0' || *p == '#')
			break;

		*p++ = '\0';
	}

	if (*p)
		*p = '\0';		/* needed for '#' case */
}