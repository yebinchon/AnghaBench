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
struct patch {char* old_name; char* new_name; scalar_t__ is_new; int /*<<< orphan*/  old_mode; int /*<<< orphan*/  lines_deleted; int /*<<< orphan*/  lines_added; int /*<<< orphan*/  old_oid_prefix; struct patch* next; } ;
struct object_id {int dummy; } ;
struct lock_file {int dummy; } ;
struct index_state {int /*<<< orphan*/ * member_0; } ;
struct cache_entry {int dummy; } ;
struct apply_state {char const* fake_ancestor; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADD_CACHE_OK_TO_ADD ; 
 int /*<<< orphan*/  COMMIT_LOCK ; 
 int /*<<< orphan*/  LOCK_DIE_ON_ERROR ; 
 struct lock_file LOCK_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct index_state*,struct cache_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct index_state*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC6 (struct apply_state*,char*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC8 (struct lock_file*,char const*,int /*<<< orphan*/ ) ; 
 struct cache_entry* FUNC9 (struct index_state*,int /*<<< orphan*/ ,struct object_id*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct patch*,struct object_id*) ; 
 int FUNC11 (struct index_state*,struct lock_file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct apply_state *state, struct patch *list)
{
	struct patch *patch;
	struct index_state result = { NULL };
	struct lock_file lock = LOCK_INIT;
	int res;

	/* Once we start supporting the reverse patch, it may be
	 * worth showing the new sha1 prefix, but until then...
	 */
	for (patch = list; patch; patch = patch->next) {
		struct object_id oid;
		struct cache_entry *ce;
		const char *name;

		name = patch->old_name ? patch->old_name : patch->new_name;
		if (0 < patch->is_new)
			continue;

		if (FUNC0(patch->old_mode)) {
			if (!FUNC10(patch, &oid))
				; /* ok, the textual part looks sane */
			else
				return FUNC5(FUNC1("sha1 information is lacking or "
					       "useless for submodule %s"), name);
		} else if (!FUNC7(patch->old_oid_prefix, &oid)) {
			; /* ok */
		} else if (!patch->lines_added && !patch->lines_deleted) {
			/* mode-only change: update the current */
			if (FUNC6(state, patch->old_name, &oid))
				return FUNC5(FUNC1("mode change for %s, which is not "
					       "in current HEAD"), name);
		} else
			return FUNC5(FUNC1("sha1 information is lacking or useless "
				       "(%s)."), name);

		ce = FUNC9(&result, patch->old_mode, &oid, name, 0, 0);
		if (!ce)
			return FUNC5(FUNC1("make_cache_entry failed for path '%s'"),
				     name);
		if (FUNC2(&result, ce, ADD_CACHE_OK_TO_ADD)) {
			FUNC3(ce);
			return FUNC5(FUNC1("could not add %s to temporary index"),
				     name);
		}
	}

	FUNC8(&lock, state->fake_ancestor, LOCK_DIE_ON_ERROR);
	res = FUNC11(&result, &lock, COMMIT_LOCK);
	FUNC4(&result);

	if (res)
		return FUNC5(FUNC1("could not write temporary index to %s"),
			     state->fake_ancestor);

	return 0;
}