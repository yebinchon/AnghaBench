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
struct init_cb {char const* prefix; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 struct init_cb INIT_CB_INIT ; 
 struct module_list MODULE_LIST_INIT ; 
 char const* FUNC0 (char*) ; 
 struct option FUNC1 () ; 
 int /*<<< orphan*/  OPT_QUIET ; 
 struct option FUNC2 (int*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct module_list*,int /*<<< orphan*/ ,struct init_cb*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  init_submodule_cb ; 
 int /*<<< orphan*/  FUNC5 (struct module_list*) ; 
 scalar_t__ FUNC6 (int,char const**,char const*,struct pathspec*,struct module_list*) ; 
 int FUNC7 (int,char const**,char const*,struct option*,char const* const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(int argc, const char **argv, const char *prefix)
{
	struct init_cb info = INIT_CB_INIT;
	struct pathspec pathspec;
	struct module_list list = MODULE_LIST_INIT;
	int quiet = 0;

	struct option module_init_options[] = {
		FUNC2(&quiet, FUNC0("Suppress output for initializing a submodule")),
		FUNC1()
	};

	const char *const git_submodule_helper_usage[] = {
		FUNC0("git submodule--helper init [<options>] [<path>]"),
		NULL
	};

	argc = FUNC7(argc, argv, prefix, module_init_options,
			     git_submodule_helper_usage, 0);

	if (FUNC6(argc, argv, prefix, &pathspec, &list) < 0)
		return 1;

	/*
	 * If there are no path args and submodule.active is set then,
	 * by default, only initialize 'active' modules.
	 */
	if (!argc && FUNC4("submodule.active"))
		FUNC5(&list);

	info.prefix = prefix;
	if (quiet)
		info.flags |= OPT_QUIET;

	FUNC3(&list, init_submodule_cb, &info);

	return 0;
}