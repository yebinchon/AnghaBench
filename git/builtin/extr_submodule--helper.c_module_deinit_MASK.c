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
struct deinit_cb {char const* prefix; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 struct deinit_cb DEINIT_CB_INIT ; 
 struct module_list MODULE_LIST_INIT ; 
 char const* FUNC0 (char*) ; 
 struct option FUNC1 (int /*<<< orphan*/ ,char*,int*,char const*) ; 
 struct option FUNC2 () ; 
 int /*<<< orphan*/  OPT_FORCE ; 
 int /*<<< orphan*/  OPT_QUIET ; 
 struct option FUNC3 (int*,char const*,int /*<<< orphan*/ ) ; 
 struct option FUNC4 (int*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  deinit_submodule_cb ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct module_list*,int /*<<< orphan*/ ,struct deinit_cb*) ; 
 scalar_t__ FUNC9 (int,char const**,char const*,struct pathspec*,struct module_list*) ; 
 int FUNC10 (int,char const**,char const*,struct option*,char const* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const* const*,struct option*) ; 

__attribute__((used)) static int FUNC12(int argc, const char **argv, const char *prefix)
{
	struct deinit_cb info = DEINIT_CB_INIT;
	struct pathspec pathspec;
	struct module_list list = MODULE_LIST_INIT;
	int quiet = 0;
	int force = 0;
	int all = 0;

	struct option module_deinit_options[] = {
		FUNC4(&quiet, FUNC0("Suppress submodule status output")),
		FUNC3(&force, FUNC0("Remove submodule working trees even if they contain local changes"), 0),
		FUNC1(0, "all", &all, FUNC0("Unregister all submodules")),
		FUNC2()
	};

	const char *const git_submodule_helper_usage[] = {
		FUNC0("git submodule deinit [--quiet] [-f | --force] [--all | [--] [<path>...]]"),
		NULL
	};

	argc = FUNC10(argc, argv, prefix, module_deinit_options,
			     git_submodule_helper_usage, 0);

	if (all && argc) {
		FUNC7("pathspec and --all are incompatible");
		FUNC11(git_submodule_helper_usage,
				   module_deinit_options);
	}

	if (!argc && !all)
		FUNC6(FUNC5("Use '--all' if you really want to deinitialize all submodules"));

	if (FUNC9(argc, argv, prefix, &pathspec, &list) < 0)
		return 1;

	info.prefix = prefix;
	if (quiet)
		info.flags |= OPT_QUIET;
	if (force)
		info.flags |= OPT_FORCE;

	FUNC8(&list, deinit_submodule_cb, &info);

	return 0;
}