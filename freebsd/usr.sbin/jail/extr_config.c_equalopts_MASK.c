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
 char* FUNC0 (char const*,char) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,int) ; 

int
FUNC3(const char *opt1, const char *opt2)
{
	char *p;

	/* "opt" vs. "opt" or "noopt" vs. "noopt" */
	if (FUNC1(opt1, opt2) == 0)
		return (1);
	/* "noopt" vs. "opt" */
	if (FUNC2(opt1, "no", 2) == 0 && FUNC1(opt1 + 2, opt2) == 0)
		return (1);
	/* "opt" vs. "noopt" */
	if (FUNC2(opt2, "no", 2) == 0 && FUNC1(opt1, opt2 + 2) == 0)
		return (1);
	while ((p = FUNC0(opt1, '.')) != NULL &&
	    !FUNC2(opt1, opt2, ++p - opt1)) {
		opt2 += p - opt1;
		opt1 = p;
		/* "foo.noopt" vs. "foo.opt" */
		if (FUNC2(opt1, "no", 2) == 0 && FUNC1(opt1 + 2, opt2) == 0)
			return (1);
		/* "foo.opt" vs. "foo.noopt" */
		if (FUNC2(opt2, "no", 2) == 0 && FUNC1(opt1, opt2 + 2) == 0)
			return (1);
	}
	return (0);
}