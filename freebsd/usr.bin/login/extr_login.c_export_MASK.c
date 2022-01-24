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
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 
 char* FUNC1 (char const*,char) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC4(const char *s)
{
	static const char *noexport[] = {
		"SHELL", "HOME", "LOGNAME", "MAIL", "CDPATH",
		"IFS", "PATH", NULL
	};
	char *p;
	const char **pp;
	size_t n;

	if (FUNC2(s) > 1024 || (p = FUNC1(s, '=')) == NULL)
		return (0);
	if (FUNC3(s, "LD_", 3) == 0)
		return (0);
	for (pp = noexport; *pp != NULL; pp++) {
		n = FUNC2(*pp);
		if (s[n] == '=' && FUNC3(s, *pp, n) == 0)
			return (0);
	}
	*p = '\0';
	(void)FUNC0(s, p + 1, 1);
	*p = '=';
	return (1);
}