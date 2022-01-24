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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 char const* FUNC2 (char*,char const*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char*,char const*,char const*) ; 

char *FUNC5(const char *old_cwd,
			     const char *new_cwd,
			     const char *path)
{
	char *ret, *full;

	if (FUNC1(path))
		return FUNC3(path);

	full = FUNC4("%s/%s", old_cwd, path);
	ret = FUNC3(FUNC2(full, new_cwd));
	FUNC0(full);

	return ret;
}