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
struct cache_tree_sub {struct cache_tree* cache_tree; } ;
struct cache_tree {int entry_count; int subtree_nr; TYPE_1__** down; } ;
struct TYPE_4__ {int /*<<< orphan*/  cache_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cache_tree_sub* FUNC2 (struct cache_tree*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (char const*,char) ; 
 int FUNC6 (struct cache_tree*,char const*,int) ; 

__attribute__((used)) static int FUNC7(struct cache_tree *it, const char *path)
{
	/* a/b/c
	 * ==> invalidate self
	 * ==> find "a", have it invalidate "b/c"
	 * a
	 * ==> invalidate self
	 * ==> if "a" exists as a subtree, remove it.
	 */
	const char *slash;
	int namelen;
	struct cache_tree_sub *down;

#if DEBUG_CACHE_TREE
	fprintf(stderr, "cache-tree invalidate <%s>\n", path);
#endif

	if (!it)
		return 0;
	slash = FUNC5(path, '/');
	namelen = slash - path;
	it->entry_count = -1;
	if (!*slash) {
		int pos;
		pos = FUNC6(it, path, namelen);
		if (0 <= pos) {
			FUNC1(&it->down[pos]->cache_tree);
			FUNC4(it->down[pos]);
			/* 0 1 2 3 4 5
			 *       ^     ^subtree_nr = 6
			 *       pos
			 * move 4 and 5 up one place (2 entries)
			 * 2 = 6 - 3 - 1 = subtree_nr - pos - 1
			 */
			FUNC0(it->down + pos, it->down + pos + 1,
				   it->subtree_nr - pos - 1);
			it->subtree_nr--;
		}
		return 1;
	}
	down = FUNC2(it, path, namelen, 0);
	if (down)
		FUNC7(down->cache_tree, slash + 1);
	return 1;
}