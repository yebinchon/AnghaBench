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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/ * buf; } ;
struct stash_info {int /*<<< orphan*/  i_tree; int /*<<< orphan*/  w_commit; } ;
struct pathspec {scalar_t__ nr; } ;
struct child_process {int git_cmd; int /*<<< orphan*/  args; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int INCLUDE_ALL_FILES ; 
 int /*<<< orphan*/  REFRESH_QUIET ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * active_cache ; 
 int active_nr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pathspec const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pathspec const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pathspec const*,int,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 (struct pathspec const*,struct strbuf*,int,int,struct stash_info*,struct strbuf*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct child_process*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ref_stash ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (char*,struct pathspec const*) ; 
 scalar_t__ FUNC20 (struct child_process*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC21 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC22 (struct strbuf*) ; 
 int /*<<< orphan*/  the_index ; 
 char* FUNC23 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC24(const struct pathspec *ps, const char *stash_msg, int quiet,
			 int keep_index, int patch_mode, int include_untracked)
{
	int ret = 0;
	struct stash_info info;
	struct strbuf patch = STRBUF_INIT;
	struct strbuf stash_msg_buf = STRBUF_INIT;
	struct strbuf untracked_files = STRBUF_INIT;

	if (patch_mode && keep_index == -1)
		keep_index = 1;

	if (patch_mode && include_untracked) {
		FUNC10(stderr, FUNC0("Can't use --patch and --include-untracked"
				     " or --all at the same time"));
		ret = -1;
		goto done;
	}

	FUNC16(NULL);
	if (!include_untracked && ps->nr) {
		int i;
		char *ps_matched = FUNC23(ps->nr, 1);

		for (i = 0; i < active_nr; i++)
			FUNC4(&the_index, active_cache[i], ps,
				      ps_matched);

		if (FUNC19(ps_matched, ps)) {
			FUNC10(stderr, FUNC0("Did you forget to 'git add'?"));
			ret = -1;
			FUNC11(ps_matched);
			goto done;
		}
		FUNC11(ps_matched);
	}

	if (FUNC18(REFRESH_QUIET, 0, 0)) {
		ret = -1;
		goto done;
	}

	if (!FUNC5(ps, include_untracked, &untracked_files)) {
		if (!quiet)
			FUNC15(FUNC0("No local changes to save"));
		goto done;
	}

	if (!FUNC17(ref_stash) && FUNC7()) {
		ret = -1;
		if (!quiet)
			FUNC10(stderr, FUNC0("Cannot initialize stash"));
		goto done;
	}

	if (stash_msg)
		FUNC21(&stash_msg_buf, stash_msg);
	if (FUNC8(ps, &stash_msg_buf, include_untracked, patch_mode,
			    &info, &patch, quiet)) {
		ret = -1;
		goto done;
	}

	if (FUNC9(&info.w_commit, stash_msg_buf.buf, 1)) {
		ret = -1;
		if (!quiet)
			FUNC10(stderr, FUNC0("Cannot save the current status"));
		goto done;
	}

	if (!quiet)
		FUNC15(FUNC0("Saved working directory and index state %s"),
			  stash_msg_buf.buf);

	if (!patch_mode) {
		if (include_untracked && !ps->nr) {
			struct child_process cp = CHILD_PROCESS_INIT;

			cp.git_cmd = 1;
			FUNC3(&cp.args, "clean", "--force",
					 "--quiet", "-d", NULL);
			if (include_untracked == INCLUDE_ALL_FILES)
				FUNC2(&cp.args, "-x");
			if (FUNC20(&cp)) {
				ret = -1;
				goto done;
			}
		}
		FUNC6();
		if (ps->nr) {
			struct child_process cp_add = CHILD_PROCESS_INIT;
			struct child_process cp_diff = CHILD_PROCESS_INIT;
			struct child_process cp_apply = CHILD_PROCESS_INIT;
			struct strbuf out = STRBUF_INIT;

			cp_add.git_cmd = 1;
			FUNC2(&cp_add.args, "add");
			if (!include_untracked)
				FUNC2(&cp_add.args, "-u");
			if (include_untracked == INCLUDE_ALL_FILES)
				FUNC2(&cp_add.args, "--force");
			FUNC2(&cp_add.args, "--");
			FUNC1(&cp_add.args, ps);
			if (FUNC20(&cp_add)) {
				ret = -1;
				goto done;
			}

			cp_diff.git_cmd = 1;
			FUNC3(&cp_diff.args, "diff-index", "-p",
					 "--cached", "--binary", "HEAD", "--",
					 NULL);
			FUNC1(&cp_diff.args, ps);
			if (FUNC14(&cp_diff, NULL, 0, &out, 0, NULL, 0)) {
				ret = -1;
				goto done;
			}

			cp_apply.git_cmd = 1;
			FUNC3(&cp_apply.args, "apply", "--index",
					 "-R", NULL);
			if (FUNC14(&cp_apply, out.buf, out.len, NULL, 0,
					 NULL, 0)) {
				ret = -1;
				goto done;
			}
		} else {
			struct child_process cp = CHILD_PROCESS_INIT;
			cp.git_cmd = 1;
			FUNC3(&cp.args, "reset", "--hard", "-q",
					 "--no-recurse-submodules", NULL);
			if (FUNC20(&cp)) {
				ret = -1;
				goto done;
			}
		}

		if (keep_index == 1 && !FUNC12(&info.i_tree)) {
			struct child_process cp = CHILD_PROCESS_INIT;

			cp.git_cmd = 1;
			FUNC3(&cp.args, "checkout", "--no-overlay",
					 FUNC13(&info.i_tree), "--", NULL);
			if (!ps->nr)
				FUNC2(&cp.args, ":/");
			else
				FUNC1(&cp.args, ps);
			if (FUNC20(&cp)) {
				ret = -1;
				goto done;
			}
		}
		goto done;
	} else {
		struct child_process cp = CHILD_PROCESS_INIT;

		cp.git_cmd = 1;
		FUNC3(&cp.args, "apply", "-R", NULL);

		if (FUNC14(&cp, patch.buf, patch.len, NULL, 0, NULL, 0)) {
			if (!quiet)
				FUNC10(stderr, FUNC0("Cannot remove "
						     "worktree changes"));
			ret = -1;
			goto done;
		}

		if (keep_index < 1) {
			struct child_process cp = CHILD_PROCESS_INIT;

			cp.git_cmd = 1;
			FUNC3(&cp.args, "reset", "-q", "--", NULL);
			FUNC1(&cp.args, ps);
			if (FUNC20(&cp)) {
				ret = -1;
				goto done;
			}
		}
		goto done;
	}

done:
	FUNC22(&stash_msg_buf);
	return ret;
}