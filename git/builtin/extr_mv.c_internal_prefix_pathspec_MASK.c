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
 int /*<<< orphan*/  FUNC0 (char const**,int) ; 
 unsigned int DUP_BASENAME ; 
 unsigned int KEEP_TRAILING_SLASH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const) ; 
 char* FUNC4 (char const*,int,char const*) ; 
 int FUNC5 (char const*) ; 
 char* FUNC6 (char const*,int) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char **FUNC8(const char *prefix,
					     const char **pathspec,
					     int count, unsigned flags)
{
	int i;
	const char **result;
	int prefixlen = prefix ? FUNC5(prefix) : 0;
	FUNC0(result, count + 1);

	/* Create an intermediate copy of the pathspec based on the flags */
	for (i = 0; i < count; i++) {
		int length = FUNC5(pathspec[i]);
		int to_copy = length;
		char *it;
		while (!(flags & KEEP_TRAILING_SLASH) &&
		       to_copy > 0 && FUNC3(pathspec[i][to_copy - 1]))
			to_copy--;

		it = FUNC6(pathspec[i], to_copy);
		if (flags & DUP_BASENAME) {
			result[i] = FUNC7(FUNC1(it));
			FUNC2(it);
		} else {
			result[i] = it;
		}
	}
	result[count] = NULL;

	/* Prefix the pathspec and free the old intermediate strings */
	for (i = 0; i < count; i++) {
		const char *match = FUNC4(prefix, prefixlen, result[i]);
		FUNC2((char *) result[i]);
		result[i] = match;
	}

	return result;
}