#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;
struct repository {TYPE_1__* index; scalar_t__ submodule_prefix; } ;
struct pathspec {int dummy; } ;
struct grep_opt {scalar_t__ status_only; struct repository* repo; } ;
struct cache_entry {int ce_flags; scalar_t__ name; int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  oid; } ;
struct TYPE_3__ {int cache_nr; struct cache_entry** cache; } ;

/* Variables and functions */
 int CE_VALID ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct cache_entry const*) ; 
 scalar_t__ FUNC5 (struct cache_entry const*) ; 
 scalar_t__ FUNC6 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct grep_opt*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct grep_opt*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct grep_opt*,struct pathspec const*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC11 (TYPE_1__*,struct pathspec const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ recurse_submodules ; 
 scalar_t__ FUNC12 (struct repository*) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__) ; 
 int FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (TYPE_1__*,struct pathspec const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct grep_opt *opt,
		      const struct pathspec *pathspec, int cached)
{
	struct repository *repo = opt->repo;
	int hit = 0;
	int nr;
	struct strbuf name = STRBUF_INIT;
	int name_base_len = 0;
	if (repo->submodule_prefix) {
		name_base_len = FUNC17(repo->submodule_prefix);
		FUNC13(&name, repo->submodule_prefix);
	}

	if (FUNC12(repo) < 0)
		FUNC7(FUNC3("index file corrupt"));

	for (nr = 0; nr < repo->index->cache_nr; nr++) {
		const struct cache_entry *ce = repo->index->cache[nr];
		FUNC15(&name, name_base_len);
		FUNC13(&name, ce->name);

		if (FUNC2(ce->ce_mode) &&
		    FUNC11(repo->index, pathspec, name.buf, name.len, 0, NULL,
				   FUNC0(ce->ce_mode) ||
				   FUNC1(ce->ce_mode))) {
			/*
			 * If CE_VALID is on, we assume worktree file and its
			 * cache entry are identical, even if worktree file has
			 * been modified, so use cache version instead
			 */
			if (cached || (ce->ce_flags & CE_VALID) ||
			    FUNC5(ce)) {
				if (FUNC6(ce) || FUNC4(ce))
					continue;
				hit |= FUNC9(opt, &ce->oid, name.buf,
						 0, name.buf);
			} else {
				hit |= FUNC8(opt, name.buf);
			}
		} else if (recurse_submodules && FUNC1(ce->ce_mode) &&
			   FUNC18(repo->index, pathspec, name.buf, NULL)) {
			hit |= FUNC10(opt, pathspec, NULL, ce->name,
					      ce->name, cached);
		} else {
			continue;
		}

		if (FUNC6(ce)) {
			do {
				nr++;
			} while (nr < repo->index->cache_nr &&
				 !FUNC16(ce->name, repo->index->cache[nr]->name));
			nr--; /* compensate for loop control */
		}
		if (hit && opt->status_only)
			break;
	}

	FUNC14(&name);
	return hit;
}