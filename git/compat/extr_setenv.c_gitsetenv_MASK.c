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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (size_t,size_t,int) ; 
 scalar_t__ FUNC5 (char const*,char) ; 
 size_t FUNC6 (char const*) ; 

int FUNC7(const char *name, const char *value, int replace)
{
	int out;
	size_t namelen, valuelen;
	char *envstr;

	if (!name || FUNC5(name, '=') || !value) {
		errno = EINVAL;
		return -1;
	}
	if (!replace) {
		char *oldval = NULL;
		oldval = FUNC0(name);
		if (oldval) return 0;
	}

	namelen = FUNC6(name);
	valuelen = FUNC6(value);
	envstr = FUNC1(FUNC4(namelen, valuelen, 2));
	if (!envstr) {
		errno = ENOMEM;
		return -1;
	}

	FUNC2(envstr, name, namelen);
	envstr[namelen] = '=';
	FUNC2(envstr + namelen + 1, value, valuelen);
	envstr[namelen + valuelen + 1] = 0;

	out = FUNC3(envstr);
	/* putenv(3) makes the argument string part of the environment,
	 * and changing that string modifies the environment --- which
	 * means we do not own that storage anymore.  Do not free
	 * envstr.
	 */

	return out;
}