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
 scalar_t__ idx ; 
 scalar_t__ FUNC0 (char) ; 
 int FUNC1 (char*) ; 
 int margin ; 
 int /*<<< orphan*/  nokeyw ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char) ; 
 char* s_start ; 
 int FUNC5 (char*,char*) ; 

__attribute__((used)) static void
FUNC6(char *start, char *end, bool force)
{
    int i;
    int xfld = 0;

    while (start <= end) {
	if (idx) {
	    if (*start == ' ' || *start == '\t') {
		if (xfld == 0)
		    FUNC2("\001");
		FUNC2("\t");
		xfld = 1;
		while (*start == ' ' || *start == '\t')
		    start++;
		continue;
	    }
	}

	/* take care of nice tab stops */
	if (*start == '\t') {
	    while (*start == '\t')
		start++;
	    i = FUNC5(s_start, start) - margin / 8;
	    FUNC2("\\h'|%dn'", i * 10 + 1 - margin % 8);
	    continue;
	}

	if (!nokeyw && !force)
	    if ((*start == '#' || FUNC0(*start))
	    && (start == s_start || !FUNC0(start[-1]))) {
		i = FUNC1(start);
		if (i > 0) {
		    FUNC3("\\*(+K");
		    do
			FUNC4((unsigned char)*start++);
		    while (--i > 0);
		    FUNC3("\\*(-K");
		    continue;
		}
	    }

	FUNC4((unsigned char)*start++);
    }
}