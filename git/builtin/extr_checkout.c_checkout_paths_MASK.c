#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct object_id {int dummy; } ;
struct lock_file {int dummy; } ;
struct commit {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  nr; } ;
struct checkout_opts {scalar_t__ track; int checkout_index; scalar_t__ source_tree; scalar_t__ checkout_worktree; scalar_t__ merge; scalar_t__ overlay_mode; scalar_t__ writeout_stage; int /*<<< orphan*/  quiet; scalar_t__ ignore_unmerged; TYPE_1__ pathspec; scalar_t__ patch_mode; int /*<<< orphan*/  from_treeish; int /*<<< orphan*/  new_branch; int /*<<< orphan*/  ignore_unmerged_opt; scalar_t__ force_detach; scalar_t__ new_branch_log; } ;
struct cache_entry {int ce_flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ BRANCH_TRACK_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int) ; 
 int CE_MATCHED ; 
 int /*<<< orphan*/  COMMIT_LOCK ; 
 int /*<<< orphan*/  LOCK_DIE_ON_ERROR ; 
 struct lock_file LOCK_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct cache_entry** active_cache ; 
 int active_nr ; 
 int /*<<< orphan*/  FUNC2 (struct cache_entry const*) ; 
 int FUNC3 (scalar_t__,struct cache_entry const*,int,scalar_t__) ; 
 int FUNC4 (int,struct cache_entry const*,int) ; 
 int FUNC5 (struct checkout_opts const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,...) ; 
 int FUNC7 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 struct commit* FUNC9 (int /*<<< orphan*/ ,struct object_id*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct cache_entry*,char*,struct checkout_opts const*) ; 
 int /*<<< orphan*/  FUNC11 (struct cache_entry*,char*,struct checkout_opts const*) ; 
 int FUNC12 (struct commit*,struct commit*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct lock_file*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (struct lock_file*) ; 
 int FUNC19 (char const*,char const*,TYPE_1__*) ; 
 int FUNC20 (struct cache_entry const*,int) ; 
 int /*<<< orphan*/  the_index ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,struct lock_file*,int /*<<< orphan*/ ) ; 
 char* FUNC25 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC26(const struct checkout_opts *opts,
			  const char *revision)
{
	int pos;
	static char *ps_matched;
	struct object_id rev;
	struct commit *head;
	int errs = 0;
	struct lock_file lock_file = LOCK_INIT;
	int checkout_index;

	FUNC21(opts->patch_mode ? "patch" : "path");

	if (opts->track != BRANCH_TRACK_UNSPECIFIED)
		FUNC6(FUNC1("'%s' cannot be used with updating paths"), "--track");

	if (opts->new_branch_log)
		FUNC6(FUNC1("'%s' cannot be used with updating paths"), "-l");

	if (opts->ignore_unmerged && opts->patch_mode)
		FUNC6(FUNC1("'%s' cannot be used with updating paths"),
		    opts->ignore_unmerged_opt);

	if (opts->force_detach)
		FUNC6(FUNC1("'%s' cannot be used with updating paths"), "--detach");

	if (opts->merge && opts->patch_mode)
		FUNC6(FUNC1("'%s' cannot be used with %s"), "--merge", "--patch");

	if (opts->ignore_unmerged && opts->merge)
		FUNC6(FUNC1("'%s' cannot be used with %s"),
		    opts->ignore_unmerged_opt, "-m");

	if (opts->new_branch)
		FUNC6(FUNC1("Cannot update paths and switch to branch '%s' at the same time."),
		    opts->new_branch);

	if (!opts->checkout_worktree && !opts->checkout_index)
		FUNC6(FUNC1("neither '%s' or '%s' is specified"),
		    "--staged", "--worktree");

	if (!opts->checkout_worktree && !opts->from_treeish)
		FUNC6(FUNC1("'%s' must be used when '%s' is not specified"),
		    "--worktree", "--source");

	if (opts->checkout_index && !opts->checkout_worktree &&
	    opts->writeout_stage)
		FUNC6(FUNC1("'%s' or '%s' cannot be used with %s"),
		    "--ours", "--theirs", "--staged");

	if (opts->checkout_index && !opts->checkout_worktree &&
	    opts->merge)
		FUNC6(FUNC1("'%s' or '%s' cannot be used with %s"),
		    "--merge", "--conflict", "--staged");

	if (opts->patch_mode) {
		const char *patch_mode;

		if (opts->checkout_index && opts->checkout_worktree)
			patch_mode = "--patch=checkout";
		else if (opts->checkout_index && !opts->checkout_worktree)
			patch_mode = "--patch=reset";
		else if (!opts->checkout_index && opts->checkout_worktree)
			patch_mode = "--patch=worktree";
		else
			FUNC0("either flag must have been set, worktree=%d, index=%d",
			    opts->checkout_worktree, opts->checkout_index);
		return FUNC19(revision, patch_mode, &opts->pathspec);
	}

	FUNC16(the_repository, &lock_file, LOCK_DIE_ON_ERROR);
	if (FUNC13(&opts->pathspec) < 0)
		return FUNC7(FUNC1("index file corrupt"));

	if (opts->source_tree)
		FUNC15(opts->source_tree, &opts->pathspec);

	ps_matched = FUNC25(opts->pathspec.nr, 1);

	/*
	 * Make sure all pathspecs participated in locating the paths
	 * to be checked out.
	 */
	for (pos = 0; pos < active_nr; pos++)
		if (opts->overlay_mode)
			FUNC11(active_cache[pos],
						     ps_matched,
						     opts);
		else
			FUNC10(active_cache[pos],
							ps_matched,
							opts);

	if (FUNC17(ps_matched, &opts->pathspec)) {
		FUNC8(ps_matched);
		return 1;
	}
	FUNC8(ps_matched);

	/* "checkout -m path" to recreate conflicted state */
	if (opts->merge)
		FUNC22(&the_index);

	/* Any unmerged paths? */
	for (pos = 0; pos < active_nr; pos++) {
		const struct cache_entry *ce = active_cache[pos];
		if (ce->ce_flags & CE_MATCHED) {
			if (!FUNC2(ce))
				continue;
			if (opts->ignore_unmerged) {
				if (!opts->quiet)
					FUNC23(FUNC1("path '%s' is unmerged"), ce->name);
			} else if (opts->writeout_stage) {
				errs |= FUNC3(opts->writeout_stage, ce, pos, opts->overlay_mode);
			} else if (opts->merge) {
				errs |= FUNC4((1<<2) | (1<<3), ce, pos);
			} else {
				errs = 1;
				FUNC7(FUNC1("path '%s' is unmerged"), ce->name);
			}
			pos = FUNC20(ce, pos) - 1;
		}
	}
	if (errs)
		return 1;

	/* Now we are committed to check them out */
	if (opts->checkout_worktree)
		errs |= FUNC5(opts);

	/*
	 * Allow updating the index when checking out from the index.
	 * This is to save new stat info.
	 */
	if (opts->checkout_worktree && !opts->checkout_index && !opts->source_tree)
		checkout_index = 1;
	else
		checkout_index = opts->checkout_index;

	if (checkout_index) {
		if (FUNC24(&the_index, &lock_file, COMMIT_LOCK))
			FUNC6(FUNC1("unable to write new index file"));
	} else {
		/*
		 * NEEDSWORK: if --worktree is not specified, we
		 * should save stat info of checked out files in the
		 * index to avoid the next (potentially costly)
		 * refresh. But it's a bit tricker to do...
		 */
		FUNC18(&lock_file);
	}

	FUNC14("HEAD", 0, &rev, NULL);
	head = FUNC9(the_repository, &rev, 1);

	errs |= FUNC12(head, head, 0);
	return errs;
}