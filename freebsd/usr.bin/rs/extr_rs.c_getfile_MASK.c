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
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int NOARGS ; 
 int NULLPAD ; 
 int ONEISEPONLY ; 
 int ONEPERLINE ; 
 int SKIPPRINT ; 
 char* blank ; 
 scalar_t__ curlen ; 
 char* curline ; 
 char** elem ; 
 int flags ; 
 int FUNC1 () ; 
 char** FUNC2 (char**) ; 
 int icols ; 
 int irows ; 
 char isep ; 
 scalar_t__ maxlen ; 
 int nelem ; 
 scalar_t__ owidth ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  skip ; 

__attribute__((used)) static void
FUNC4(void)
{
	char *p;
	char *endp;
	char **ep;
	int c;
	int multisep = (flags & ONEISEPONLY ? 0 : 1);
	int nullpad = flags & NULLPAD;
	char **padto;

	while (skip--) {
		c = FUNC1();
		if (flags & SKIPPRINT)
			FUNC3(curline);
		if (c == EOF)
			return;
	}
	FUNC1();
	if (flags & NOARGS && curlen < owidth)
		flags |= ONEPERLINE;
	if (flags & ONEPERLINE)
		icols = 1;
	else				/* count cols on first line */
		for (p = curline, endp = curline + curlen; p < endp; p++) {
			if (*p == isep && multisep)
				continue;
			icols++;
			while (*p && *p != isep)
				p++;
		}
	ep = FUNC2(elem);
	do {
		if (flags & ONEPERLINE) {
			*ep = curline;
			FUNC0(ep);		/* prepare for next entry */
			if (maxlen < curlen)
				maxlen = curlen;
			irows++;
			continue;
		}
		for (p = curline, endp = curline + curlen; p < endp; p++) {
			if (*p == isep && multisep)
				continue;	/* eat up column separators */
			if (*p == isep)		/* must be an empty column */
				*ep = blank;
			else			/* store column entry */
				*ep = p;
			while (p < endp && *p != isep)
				p++;		/* find end of entry */
			*p = '\0';		/* mark end of entry */
			if (maxlen < p - *ep)	/* update maxlen */
				maxlen = p - *ep;
			FUNC0(ep);		/* prepare for next entry */
		}
		irows++;			/* update row count */
		if (nullpad) {			/* pad missing entries */
			padto = elem + irows * icols;
			while (ep < padto) {
				*ep = blank;
				FUNC0(ep);
			}
		}
	} while (FUNC1() != EOF);
	*ep = 0;				/* mark end of pointers */
	nelem = ep - elem;
}