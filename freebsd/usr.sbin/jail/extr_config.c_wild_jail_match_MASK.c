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
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,int) ; 

int
FUNC3(const char *jname, const char *wname)
{
	const char *jc, *jd, *wc, *wd;

	/*
	 * A non-final "*" component in the wild name matches a single jail
	 * component, and a final "*" matches one or more jail components.
	 */
	for (jc = jname, wc = wname;
	     (jd = FUNC0(jc, '.')) && (wd = FUNC0(wc, '.'));
	     jc = jd + 1, wc = wd + 1)
		if (FUNC2(jc, wc, jd - jc + 1) && FUNC2(wc, "*.", 2))
			return 0;
	return (!FUNC1(jc, wc) || !FUNC1(wc, "*"));
}