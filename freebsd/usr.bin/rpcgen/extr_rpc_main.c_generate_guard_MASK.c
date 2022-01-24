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
 char* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 void* FUNC6 (char const*,char) ; 
 char FUNC7 (char) ; 
 char* FUNC8 (char const*) ; 

char *
FUNC9(const char *pathname)
{
	const char *filename;
	char *guard, *tmp, *stopat;

	filename = FUNC6(pathname, '/');  /* find last component */
	filename = ((filename == NULL) ? pathname : filename+1);
	guard = FUNC8(filename);
	stopat = FUNC6(guard, '.');

	/*
	 * Convert to a valid C macro name and make it upper case.
	 * Map macro unfriendly characterss to '_'.
	 */
	for (tmp = guard; *tmp != '\000'; ++tmp) {
		if (FUNC3(*tmp))
			*tmp = FUNC7(*tmp);
		else if (FUNC4(*tmp) || *tmp == '_')
			/* OK for C */;
		else if (tmp == guard)
			*tmp = '_';
		else if (FUNC2(*tmp))
			/* OK for all but first character */;
		else if (tmp == stopat) {
			*tmp = '\0';
			break;
		} else
			*tmp = '_';
	}
	/*
	 * Can't have a '_' in front, because it'll end up being "__".
	 * "__" macros shoudln't be used. So, remove all of the
	 * '_' characters from the front.
	 */
	if (*guard == '_') {
		for (tmp = guard; *tmp == '_'; ++tmp)
			;
		FUNC5(guard, tmp);
	}
	tmp = guard;
	guard = FUNC0(guard, "_H_RPCGEN");
	FUNC1(tmp);
	return (guard);
}