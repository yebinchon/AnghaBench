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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 () ; 
 struct option FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OPT_STOP_AT_NON_OPTION ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,char const**) ; 
 int /*<<< orphan*/  builtin_remote_usage ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC6 (int,char const**) ; 
 int FUNC7 (int,char const**) ; 
 int FUNC8 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,char const**) ; 
 int FUNC10 (int,char const**) ; 
 int FUNC11 (int,char const**) ; 
 int FUNC12 (int,char const**) ; 
 int FUNC13 (int,char const**) ; 
 int FUNC14 (int,char const**) ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char const*,char*) ; 
 int FUNC17 (int,char const**) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct option*) ; 
 int /*<<< orphan*/  verbose ; 

int FUNC19(int argc, const char **argv, const char *prefix)
{
	struct option options[] = {
		FUNC2(&verbose, FUNC0("be verbose; must be placed before a subcommand")),
		FUNC1()
	};
	int result;

	argc = FUNC8(argc, argv, prefix, options, builtin_remote_usage,
		PARSE_OPT_STOP_AT_NON_OPTION);

	if (argc < 1)
		result = FUNC15();
	else if (!FUNC16(argv[0], "add"))
		result = FUNC4(argc, argv);
	else if (!FUNC16(argv[0], "rename"))
		result = FUNC7(argc, argv);
	else if (!FUNC16(argv[0], "rm") || !FUNC16(argv[0], "remove"))
		result = FUNC10(argc, argv);
	else if (!FUNC16(argv[0], "set-head"))
		result = FUNC12(argc, argv);
	else if (!FUNC16(argv[0], "set-branches"))
		result = FUNC11(argc, argv);
	else if (!FUNC16(argv[0], "get-url"))
		result = FUNC6(argc, argv);
	else if (!FUNC16(argv[0], "set-url"))
		result = FUNC13(argc, argv);
	else if (!FUNC16(argv[0], "show"))
		result = FUNC14(argc, argv);
	else if (!FUNC16(argv[0], "prune"))
		result = FUNC9(argc, argv);
	else if (!FUNC16(argv[0], "update"))
		result = FUNC17(argc, argv);
	else {
		FUNC5(FUNC3("Unknown subcommand: %s"), argv[0]);
		FUNC18(builtin_remote_usage, options);
	}

	return result ? 1 : 0;
}