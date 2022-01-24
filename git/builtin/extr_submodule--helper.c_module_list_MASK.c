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
struct module_list {int nr; struct cache_entry** entries; } ;
struct cache_entry {int ce_mode; char* name; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 struct module_list MODULE_LIST_INIT ; 
 char const* FUNC0 (char*) ; 
 struct option FUNC1 () ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,char const**,char const*,char const*) ; 
 int FUNC3 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC5 (int,char const**,char const*,struct pathspec*,struct module_list*) ; 
 int /*<<< orphan*/  null_oid ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int,char const**,char const*,struct option*,char const* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC9(int argc, const char **argv, const char *prefix)
{
	int i;
	struct pathspec pathspec;
	struct module_list list = MODULE_LIST_INIT;

	struct option module_list_options[] = {
		FUNC2(0, "prefix", &prefix,
			   FUNC0("path"),
			   FUNC0("alternative anchor for relative paths")),
		FUNC1()
	};

	const char *const git_submodule_helper_usage[] = {
		FUNC0("git submodule--helper list [--prefix=<path>] [<path>...]"),
		NULL
	};

	argc = FUNC7(argc, argv, prefix, module_list_options,
			     git_submodule_helper_usage, 0);

	if (FUNC5(argc, argv, prefix, &pathspec, &list) < 0)
		return 1;

	for (i = 0; i < list.nr; i++) {
		const struct cache_entry *ce = list.entries[i];

		if (FUNC3(ce))
			FUNC8("%06o %s U\t", ce->ce_mode, FUNC6(&null_oid));
		else
			FUNC8("%06o %s %d\t", ce->ce_mode,
			       FUNC6(&ce->oid), FUNC3(ce));

		FUNC4(stdout, "%s\n", ce->name);
	}
	return 0;
}