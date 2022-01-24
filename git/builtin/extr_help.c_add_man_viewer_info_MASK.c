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
 int FUNC0 (char const*,int,char const*) ; 
 int FUNC1 (char const*,int,char const*) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char*,char const**,int*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(const char *var, const char *value)
{
	const char *name, *subkey;
	int namelen;

	if (FUNC3(var, "man", &name, &namelen, &subkey) < 0 || !name)
		return 0;

	if (!FUNC4(subkey, "path")) {
		if (!value)
			return FUNC2(var);
		return FUNC1(name, namelen, value);
	}
	if (!FUNC4(subkey, "cmd")) {
		if (!value)
			return FUNC2(var);
		return FUNC0(name, namelen, value);
	}

	return 0;
}