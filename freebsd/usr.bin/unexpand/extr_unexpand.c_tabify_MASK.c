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
typedef  char wint_t ;

/* Variables and functions */
 int INT_MAX ; 
 char WEOF ; 
 int /*<<< orphan*/  all ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char FUNC1 () ; 
 int nstops ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  stdin ; 
 int* tabstops ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char) ; 

__attribute__((used)) static int
FUNC5(const char *curfile)
{
	int dcol, doneline, limit, n, ocol, width;
	wint_t ch;

	limit = nstops == 1 ? INT_MAX : tabstops[nstops - 1] - 1;

	doneline = ocol = dcol = 0;
	while ((ch = FUNC1()) != WEOF) {
		if (ch == ' ' && !doneline) {
			if (++dcol >= limit)
				doneline = 1;
			continue;
		} else if (ch == '\t') {
			if (nstops == 1) {
				dcol = (1 + dcol / tabstops[0]) *
				    tabstops[0];
				continue;
			} else {
				for (n = 0; n < nstops &&
				    tabstops[n] - 1 < dcol; n++)
					;
				if (n < nstops - 1 && tabstops[n] - 1 < limit) {
					dcol = tabstops[n];
					continue;
				}
				doneline = 1;
			}
		}

		/* Output maximal number of tabs. */
		if (nstops == 1) {
			while (((ocol + tabstops[0]) / tabstops[0])
			    <= (dcol / tabstops[0])) {
				if (dcol - ocol < 2)
					break;
				FUNC2('\t');
				ocol = (1 + ocol / tabstops[0]) *
				    tabstops[0];
			}
		} else {
			for (n = 0; n < nstops && tabstops[n] - 1 < ocol; n++)
				;
			while (ocol < dcol && n < nstops && ocol < limit) {
				FUNC2('\t');
				ocol = tabstops[n++];
			}
		}

		/* Then spaces. */
		while (ocol < dcol && ocol < limit) {
			FUNC2(' ');
			ocol++;
		}

		if (ch == '\b') {
			FUNC2('\b');
			if (ocol > 0)
				ocol--, dcol--;
		} else if (ch == '\n') {
			FUNC2('\n');
			doneline = ocol = dcol = 0;
			continue;
		} else if (ch != ' ' || dcol > limit) {
			FUNC2(ch);
			if ((width = FUNC4(ch)) > 0)
				ocol += width, dcol += width;
		}

		/*
		 * Only processing leading blanks or we've gone past the
		 * last tab stop. Emit remainder of this line unchanged.
		 */
		if (!all || dcol >= limit) {
			while ((ch = FUNC1()) != '\n' && ch != WEOF)
				FUNC2(ch);
			if (ch == '\n')
				FUNC2('\n');
			doneline = ocol = dcol = 0;
		}
	}
	if (FUNC0(stdin)) {
		FUNC3("%s", curfile);
		return (1);
	}
	return (0);
}