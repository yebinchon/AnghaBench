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
struct option {int dummy; } ;

/* Variables and functions */
 char const* FUNC0 (char*) ; 
 struct option FUNC1 (int /*<<< orphan*/ ,char*,int*,char const*,int) ; 
 struct option FUNC2 () ; 
 int /*<<< orphan*/  PARSE_OPT_KEEP_ARGV0 ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (int,char const**,char const*,struct option*,char const* const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC9 (char const* const*,struct option*) ; 

__attribute__((used)) static int FUNC10(int argc, const char **argv, const char *prefix)
{
	enum {
		CHECK_WRITEABLE = 1,
		DO_UNSET = 2
	} command = 0;

	struct option module_config_options[] = {
		FUNC1(0, "check-writeable", &command,
			    FUNC0("check if it is safe to write to the .gitmodules file"),
			    CHECK_WRITEABLE),
		FUNC1(0, "unset", &command,
			    FUNC0("unset the config in the .gitmodules file"),
			    DO_UNSET),
		FUNC2()
	};
	const char *const git_submodule_helper_usage[] = {
		FUNC0("git submodule--helper config <name> [<value>]"),
		FUNC0("git submodule--helper config --unset <name>"),
		FUNC0("git submodule--helper config --check-writeable"),
		NULL
	};

	argc = FUNC7(argc, argv, prefix, module_config_options,
			     git_submodule_helper_usage, PARSE_OPT_KEEP_ARGV0);

	if (argc == 1 && command == CHECK_WRITEABLE)
		return FUNC6() ? 0 : -1;

	/* Equivalent to ACTION_GET in builtin/config.c */
	if (argc == 2 && command != DO_UNSET)
		return FUNC8(the_repository, argv[1]);

	/* Equivalent to ACTION_SET in builtin/config.c */
	if (argc == 3 || (argc == 2 && command == DO_UNSET)) {
		const char *value = (argc == 3) ? argv[2] : NULL;

		if (!FUNC6())
			FUNC5(FUNC3("please make sure that the .gitmodules file is in the working tree"));

		return FUNC4(argv[1], value);
	}

	FUNC9(git_submodule_helper_usage, module_config_options);
}