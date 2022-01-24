#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct string_list {int /*<<< orphan*/  nr; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct object_id {int dummy; } ;
struct cache_entry {scalar_t__ ce_mode; int /*<<< orphan*/  oid; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int nr; TYPE_1__* entry; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 struct string_list STRING_LIST_INIT_NODUP ; 
 int SUBMODULE_REMOVAL_DIE_ON_ERROR ; 
 int SUBMODULE_REMOVAL_IGNORE_IGNORED_UNTRACKED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct cache_entry** active_cache ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cache_entry const*) ; 
 scalar_t__ FUNC7 (struct cache_entry const*,struct stat*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (unsigned short) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC9 (char const*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct object_id*,char const*,struct object_id*,unsigned short*) ; 
 scalar_t__ FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct object_id*) ; 
 TYPE_2__ list ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct object_id*) ; 
 int /*<<< orphan*/  FUNC16 (struct string_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct string_list*,char const*) ; 
 int /*<<< orphan*/  FUNC18 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char const*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct object_id *head, int index_only)
{
	/*
	 * Items in list are already sorted in the cache order,
	 * so we could do this a lot more efficiently by using
	 * tree_desc based traversal if we wanted to, but I am
	 * lazy, and who cares if removal of files is a tad
	 * slower than the theoretical maximum speed?
	 */
	int i, no_head;
	int errs = 0;
	struct string_list files_staged = STRING_LIST_INIT_NODUP;
	struct string_list files_cached = STRING_LIST_INIT_NODUP;
	struct string_list files_local = STRING_LIST_INIT_NODUP;

	no_head = FUNC13(head);
	for (i = 0; i < list.nr; i++) {
		struct stat st;
		int pos;
		const struct cache_entry *ce;
		const char *name = list.entry[i].name;
		struct object_id oid;
		unsigned short mode;
		int local_changes = 0;
		int staged_changes = 0;

		pos = FUNC5(name, FUNC19(name));
		if (pos < 0) {
			/*
			 * Skip unmerged entries except for populated submodules
			 * that could lose history when removed.
			 */
			pos = FUNC9(name, pos);
			if (pos < 0)
				continue;

			if (!FUNC2(active_cache[pos]->ce_mode) ||
			    FUNC11(name))
				continue;
		}
		ce = active_cache[pos];

		if (FUNC14(ce->name, &st) < 0) {
			if (!FUNC12(errno))
				FUNC20(FUNC3("failed to stat '%s'"), ce->name);
			/* It already vanished from the working tree */
			continue;
		}
		else if (FUNC1(st.st_mode)) {
			/* if a file was removed and it is now a
			 * directory, that is the same as ENOENT as
			 * far as git is concerned; we do not track
			 * directories unless they are submodules.
			 */
			if (!FUNC2(ce->ce_mode))
				continue;
		}

		/*
		 * "rm" of a path that has changes need to be treated
		 * carefully not to allow losing local changes
		 * accidentally.  A local change could be (1) file in
		 * work tree is different since the index; and/or (2)
		 * the user staged a content that is different from
		 * the current commit in the index.
		 *
		 * In such a case, you would need to --force the
		 * removal.  However, "rm --cached" (remove only from
		 * the index) is safe if the index matches the file in
		 * the work tree or the HEAD commit, as it means that
		 * the content being removed is available elsewhere.
		 */

		/*
		 * Is the index different from the file in the work tree?
		 * If it's a submodule, is its work tree modified?
		 */
		if (FUNC7(ce, &st, 0) ||
		    (FUNC2(ce->ce_mode) &&
		     FUNC4(ce->name,
				SUBMODULE_REMOVAL_DIE_ON_ERROR |
				SUBMODULE_REMOVAL_IGNORE_IGNORED_UNTRACKED)))
			local_changes = 1;

		/*
		 * Is the index different from the HEAD commit?  By
		 * definition, before the very initial commit,
		 * anything staged in the index is treated by the same
		 * way as changed from the HEAD.
		 */
		if (no_head
		     || FUNC10(the_repository, head, name, &oid, &mode)
		     || ce->ce_mode != FUNC8(mode)
		     || !FUNC15(&ce->oid, &oid))
			staged_changes = 1;

		/*
		 * If the index does not match the file in the work
		 * tree and if it does not match the HEAD commit
		 * either, (1) "git rm" without --cached definitely
		 * will lose information; (2) "git rm --cached" will
		 * lose information unless it is about removing an
		 * "intent to add" entry.
		 */
		if (local_changes && staged_changes) {
			if (!index_only || !FUNC6(ce))
				FUNC17(&files_staged, name);
		}
		else if (!index_only) {
			if (staged_changes)
				FUNC17(&files_cached, name);
			if (local_changes)
				FUNC17(&files_local, name);
		}
	}
	FUNC16(&files_staged,
			  FUNC0("the following file has staged content different "
			     "from both the\nfile and the HEAD:",
			     "the following files have staged content different"
			     " from both the\nfile and the HEAD:",
			     files_staged.nr),
			  FUNC3("\n(use -f to force removal)"),
			  &errs);
	FUNC18(&files_staged, 0);
	FUNC16(&files_cached,
			  FUNC0("the following file has changes "
			     "staged in the index:",
			     "the following files have changes "
			     "staged in the index:", files_cached.nr),
			  FUNC3("\n(use --cached to keep the file,"
			    " or -f to force removal)"),
			  &errs);
	FUNC18(&files_cached, 0);

	FUNC16(&files_local,
			  FUNC0("the following file has local modifications:",
			     "the following files have local modifications:",
			     files_local.nr),
			  FUNC3("\n(use --cached to keep the file,"
			    " or -f to force removal)"),
			  &errs);
	FUNC18(&files_local, 0);

	return errs;
}