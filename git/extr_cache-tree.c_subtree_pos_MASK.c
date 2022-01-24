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
struct cache_tree_sub {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
struct cache_tree {int subtree_nr; struct cache_tree_sub** down; } ;

/* Variables and functions */
 int FUNC0 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct cache_tree *it, const char *path, int pathlen)
{
	struct cache_tree_sub **down = it->down;
	int lo, hi;
	lo = 0;
	hi = it->subtree_nr;
	while (lo < hi) {
		int mi = lo + (hi - lo) / 2;
		struct cache_tree_sub *mdl = down[mi];
		int cmp = FUNC0(path, pathlen,
					   mdl->name, mdl->namelen);
		if (!cmp)
			return mi;
		if (cmp < 0)
			hi = mi;
		else
			lo = mi + 1;
	}
	return -lo-1;
}