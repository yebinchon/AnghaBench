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
struct pathspec {int dummy; } ;
struct cache_entry {int /*<<< orphan*/  name; int /*<<< orphan*/  ce_mode; } ;

/* Variables and functions */
 int ADD_CACHE_RENORMALIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct cache_entry** active_cache ; 
 int active_nr ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct cache_entry*,struct pathspec const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct cache_entry*) ; 
 int /*<<< orphan*/  the_index ; 

__attribute__((used)) static int FUNC5(const struct pathspec *pathspec, int flags)
{
	int i, retval = 0;

	for (i = 0; i < active_nr; i++) {
		struct cache_entry *ce = active_cache[i];

		if (FUNC4(ce))
			continue; /* do not touch unmerged paths */
		if (!FUNC1(ce->ce_mode) && !FUNC0(ce->ce_mode))
			continue; /* do not touch non blobs */
		if (pathspec && !FUNC3(&the_index, ce, pathspec, NULL))
			continue;
		retval |= FUNC2(ce->name, flags | ADD_CACHE_RENORMALIZE);
	}

	return retval;
}