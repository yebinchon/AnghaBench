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
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC4(const char *arg)
{
	static const char *rev_args[] = {
		"--all",
		"--bisect",
		"--dense",
		"--branches=",
		"--branches",
		"--header",
		"--ignore-missing",
		"--max-age=",
		"--max-count=",
		"--min-age=",
		"--no-merges",
		"--min-parents=",
		"--no-min-parents",
		"--max-parents=",
		"--no-max-parents",
		"--objects",
		"--objects-edge",
		"--parents",
		"--pretty",
		"--remotes=",
		"--remotes",
		"--glob=",
		"--sparse",
		"--tags=",
		"--tags",
		"--topo-order",
		"--date-order",
		"--unpacked",
		NULL
	};
	const char **p = rev_args;

	/* accept -<digit>, like traditional "head" */
	if ((*arg == '-') && FUNC0(arg[1]))
		return 1;

	for (;;) {
		const char *str = *p++;
		int len;
		if (!str)
			return 0;
		len = FUNC2(str);
		if (!FUNC1(arg, str) ||
		    (str[len-1] == '=' && !FUNC3(arg, str, len)))
			return 1;
	}
}