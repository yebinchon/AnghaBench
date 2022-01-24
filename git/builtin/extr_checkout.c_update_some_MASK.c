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
struct strbuf {int len; char const* buf; } ;
struct object_id {int dummy; } ;
struct cache_entry {int ce_flags; int ce_namelen; scalar_t__ ce_mode; int /*<<< orphan*/  oid; scalar_t__ name; } ;

/* Variables and functions */
 int ADD_CACHE_OK_TO_ADD ; 
 int ADD_CACHE_OK_TO_REPLACE ; 
 int CE_UPDATE ; 
 int READ_TREE_RECURSIVE ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 struct cache_entry** active_cache ; 
 int /*<<< orphan*/  FUNC1 (struct cache_entry*,int) ; 
 int FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_entry*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct cache_entry*) ; 
 struct cache_entry* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct object_id const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (char const*) ; 
 int /*<<< orphan*/  the_index ; 

__attribute__((used)) static int FUNC12(const struct object_id *oid, struct strbuf *base,
		const char *pathname, unsigned mode, int stage, void *context)
{
	int len;
	struct cache_entry *ce;
	int pos;

	if (FUNC0(mode))
		return READ_TREE_RECURSIVE;

	len = base->len + FUNC11(pathname);
	ce = FUNC7(&the_index, len);
	FUNC9(&ce->oid, oid);
	FUNC8(ce->name, base->buf, base->len);
	FUNC8(ce->name + base->len, pathname, len - base->len);
	ce->ce_flags = FUNC4(0) | CE_UPDATE;
	ce->ce_namelen = len;
	ce->ce_mode = FUNC5(mode);

	/*
	 * If the entry is the same as the current index, we can leave the old
	 * entry in place. Whether it is UPTODATE or not, checkout_entry will
	 * do the right thing.
	 */
	pos = FUNC2(ce->name, ce->ce_namelen);
	if (pos >= 0) {
		struct cache_entry *old = active_cache[pos];
		if (ce->ce_mode == old->ce_mode &&
		    !FUNC3(old) &&
		    FUNC10(&ce->oid, &old->oid)) {
			old->ce_flags |= CE_UPDATE;
			FUNC6(ce);
			return 0;
		}
	}

	FUNC1(ce, ADD_CACHE_OK_TO_ADD | ADD_CACHE_OK_TO_REPLACE);
	return 0;
}