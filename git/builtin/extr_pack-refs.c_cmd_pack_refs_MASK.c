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
 struct option FUNC1 (int /*<<< orphan*/ ,char*,unsigned int*,int /*<<< orphan*/ ,unsigned int) ; 
 struct option FUNC2 () ; 
 unsigned int PACK_REFS_ALL ; 
 unsigned int PACK_REFS_PRUNE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int /*<<< orphan*/  pack_refs_usage ; 
 scalar_t__ FUNC5 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct option*) ; 

int FUNC8(int argc, const char **argv, const char *prefix)
{
	unsigned int flags = PACK_REFS_PRUNE;
	struct option opts[] = {
		FUNC1(0, "all",   &flags, FUNC0("pack everything"), PACK_REFS_ALL),
		FUNC1(0, "prune", &flags, FUNC0("prune loose refs (default)"), PACK_REFS_PRUNE),
		FUNC2(),
	};
	FUNC4(git_default_config, NULL);
	if (FUNC5(argc, argv, prefix, opts, pack_refs_usage, 0))
		FUNC7(pack_refs_usage, opts);
	return FUNC6(FUNC3(the_repository), flags);
}