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
struct stat {int dummy; } ;
struct patch {char* old_name; char* new_name; int rejected; scalar_t__ is_new; int direct_to_threeway; int new_mode; int old_mode; int /*<<< orphan*/  is_delete; scalar_t__ is_copy; scalar_t__ is_rename; } ;
struct cache_entry {int dummy; } ;
struct apply_state {int /*<<< orphan*/  unsafe_paths; scalar_t__ threeway; } ;

/* Variables and functions */
#define  EXISTS_IN_INDEX 129 
#define  EXISTS_IN_WORKTREE 128 
 int S_IFMT ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct apply_state*,struct patch*,struct stat*,struct cache_entry*) ; 
 int FUNC2 (struct apply_state*,struct patch*,struct cache_entry**,struct stat*) ; 
 int FUNC3 (struct apply_state*,char const*,int) ; 
 scalar_t__ FUNC4 (struct patch*) ; 
 int FUNC5 (int /*<<< orphan*/ ,...) ; 
 struct patch* FUNC6 (struct apply_state*,char const*) ; 
 scalar_t__ FUNC7 (struct apply_state*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*) ; 
 scalar_t__ FUNC9 (struct patch*) ; 
 scalar_t__ FUNC10 (struct patch*) ; 

__attribute__((used)) static int FUNC11(struct apply_state *state, struct patch *patch)
{
	struct stat st;
	const char *old_name = patch->old_name;
	const char *new_name = patch->new_name;
	const char *name = old_name ? old_name : new_name;
	struct cache_entry *ce = NULL;
	struct patch *tpatch;
	int ok_if_exists;
	int status;

	patch->rejected = 1; /* we will drop this after we succeed */

	status = FUNC2(state, patch, &ce, &st);
	if (status)
		return status;
	old_name = patch->old_name;

	/*
	 * A type-change diff is always split into a patch to delete
	 * old, immediately followed by a patch to create new (see
	 * diff.c::run_diff()); in such a case it is Ok that the entry
	 * to be deleted by the previous patch is still in the working
	 * tree and in the index.
	 *
	 * A patch to swap-rename between A and B would first rename A
	 * to B and then rename B to A.  While applying the first one,
	 * the presence of B should not stop A from getting renamed to
	 * B; ask to_be_deleted() about the later rename.  Removal of
	 * B and rename from A to B is handled the same way by asking
	 * was_deleted().
	 */
	if ((tpatch = FUNC6(state, new_name)) &&
	    (FUNC10(tpatch) || FUNC9(tpatch)))
		ok_if_exists = 1;
	else
		ok_if_exists = 0;

	if (new_name &&
	    ((0 < patch->is_new) || patch->is_rename || patch->is_copy)) {
		int err = FUNC3(state, new_name, ok_if_exists);

		if (err && state->threeway) {
			patch->direct_to_threeway = 1;
		} else switch (err) {
		case 0:
			break; /* happy */
		case EXISTS_IN_INDEX:
			return FUNC5(FUNC0("%s: already exists in index"), new_name);
			break;
		case EXISTS_IN_WORKTREE:
			return FUNC5(FUNC0("%s: already exists in working directory"),
				     new_name);
		default:
			return err;
		}

		if (!patch->new_mode) {
			if (0 < patch->is_new)
				patch->new_mode = S_IFREG | 0644;
			else
				patch->new_mode = patch->old_mode;
		}
	}

	if (new_name && old_name) {
		int same = !FUNC8(old_name, new_name);
		if (!patch->new_mode)
			patch->new_mode = patch->old_mode;
		if ((patch->old_mode ^ patch->new_mode) & S_IFMT) {
			if (same)
				return FUNC5(FUNC0("new mode (%o) of %s does not "
					       "match old mode (%o)"),
					patch->new_mode, new_name,
					patch->old_mode);
			else
				return FUNC5(FUNC0("new mode (%o) of %s does not "
					       "match old mode (%o) of %s"),
					patch->new_mode, new_name,
					patch->old_mode, old_name);
		}
	}

	if (!state->unsafe_paths && FUNC4(patch))
		return -128;

	/*
	 * An attempt to read from or delete a path that is beyond a
	 * symbolic link will be prevented by load_patch_target() that
	 * is called at the beginning of apply_data() so we do not
	 * have to worry about a patch marked with "is_delete" bit
	 * here.  We however need to make sure that the patch result
	 * is not deposited to a path that is beyond a symbolic link
	 * here.
	 */
	if (!patch->is_delete && FUNC7(state, patch->new_name))
		return FUNC5(FUNC0("affected file '%s' is beyond a symbolic link"),
			     patch->new_name);

	if (FUNC1(state, patch, &st, ce) < 0)
		return FUNC5(FUNC0("%s: patch does not apply"), name);
	patch->rejected = 0;
	return 0;
}