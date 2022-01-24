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
struct worktree {int /*<<< orphan*/  path; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct index_state {int cache_nr; struct cache_entry** cache; int /*<<< orphan*/ * member_0; } ;
struct cache_entry {int /*<<< orphan*/  name; int /*<<< orphan*/  ce_mode; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct index_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct worktree const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct worktree const*,char*) ; 

__attribute__((used)) static void FUNC12(const struct worktree *wt)
{
	struct index_state istate = { NULL };
	struct strbuf path = STRBUF_INIT;
	int i, found_submodules = 0;

	if (FUNC5(FUNC11(wt, "modules"))) {
		/*
		 * There could be false positives, e.g. the "modules"
		 * directory exists but is empty. But it's a rare case and
		 * this simpler check is probably good enough for now.
		 */
		found_submodules = 1;
	} else if (FUNC7(&istate, FUNC11(wt, "index"),
				   FUNC4(wt)) > 0) {
		for (i = 0; i < istate.cache_nr; i++) {
			struct cache_entry *ce = istate.cache[i];
			int err;

			if (!FUNC0(ce->ce_mode))
				continue;

			FUNC10(&path);
			FUNC8(&path, "%s/%s", wt->path, ce->name);
			if (!FUNC6(path.buf, &err))
				continue;

			found_submodules = 1;
			break;
		}
	}
	FUNC3(&istate);
	FUNC9(&path);

	if (found_submodules)
		FUNC2(FUNC1("working trees containing submodules cannot be moved or removed"));
}