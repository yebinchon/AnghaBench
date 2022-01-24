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
struct cache_entry {char const* name; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int WRITE_TREE_SILENT ; 
 scalar_t__ FUNC0 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC5(struct cache_entry **cache,
			int entries, int flags)
{
	int i, funny;
	int silent = flags & WRITE_TREE_SILENT;

	/* Verify that the tree is merged */
	funny = 0;
	for (i = 0; i < entries; i++) {
		const struct cache_entry *ce = cache[i];
		if (FUNC0(ce)) {
			if (silent)
				return -1;
			if (10 < ++funny) {
				FUNC1(stderr, "...\n");
				break;
			}
			FUNC1(stderr, "%s: unmerged (%s)\n",
				ce->name, FUNC2(&ce->oid));
		}
	}
	if (funny)
		return -1;

	/* Also verify that the cache does not have path and path/file
	 * at the same time.  At this point we know the cache has only
	 * stage 0 entries.
	 */
	funny = 0;
	for (i = 0; i < entries - 1; i++) {
		/* path/file always comes after path because of the way
		 * the cache is sorted.  Also path can appear only once,
		 * which means conflicting one would immediately follow.
		 */
		const char *this_name = cache[i]->name;
		const char *next_name = cache[i+1]->name;
		int this_len = FUNC3(this_name);
		if (this_len < FUNC3(next_name) &&
		    FUNC4(this_name, next_name, this_len) == 0 &&
		    next_name[this_len] == '/') {
			if (10 < ++funny) {
				FUNC1(stderr, "...\n");
				break;
			}
			FUNC1(stderr, "You have both %s and %s\n",
				this_name, next_name);
		}
	}
	if (funny)
		return -1;
	return 0;
}