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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct cache_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct cache_entry** active_cache ; 
 int FUNC1 (struct cache_entry const*,char const*,int,struct stat*) ; 
 scalar_t__ allow_remove ; 
 int FUNC2 (char const*,int) ; 
 scalar_t__ FUNC3 (struct cache_entry const*) ; 
 int FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  ignore_skip_worktree_entries ; 
 int FUNC6 (char const*,int,struct stat*) ; 
 int FUNC7 (char const*,int) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int FUNC9 (char const*) ; 

__attribute__((used)) static int FUNC10(const char *path, struct stat *st, int stat_errno)
{
	int pos, len;
	const struct cache_entry *ce;

	len = FUNC9(path);
	if (FUNC5(path, len))
		return FUNC4("'%s' is beyond a symbolic link", path);

	pos = FUNC2(path, len);
	ce = pos < 0 ? NULL : active_cache[pos];
	if (ce && FUNC3(ce)) {
		/*
		 * working directory version is assumed "good"
		 * so updating it does not make sense.
		 * On the other hand, removing it from index should work
		 */
		if (!ignore_skip_worktree_entries && allow_remove &&
		    FUNC8(path))
			return FUNC4("%s: cannot remove from the index", path);
		return 0;
	}

	/*
	 * First things first: get the stat information, to decide
	 * what to do about the pathname!
	 */
	if (stat_errno)
		return FUNC7(path, stat_errno);

	if (FUNC0(st->st_mode))
		return FUNC6(path, len, st);

	return FUNC1(ce, path, len, st);
}