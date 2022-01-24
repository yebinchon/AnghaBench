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
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char*,int,int) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,char const*) ; 
 int FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 scalar_t__ FUNC8 (char*,char const*) ; 

void
FUNC9(char *s, char *e, int wc)
{
	int	ls, le;
	int	si;
	int	sn, en;
	int	i;

	static const char *digits = "0123456789";

	ls = FUNC6(s);
	le = FUNC6(e);

	if (((si = FUNC5(s, digits)) == 0) || (si == ls) ||
	    (FUNC7(s, e, si) != 0) ||
	    ((int)FUNC8(s + si, digits) != (ls - si)) ||
	    ((int)FUNC8(e + si, digits) != (le - si)) ||
	    ((sn = FUNC2(s + si)) > ((en = FUNC2(e + si))))) {
		FUNC3("malformed charmap range");
		return;
	}

	s[si] = 0;

	for (i = sn; i <= en; i++) {
		char *nn;
		(void) FUNC1(&nn, "%s%0*u", s, ls - si, i);
		if (nn == NULL) {
			FUNC3("out of memory");
			return;
		}

		FUNC0(nn, wc, 1);
		wc++;
	}
	FUNC4(s);
	FUNC4(e);
}