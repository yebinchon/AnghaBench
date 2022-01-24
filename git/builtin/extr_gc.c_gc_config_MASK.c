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

/* Variables and functions */
 int /*<<< orphan*/  aggressive_depth ; 
 int /*<<< orphan*/  aggressive_window ; 
 int /*<<< orphan*/  big_pack_threshold ; 
 int /*<<< orphan*/  detach_auto ; 
 int /*<<< orphan*/  gc_auto_pack_limit ; 
 int /*<<< orphan*/  gc_auto_threshold ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  gc_log_expire ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const**) ; 
 int /*<<< orphan*/  git_default_config ; 
 int /*<<< orphan*/  max_delta_cache_size ; 
 int pack_refs ; 
 int /*<<< orphan*/  prune_expire ; 
 scalar_t__ prune_reflogs ; 
 int /*<<< orphan*/  prune_worktrees_expire ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 

__attribute__((used)) static void FUNC9(void)
{
	const char *value;

	if (!FUNC7("gc.packrefs", &value)) {
		if (value && !FUNC8(value, "notbare"))
			pack_refs = -1;
		else
			pack_refs = FUNC2("gc.packrefs", value);
	}

	if (FUNC0("gc.reflogexpire") &&
	    FUNC0("gc.reflogexpireunreachable"))
		prune_reflogs = 0;

	FUNC5("gc.aggressivewindow", &aggressive_window);
	FUNC5("gc.aggressivedepth", &aggressive_depth);
	FUNC5("gc.auto", &gc_auto_threshold);
	FUNC5("gc.autopacklimit", &gc_auto_pack_limit);
	FUNC3("gc.autodetach", &detach_auto);
	FUNC4("gc.pruneexpire", &prune_expire);
	FUNC4("gc.worktreepruneexpire", &prune_worktrees_expire);
	FUNC4("gc.logexpiry", &gc_log_expire);

	FUNC6("gc.bigpackthreshold", &big_pack_threshold);
	FUNC6("pack.deltacachesize", &max_delta_cache_size);

	FUNC1(git_default_config, NULL);
}