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
struct cache_entry {scalar_t__ ce_mode; int /*<<< orphan*/  name; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  PATHSPEC_PREFER_CWD ; 
 struct cache_entry** active_cache ; 
 int active_nr ; 
 int /*<<< orphan*/  FUNC0 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct cache_entry const*,struct pathspec*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC3 (struct pathspec*) ; 
 int /*<<< orphan*/  FUNC4 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  head_oid ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pathspec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const**) ; 
 struct cache_entry* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_index ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(int ac, const char **av,
		       const char *prefix)
{
	/* Read HEAD and run update-index on paths that are
	 * merged and already different between index and HEAD.
	 */
	int pos;
	int has_head = 1;
	struct pathspec pathspec;

	FUNC7(&pathspec, 0,
		       PATHSPEC_PREFER_CWD,
		       prefix, av + 1);

	if (FUNC9("HEAD", &head_oid))
		/* If there is no HEAD, that means it is an initial
		 * commit.  Update everything in the index.
		 */
		has_head = 0;
 redo:
	for (pos = 0; pos < active_nr; pos++) {
		const struct cache_entry *ce = active_cache[pos];
		struct cache_entry *old = NULL;
		int save_nr;
		char *path;

		if (FUNC2(ce) || !FUNC1(&the_index, ce, &pathspec, NULL))
			continue;
		if (has_head)
			old = FUNC8(NULL, &head_oid,
					   ce->name, FUNC0(ce), 0);
		if (old && ce->ce_mode == old->ce_mode &&
		    FUNC6(&ce->oid, &old->oid)) {
			FUNC4(old);
			continue; /* unchanged */
		}
		/* Be careful.  The working tree may not have the
		 * path anymore, in which case, under 'allow_remove',
		 * or worse yet 'allow_replace', active_nr may decrease.
		 */
		save_nr = active_nr;
		path = FUNC11(ce->name);
		FUNC10(path);
		FUNC5(path);
		FUNC4(old);
		if (save_nr != active_nr)
			goto redo;
	}
	FUNC3(&pathspec);
	return 0;
}