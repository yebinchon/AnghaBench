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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 char* FUNC7 (char**,char*) ; 

void
FUNC8(char *bp)
{
	register int ch;
	register char *p;
	char *t, *sep;

	/* Find the end of the terminal names. */
	if ((t = FUNC4(bp, ':')) == NULL)
		FUNC0(1, "termcap names not colon terminated");
	*t++ = '\0';

	/* Output terminal names that don't have whitespace. */
	sep = FUNC5("");
	while ((p = FUNC7(&bp, "|")) != NULL)
		if (*p != '\0' && FUNC6(p, " \t") == NULL) {
			(void)FUNC2("%s%s", sep, p);
			sep = FUNC5("|");
		}
	(void)FUNC3(':');

	/*
	 * Output fields, transforming any dangerous characters.  Skip
	 * empty fields or fields containing only whitespace.
	 */
	while ((p = FUNC7(&t, ":")) != NULL) {
		while ((ch = *p) != '\0' && FUNC1(ch))
			++p;
		if (ch == '\0')
			continue;
		while ((ch = *p++) != '\0')
			switch(ch) {
			case '\033':
				(void)FUNC2("\\E");
			case  ' ':		/* No spaces. */
				(void)FUNC2("\\040");
				break;
			case '!':		/* No csh history chars. */
				(void)FUNC2("\\041");
				break;
			case ',':		/* No csh history chars. */
				(void)FUNC2("\\054");
				break;
			case '"':		/* No quotes. */
				(void)FUNC2("\\042");
				break;
			case '\'':		/* No quotes. */
				(void)FUNC2("\\047");
				break;
			case '`':		/* No quotes. */
				(void)FUNC2("\\140");
				break;
			case '\\':		/* Anything following is OK. */
			case '^':
				(void)FUNC3(ch);
				if ((ch = *p++) == '\0')
					break;
				/* FALLTHROUGH */
			default:
				(void)FUNC3(ch);
		}
		(void)FUNC3(':');
	}
}