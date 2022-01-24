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
typedef  int /*<<< orphan*/  str ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int,int,int,int) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 

__attribute__((used)) static bool
FUNC4(int domain, int bus, int slot, int func)
{
	char str[128], *env;
	int default_bounce;
	bool ret;
	static const char bounce_str[] = "bounce";
	static const char dmar_str[] = "dmar";

	default_bounce = 0;
	env = FUNC1("hw.busdma.default");
	if (env != NULL) {
		if (FUNC3(env, bounce_str) == 0)
			default_bounce = 1;
		else if (FUNC3(env, dmar_str) == 0)
			default_bounce = 0;
		FUNC0(env);
	}

	FUNC2(str, sizeof(str), "hw.busdma.pci%d.%d.%d.%d",
	    domain, bus, slot, func);
	env = FUNC1(str);
	if (env == NULL)
		return (default_bounce != 0);
	if (FUNC3(env, bounce_str) == 0)
		ret = true;
	else if (FUNC3(env, dmar_str) == 0)
		ret = false;
	else
		ret = default_bounce != 0;
	FUNC0(env);
	return (ret);
}