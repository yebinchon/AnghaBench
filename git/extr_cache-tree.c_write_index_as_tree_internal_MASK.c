#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct object_id {int dummy; } ;
struct index_state {TYPE_1__* cache_tree; } ;
struct cache_tree {int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int WRITE_TREE_IGNORE_CACHE_TREE ; 
 int WRITE_TREE_PREFIX_ERROR ; 
 int WRITE_TREE_UNMERGED_INDEX ; 
 TYPE_1__* FUNC0 () ; 
 struct cache_tree* FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 scalar_t__ FUNC3 (struct index_state*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct object_id *oid,
					struct index_state *index_state,
					int cache_tree_valid,
					int flags,
					const char *prefix)
{
	if (flags & WRITE_TREE_IGNORE_CACHE_TREE) {
		FUNC2(&index_state->cache_tree);
		cache_tree_valid = 0;
	}

	if (!index_state->cache_tree)
		index_state->cache_tree = FUNC0();

	if (!cache_tree_valid && FUNC3(index_state, flags) < 0)
		return WRITE_TREE_UNMERGED_INDEX;

	if (prefix) {
		struct cache_tree *subtree;
		subtree = FUNC1(index_state->cache_tree, prefix);
		if (!subtree)
			return WRITE_TREE_PREFIX_ERROR;
		FUNC4(oid, &subtree->oid);
	}
	else
		FUNC4(oid, &index_state->cache_tree->oid);

	return 0;
}