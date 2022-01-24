#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pathspec {int dummy; } ;
struct option {int dummy; } ;
struct module_list {int nr; TYPE_1__** entries; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned int ABSORB_GITDIR_RECURSE_SUBMODULES ; 
 struct module_list MODULE_LIST_INIT ; 
 char const* FUNC0 (char*) ; 
 struct option FUNC1 (int /*<<< orphan*/ ,char*,unsigned int*,char const*,unsigned int) ; 
 struct option FUNC2 () ; 
 struct option FUNC3 (int /*<<< orphan*/ ,char*,char const**,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC5 (int,char const**,char const*,struct pathspec*,struct module_list*) ; 
 int FUNC6 (int,char const**,char const*,struct option*,char const* const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(int argc, const char **argv, const char *prefix)
{
	int i;
	struct pathspec pathspec;
	struct module_list list = MODULE_LIST_INIT;
	unsigned flags = ABSORB_GITDIR_RECURSE_SUBMODULES;

	struct option embed_gitdir_options[] = {
		FUNC3(0, "prefix", &prefix,
			   FUNC0("path"),
			   FUNC0("path into the working tree")),
		FUNC1(0, "--recursive", &flags, FUNC0("recurse into submodules"),
			ABSORB_GITDIR_RECURSE_SUBMODULES),
		FUNC2()
	};

	const char *const git_submodule_helper_usage[] = {
		FUNC0("git submodule--helper absorb-git-dirs [<options>] [<path>...]"),
		NULL
	};

	argc = FUNC6(argc, argv, prefix, embed_gitdir_options,
			     git_submodule_helper_usage, 0);

	if (FUNC5(argc, argv, prefix, &pathspec, &list) < 0)
		return 1;

	for (i = 0; i < list.nr; i++)
		FUNC4(list.entries[i]->name, flags);

	return 0;
}