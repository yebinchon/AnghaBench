#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct pathspec {int nr; TYPE_1__* items; } ;
struct object_id {int dummy; } ;
struct lock_file {int dummy; } ;
struct cache_entry {int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {char* name; scalar_t__ is_submodule; } ;
struct TYPE_5__ {int nr; TYPE_3__* entry; int /*<<< orphan*/  alloc; } ;
struct TYPE_4__ {char* original; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int COMMIT_LOCK ; 
 int /*<<< orphan*/  LOCK_DIE_ON_ERROR ; 
 struct lock_file LOCK_INIT ; 
 char MATCHED_RECURSIVELY ; 
 int /*<<< orphan*/  PATHSPEC_PREFER_CWD ; 
 int REFRESH_QUIET ; 
 int REFRESH_UNMERGED ; 
 int SKIP_IF_UNCHANGED ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct cache_entry** active_cache ; 
 int active_nr ; 
 int /*<<< orphan*/  builtin_rm_options ; 
 int /*<<< orphan*/  builtin_rm_usage ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct cache_entry const*,struct pathspec*,char*) ; 
 scalar_t__ FUNC4 (struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  force ; 
 scalar_t__ FUNC8 (char*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int /*<<< orphan*/  FUNC10 (struct lock_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ignore_unmatch ; 
 int /*<<< orphan*/  index_only ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_2__ list ; 
 int /*<<< orphan*/  FUNC12 (struct object_id*) ; 
 int FUNC13 (int,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pathspec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const**) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*) ; 
 int /*<<< orphan*/  quiet ; 
 scalar_t__ FUNC16 () ; 
 int /*<<< orphan*/  recursive ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,struct pathspec*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (struct strbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (char const*) ; 
 int /*<<< orphan*/  FUNC20 (char const*) ; 
 int /*<<< orphan*/  FUNC21 (char const*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 scalar_t__ show_only ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC25 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC26 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  the_index ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ *,struct lock_file*,int) ; 
 char* FUNC30 (int,int) ; 
 char* FUNC31 (int /*<<< orphan*/ ) ; 

int FUNC32(int argc, const char **argv, const char *prefix)
{
	struct lock_file lock_file = LOCK_INIT;
	int i;
	struct pathspec pathspec;
	char *seen;

	FUNC9(git_default_config, NULL);

	argc = FUNC13(argc, argv, prefix, builtin_rm_options,
			     builtin_rm_usage, 0);
	if (!argc)
		FUNC28(builtin_rm_usage, builtin_rm_options);

	if (!index_only)
		FUNC22();

	FUNC10(&lock_file, LOCK_DIE_ON_ERROR);

	if (FUNC16() < 0)
		FUNC5(FUNC2("index file corrupt"));

	FUNC14(&pathspec, 0,
		       PATHSPEC_PREFER_CWD,
		       prefix, argv);
	FUNC17(&the_index, REFRESH_QUIET|REFRESH_UNMERGED, &pathspec, NULL, NULL);

	seen = FUNC30(pathspec.nr, 1);

	for (i = 0; i < active_nr; i++) {
		const struct cache_entry *ce = active_cache[i];
		if (!FUNC3(&the_index, ce, &pathspec, seen))
			continue;
		FUNC0(list.entry, list.nr + 1, list.alloc);
		list.entry[list.nr].name = FUNC31(ce->name);
		list.entry[list.nr].is_submodule = FUNC1(ce->ce_mode);
		if (list.entry[list.nr++].is_submodule &&
		    !FUNC11(&the_index))
			FUNC5(FUNC2("please stage your changes to .gitmodules or stash them to proceed"));
	}

	if (pathspec.nr) {
		const char *original;
		int seen_any = 0;
		for (i = 0; i < pathspec.nr; i++) {
			original = pathspec.items[i].original;
			if (!seen[i]) {
				if (!ignore_unmatch) {
					FUNC5(FUNC2("pathspec '%s' did not match any files"),
					    original);
				}
			}
			else {
				seen_any = 1;
			}
			if (!recursive && seen[i] == MATCHED_RECURSIVELY)
				FUNC5(FUNC2("not removing '%s' recursively without -r"),
				    *original ? original : ".");
		}

		if (!seen_any)
			FUNC7(0);
	}

	if (!index_only)
		FUNC27();

	/*
	 * If not forced, the file, the index and the HEAD (if exists)
	 * must match; but the file can already been removed, since
	 * this sequence is a natural "novice" way:
	 *
	 *	rm F; git rm F
	 *
	 * Further, if HEAD commit exists, "diff-index --cached" must
	 * report no changes unless forced.
	 */
	if (!force) {
		struct object_id oid;
		if (FUNC8("HEAD", &oid))
			FUNC12(&oid);
		if (FUNC4(&oid, index_only))
			FUNC7(1);
	}

	/*
	 * First remove the names from the index: we won't commit
	 * the index unless all of them succeed.
	 */
	for (i = 0; i < list.nr; i++) {
		const char *path = list.entry[i].name;
		if (!quiet)
			FUNC15("rm '%s'\n", path);

		if (FUNC19(path))
			FUNC5(FUNC2("git rm: unable to remove %s"), path);
	}

	if (show_only)
		return 0;

	/*
	 * Then, unless we used "--cached", remove the filenames from
	 * the workspace. If we fail to remove the first one, we
	 * abort the "git rm" (but once we've successfully removed
	 * any file at all, we'll go ahead and commit to it all:
	 * by then we've already committed ourselves and can't fail
	 * in the middle)
	 */
	if (!index_only) {
		int removed = 0, gitmodules_modified = 0;
		struct strbuf buf = STRBUF_INIT;
		for (i = 0; i < list.nr; i++) {
			const char *path = list.entry[i].name;
			if (list.entry[i].is_submodule) {
				FUNC26(&buf);
				FUNC24(&buf, path);
				if (FUNC18(&buf, 0))
					FUNC5(FUNC2("could not remove '%s'"), path);

				removed = 1;
				if (!FUNC21(path))
					gitmodules_modified = 1;
				continue;
			}
			if (!FUNC20(path)) {
				removed = 1;
				continue;
			}
			if (!removed)
				FUNC6("git rm: '%s'", path);
		}
		FUNC25(&buf);
		if (gitmodules_modified)
			FUNC23(&the_index);
	}

	if (FUNC29(&the_index, &lock_file,
			       COMMIT_LOCK | SKIP_IF_UNCHANGED))
		FUNC5(FUNC2("Unable to write new index file"));

	return 0;
}