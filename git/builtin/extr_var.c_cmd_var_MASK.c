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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  show_config ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  var_usage ; 

int FUNC6(int argc, const char **argv, const char *prefix)
{
	const char *val = NULL;
	if (argc != 2)
		FUNC5(var_usage);

	if (FUNC4(argv[1], "-l") == 0) {
		FUNC0(show_config, NULL);
		FUNC1();
		return 0;
	}
	FUNC0(git_default_config, NULL);
	val = FUNC3(argv[1]);
	if (!val)
		FUNC5(var_usage);

	FUNC2("%s\n", val);

	return 0;
}