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
struct tree_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parsed; int /*<<< orphan*/  oid; } ;
struct tree {TYPE_1__ object; int /*<<< orphan*/  size; int /*<<< orphan*/  buffer; } ;
struct repository {int dummy; } ;
struct name_entry {int /*<<< orphan*/  path; int /*<<< orphan*/  oid; int /*<<< orphan*/  mode; } ;
struct cache_tree_sub {struct cache_tree* cache_tree; } ;
struct cache_tree {int entry_count; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct cache_tree* FUNC1 () ; 
 struct cache_tree_sub* FUNC2 (struct cache_tree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tree_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tree* FUNC4 (struct repository*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tree*) ; 
 scalar_t__ FUNC7 (struct tree_desc*,struct name_entry*) ; 

__attribute__((used)) static void FUNC8(struct repository *r,
				 struct cache_tree *it,
				 struct tree *tree)
{
	struct tree_desc desc;
	struct name_entry entry;
	int cnt;

	FUNC5(&it->oid, &tree->object.oid);
	FUNC3(&desc, tree->buffer, tree->size);
	cnt = 0;
	while (FUNC7(&desc, &entry)) {
		if (!FUNC0(entry.mode))
			cnt++;
		else {
			struct cache_tree_sub *sub;
			struct tree *subtree = FUNC4(r, &entry.oid);
			if (!subtree->object.parsed)
				FUNC6(subtree);
			sub = FUNC2(it, entry.path);
			sub->cache_tree = FUNC1();
			FUNC8(r, sub->cache_tree, subtree);
			cnt += sub->cache_tree->entry_count;
		}
	}
	it->entry_count = cnt;
}