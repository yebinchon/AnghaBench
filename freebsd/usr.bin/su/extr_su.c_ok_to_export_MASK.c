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
 int /*<<< orphan*/ * FUNC0 (char const*,char) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC3(const char *s)
{
	static const char *noexport[] = {
		"SHELL", /* "HOME", */ "LOGNAME", "MAIL", "CDPATH",
		"IFS", "PATH", NULL
	};
	const char **pp;
	size_t n;

	if (FUNC1(s) > 1024 || FUNC0(s, '=') == NULL)
		return 0;
	if (FUNC2(s, "LD_", 3) == 0)
		return 0;
	for (pp = noexport; *pp != NULL; pp++) {
		n = FUNC1(*pp);
		if (s[n] == '=' && FUNC2(s, *pp, n) == 0)
			return 0;
	}
	return 1;
}