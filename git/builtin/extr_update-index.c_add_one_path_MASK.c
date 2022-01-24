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
struct cache_entry {int ce_namelen; int /*<<< orphan*/  oid; int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  ce_flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ADD_CACHE_OK_TO_ADD ; 
 int ADD_CACHE_OK_TO_REPLACE ; 
 int /*<<< orphan*/  HASH_WRITE_OBJECT ; 
 scalar_t__ FUNC0 (struct cache_entry*,int) ; 
 scalar_t__ allow_add ; 
 scalar_t__ allow_replace ; 
 int /*<<< orphan*/  FUNC1 (struct cache_entry const*,struct stat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_entry const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cache_entry*) ; 
 int FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct cache_entry*,struct stat*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,struct stat*,int /*<<< orphan*/ ) ; 
 scalar_t__ info_only ; 
 struct cache_entry* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  the_index ; 

__attribute__((used)) static int FUNC11(const struct cache_entry *old, const char *path, int len, struct stat *st)
{
	int option;
	struct cache_entry *ce;

	/* Was the old index entry already up-to-date? */
	if (old && !FUNC3(old) && !FUNC1(old, st, 0))
		return 0;

	ce = FUNC9(&the_index, len);
	FUNC10(ce->name, path, len);
	ce->ce_flags = FUNC4(0);
	ce->ce_namelen = len;
	FUNC7(&the_index, ce, st);
	ce->ce_mode = FUNC2(old, st->st_mode);

	if (FUNC8(&the_index, &ce->oid, path, st,
		       info_only ? 0 : HASH_WRITE_OBJECT)) {
		FUNC5(ce);
		return -1;
	}
	option = allow_add ? ADD_CACHE_OK_TO_ADD : 0;
	option |= allow_replace ? ADD_CACHE_OK_TO_REPLACE : 0;
	if (FUNC0(ce, option)) {
		FUNC5(ce);
		return FUNC6("%s: cannot add to the index - missing --add option?", path);
	}
	return 0;
}