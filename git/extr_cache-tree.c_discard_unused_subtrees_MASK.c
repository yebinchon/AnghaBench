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
struct cache_tree_sub {int /*<<< orphan*/  cache_tree; scalar_t__ used; } ;
struct cache_tree {int subtree_nr; struct cache_tree_sub** down; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_tree_sub*) ; 

__attribute__((used)) static void FUNC2(struct cache_tree *it)
{
	struct cache_tree_sub **down = it->down;
	int nr = it->subtree_nr;
	int dst, src;
	for (dst = src = 0; src < nr; src++) {
		struct cache_tree_sub *s = down[src];
		if (s->used)
			down[dst++] = s;
		else {
			FUNC0(&s->cache_tree);
			FUNC1(s);
			it->subtree_nr--;
		}
	}
}