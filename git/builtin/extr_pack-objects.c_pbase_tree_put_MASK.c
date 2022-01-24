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
struct pbase_tree_cache {struct pbase_tree_cache* tree_data; int /*<<< orphan*/  ref; int /*<<< orphan*/  temporary; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pbase_tree_cache*) ; 

__attribute__((used)) static void FUNC1(struct pbase_tree_cache *cache)
{
	if (!cache->temporary) {
		cache->ref--;
		return;
	}
	FUNC0(cache->tree_data);
	FUNC0(cache);
}