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
 int /*<<< orphan*/  REFNAME_ALLOW_ONELEVEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 char* reflog_exists_usage ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(int argc, const char **argv, const char *prefix)
{
	int i, start = 0;

	for (i = 1; i < argc; i++) {
		const char *arg = argv[i];
		if (!FUNC4(arg, "--")) {
			i++;
			break;
		}
		else if (arg[0] == '-')
			FUNC5(FUNC0(reflog_exists_usage));
		else
			break;
	}

	start = i;

	if (argc - start != 1)
		FUNC5(FUNC0(reflog_exists_usage));

	if (FUNC1(argv[start], REFNAME_ALLOW_ONELEVEL))
		FUNC2(FUNC0("invalid ref format: %s"), argv[start]);
	return !FUNC3(argv[start]);
}