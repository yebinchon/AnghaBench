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
struct pathspec {int dummy; } ;
struct option {int dummy; } ;
struct module_list {int dummy; } ;
struct cb_foreach {int argc; char const** argv; char const* prefix; int /*<<< orphan*/  recursive; int /*<<< orphan*/  quiet; } ;

/* Variables and functions */
 struct cb_foreach CB_FOREACH_INIT ; 
 struct module_list MODULE_LIST_INIT ; 
 char const* FUNC0 (char*) ; 
 struct option FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char const*) ; 
 struct option FUNC2 () ; 
 struct option FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct module_list*,int /*<<< orphan*/ ,struct cb_foreach*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,struct pathspec*,struct module_list*) ; 
 int FUNC6 (int,char const**,char const*,struct option*,char const* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  runcommand_in_submodule_cb ; 

__attribute__((used)) static int FUNC7(int argc, const char **argv, const char *prefix)
{
	struct cb_foreach info = CB_FOREACH_INIT;
	struct pathspec pathspec;
	struct module_list list = MODULE_LIST_INIT;

	struct option module_foreach_options[] = {
		FUNC3(&info.quiet, FUNC0("Suppress output of entering each submodule command")),
		FUNC1(0, "recursive", &info.recursive,
			 FUNC0("Recurse into nested submodules")),
		FUNC2()
	};

	const char *const git_submodule_helper_usage[] = {
		FUNC0("git submodule--helper foreach [--quiet] [--recursive] [--] <command>"),
		NULL
	};

	argc = FUNC6(argc, argv, prefix, module_foreach_options,
			     git_submodule_helper_usage, 0);

	if (FUNC5(0, NULL, prefix, &pathspec, &list) < 0)
		return 1;

	info.argc = argc;
	info.argv = argv;
	info.prefix = prefix;

	FUNC4(&list, runcommand_in_submodule_cb, &info);

	return 0;
}