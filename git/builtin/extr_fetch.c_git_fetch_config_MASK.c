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
 int RECURSE_SUBMODULES_OFF ; 
 int RECURSE_SUBMODULES_ON ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ fetch_parallel_config ; 
 void* fetch_prune_config ; 
 void* fetch_prune_tags_config ; 
 void* fetch_show_forced_updates ; 
 void* FUNC2 (char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 int FUNC4 (char const*,char const*,void*) ; 
 int FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*) ; 
 int recurse_submodules ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  submodule_fetch_jobs_config ; 

__attribute__((used)) static int FUNC8(const char *k, const char *v, void *cb)
{
	if (!FUNC7(k, "fetch.prune")) {
		fetch_prune_config = FUNC2(k, v);
		return 0;
	}

	if (!FUNC7(k, "fetch.prunetags")) {
		fetch_prune_tags_config = FUNC2(k, v);
		return 0;
	}

	if (!FUNC7(k, "fetch.showforcedupdates")) {
		fetch_show_forced_updates = FUNC2(k, v);
		return 0;
	}

	if (!FUNC7(k, "submodule.recurse")) {
		int r = FUNC2(k, v) ?
			RECURSE_SUBMODULES_ON : RECURSE_SUBMODULES_OFF;
		recurse_submodules = r;
	}

	if (!FUNC7(k, "submodule.fetchjobs")) {
		submodule_fetch_jobs_config = FUNC6(k, v);
		return 0;
	} else if (!FUNC7(k, "fetch.recursesubmodules")) {
		recurse_submodules = FUNC5(k, v);
		return 0;
	}

	if (!FUNC7(k, "fetch.parallel")) {
		fetch_parallel_config = FUNC3(k, v);
		if (fetch_parallel_config < 0)
			FUNC1(FUNC0("fetch.parallel cannot be negative"));
		return 0;
	}

	return FUNC4(k, v, cb);
}