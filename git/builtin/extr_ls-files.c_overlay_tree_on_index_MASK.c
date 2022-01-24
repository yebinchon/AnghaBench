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
struct tree {int dummy; } ;
struct pathspec {int dummy; } ;
struct object_id {int dummy; } ;
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int /*<<< orphan*/  ce_flags; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  pathspec ;

/* Variables and functions */
 int /*<<< orphan*/  CE_STAGEMASK ; 
 int /*<<< orphan*/  CE_UPDATE ; 
 int /*<<< orphan*/  PATHSPEC_ALL_MAGIC ; 
 int /*<<< orphan*/  PATHSPEC_PREFER_CWD ; 
 int FUNC0 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (struct pathspec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pathspec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const**) ; 
 struct tree* FUNC5 (struct object_id*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct tree*,int,struct pathspec*,struct index_state*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 

void FUNC8(struct index_state *istate,
			   const char *tree_name, const char *prefix)
{
	struct tree *tree;
	struct object_id oid;
	struct pathspec pathspec;
	struct cache_entry *last_stage0 = NULL;
	int i;

	if (FUNC2(tree_name, &oid))
		FUNC1("tree-ish %s not found.", tree_name);
	tree = FUNC5(&oid);
	if (!tree)
		FUNC1("bad tree-ish %s", tree_name);

	/* Hoist the unmerged entries up to stage #3 to make room */
	for (i = 0; i < istate->cache_nr; i++) {
		struct cache_entry *ce = istate->cache[i];
		if (!FUNC0(ce))
			continue;
		ce->ce_flags |= CE_STAGEMASK;
	}

	if (prefix) {
		static const char *(matchbuf[1]);
		matchbuf[0] = NULL;
		FUNC4(&pathspec, PATHSPEC_ALL_MAGIC,
			       PATHSPEC_PREFER_CWD, prefix, matchbuf);
	} else
		FUNC3(&pathspec, 0, sizeof(pathspec));
	if (FUNC6(the_repository, tree, 1, &pathspec, istate))
		FUNC1("unable to read tree entries %s", tree_name);

	for (i = 0; i < istate->cache_nr; i++) {
		struct cache_entry *ce = istate->cache[i];
		switch (FUNC0(ce)) {
		case 0:
			last_stage0 = ce;
			/* fallthru */
		default:
			continue;
		case 1:
			/*
			 * If there is stage #0 entry for this, we do not
			 * need to show it.  We use CE_UPDATE bit to mark
			 * such an entry.
			 */
			if (last_stage0 &&
			    !FUNC7(last_stage0->name, ce->name))
				ce->ce_flags |= CE_UPDATE;
		}
	}
}