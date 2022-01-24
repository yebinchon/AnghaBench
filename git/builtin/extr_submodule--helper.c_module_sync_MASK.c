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
struct sync_cb {char const* prefix; int /*<<< orphan*/  flags; } ;
struct pathspec {int dummy; } ;
struct option {int dummy; } ;
struct module_list {int dummy; } ;

/* Variables and functions */
 struct module_list MODULE_LIST_INIT ; 
 char const* FUNC0 (char*) ; 
 struct option FUNC1 (int /*<<< orphan*/ ,char*,int*,char const*) ; 
 struct option FUNC2 () ; 
 int /*<<< orphan*/  OPT_QUIET ; 
 int /*<<< orphan*/  OPT_RECURSIVE ; 
 struct option FUNC3 (int*,char const*) ; 
 struct sync_cb SYNC_CB_INIT ; 
 int /*<<< orphan*/  FUNC4 (struct module_list*,int /*<<< orphan*/ ,struct sync_cb*) ; 
 scalar_t__ FUNC5 (int,char const**,char const*,struct pathspec*,struct module_list*) ; 
 int FUNC6 (int,char const**,char const*,struct option*,char const* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sync_submodule_cb ; 

__attribute__((used)) static int FUNC7(int argc, const char **argv, const char *prefix)
{
	struct sync_cb info = SYNC_CB_INIT;
	struct pathspec pathspec;
	struct module_list list = MODULE_LIST_INIT;
	int quiet = 0;
	int recursive = 0;

	struct option module_sync_options[] = {
		FUNC3(&quiet, FUNC0("Suppress output of synchronizing submodule url")),
		FUNC1(0, "recursive", &recursive,
			FUNC0("Recurse into nested submodules")),
		FUNC2()
	};

	const char *const git_submodule_helper_usage[] = {
		FUNC0("git submodule--helper sync [--quiet] [--recursive] [<path>]"),
		NULL
	};

	argc = FUNC6(argc, argv, prefix, module_sync_options,
			     git_submodule_helper_usage, 0);

	if (FUNC5(argc, argv, prefix, &pathspec, &list) < 0)
		return 1;

	info.prefix = prefix;
	if (quiet)
		info.flags |= OPT_QUIET;
	if (recursive)
		info.flags |= OPT_RECURSIVE;

	FUNC4(&list, sync_submodule_cb, &info);

	return 0;
}