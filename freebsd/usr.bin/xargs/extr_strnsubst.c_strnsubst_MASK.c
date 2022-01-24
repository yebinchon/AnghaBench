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
 char* FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 size_t FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,uintptr_t) ; 
 char* FUNC7 (char*,char const*) ; 

void
FUNC8(char **str, const char *match, const char *replstr, size_t maxsize)
{
	char *s1, *s2, *this;

	s1 = *str;
	if (s1 == NULL)
		return;
	/*
	 * If maxsize is 0 then set it to the length of s1, because we have
	 * to duplicate s1.  XXX we maybe should double-check whether the match
	 * appears in s1.  If it doesn't, then we also have to set the length
	 * to the length of s1, to avoid modifying the argument.  It may make
	 * sense to check if maxsize is <= strlen(s1), because in that case we
	 * want to return the unmodified string, too.
	 */
	if (maxsize == 0) {
		match = NULL;
		maxsize = FUNC5(s1) + 1;
	}
	s2 = FUNC0(1, maxsize);
	if (s2 == NULL)
		FUNC1(1, "calloc");

	if (replstr == NULL)
		replstr = "";

	if (match == NULL || replstr == NULL || maxsize == FUNC5(s1)) {
		FUNC4(s2, s1, maxsize);
		goto done;
	}

	for (;;) {
		this = FUNC7(s1, match);
		if (this == NULL)
			break;
		if ((FUNC5(s2) + FUNC5(s1) + FUNC5(replstr) -
		    FUNC5(match) + 1) > maxsize) {
			FUNC3(s2, s1, maxsize);
			goto done;
		}
		FUNC6(s2, s1, (uintptr_t)this - (uintptr_t)s1);
		FUNC2(s2, replstr);
		s1 = this + FUNC5(match);
	}
	FUNC2(s2, s1);
done:
	*str = s2;
	return;
}