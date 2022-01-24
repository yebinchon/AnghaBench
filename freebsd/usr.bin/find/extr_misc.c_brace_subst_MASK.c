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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (char*,size_t) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char const*,char*) ; 

void
FUNC6(char *orig, char **store, char *path, size_t len)
{
	const char *pastorigend, *p, *q;
	char *dst;
	size_t newlen, plen;

	plen = FUNC4(path);
	newlen = FUNC4(orig) + 1;
	pastorigend = orig + newlen;
	for (p = orig; (q = FUNC5(p, "{}")) != NULL; p = q + 2) {
		if (plen > 2 && newlen + plen - 2 < newlen)
			FUNC1(2, "brace_subst overflow");
		newlen += plen - 2;
	}
	if (newlen > len) {
		*store = FUNC3(*store, newlen);
		if (*store == NULL)
			FUNC0(2, NULL);
	}
	dst = *store;
	for (p = orig; (q = FUNC5(p, "{}")) != NULL; p = q + 2) {
		FUNC2(dst, p, q - p);
		dst += q - p;
		FUNC2(dst, path, plen);
		dst += plen;
	}
	FUNC2(dst, p, pastorigend - p);
}