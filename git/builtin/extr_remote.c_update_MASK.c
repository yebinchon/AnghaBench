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
struct argv_array {int argc; int /*<<< orphan*/ * argv; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 (char,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 int /*<<< orphan*/  PARSE_OPT_KEEP_ARGV0 ; 
 int /*<<< orphan*/  RUN_GIT_CMD ; 
 int /*<<< orphan*/  FUNC3 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC4 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC5 (struct argv_array*,char const*) ; 
 int /*<<< orphan*/  builtin_remote_update_usage ; 
 int /*<<< orphan*/  get_remote_default ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (int,char const**,int /*<<< orphan*/ *,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC10(int argc, const char **argv)
{
	int i, prune = -1;
	struct option options[] = {
		FUNC1('p', "prune", &prune,
			 FUNC0("prune remotes after fetching")),
		FUNC2()
	};
	struct argv_array fetch_argv = ARGV_ARRAY_INIT;
	int default_defined = 0;
	int retval;

	argc = FUNC7(argc, argv, NULL, options, builtin_remote_update_usage,
			     PARSE_OPT_KEEP_ARGV0);

	FUNC5(&fetch_argv, "fetch");

	if (prune != -1)
		FUNC5(&fetch_argv, prune ? "--prune" : "--no-prune");
	if (verbose)
		FUNC5(&fetch_argv, "-v");
	FUNC5(&fetch_argv, "--multiple");
	if (argc < 2)
		FUNC5(&fetch_argv, "default");
	for (i = 1; i < argc; i++)
		FUNC5(&fetch_argv, argv[i]);

	if (FUNC9(fetch_argv.argv[fetch_argv.argc-1], "default") == 0) {
		FUNC6(get_remote_default, &default_defined);
		if (!default_defined) {
			FUNC4(&fetch_argv);
			FUNC5(&fetch_argv, "--all");
		}
	}

	retval = FUNC8(fetch_argv.argv, RUN_GIT_CMD);
	FUNC3(&fetch_argv);
	return retval;
}