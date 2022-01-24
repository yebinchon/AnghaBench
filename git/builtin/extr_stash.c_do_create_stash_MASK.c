#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct stash_info {int /*<<< orphan*/  w_commit; int /*<<< orphan*/  w_tree; int /*<<< orphan*/  i_commit; int /*<<< orphan*/  u_commit; int /*<<< orphan*/  i_tree; int /*<<< orphan*/  b_commit; } ;
struct pathspec {int dummy; } ;
struct commit_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMIT_FMT_ONELINE ; 
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 int /*<<< orphan*/  REFRESH_QUIET ; 
 int REF_ISSYMREF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pathspec const*,int,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct commit*,struct commit_list**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct commit_list*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *) ; 
 struct commit* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct commit*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC13 (struct stash_info*,struct strbuf*,struct strbuf) ; 
 int FUNC14 (struct stash_info*,struct pathspec const*,struct strbuf*,int) ; 
 scalar_t__ FUNC15 (struct stash_info*,struct pathspec const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC18 (struct strbuf*) ; 
 char* FUNC19 (char const*,char) ; 
 int /*<<< orphan*/  the_repository ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(const struct pathspec *ps, struct strbuf *stash_msg_buf,
			   int include_untracked, int patch_mode,
			   struct stash_info *info, struct strbuf *patch,
			   int quiet)
{
	int ret = 0;
	int flags = 0;
	int untracked_commit_option = 0;
	const char *head_short_sha1 = NULL;
	const char *branch_ref = NULL;
	const char *branch_name = "(no branch)";
	struct commit *head_commit = NULL;
	struct commit_list *parents = NULL;
	struct strbuf msg = STRBUF_INIT;
	struct strbuf commit_tree_label = STRBUF_INIT;
	struct strbuf untracked_files = STRBUF_INIT;

	FUNC9("git stash", "git@stash");

	FUNC10(NULL);
	if (FUNC11(REFRESH_QUIET, 0, 0) < 0) {
		ret = -1;
		goto done;
	}

	if (FUNC6("HEAD", &info->b_commit)) {
		if (!quiet)
			FUNC5(stderr, FUNC0("You do not have "
					     "the initial commit yet"));
		ret = -1;
		goto done;
	} else {
		head_commit = FUNC7(the_repository, &info->b_commit);
	}

	if (!FUNC1(ps, include_untracked, &untracked_files)) {
		ret = 1;
		goto done;
	}

	branch_ref = FUNC12("HEAD", 0, NULL, &flags);
	if (flags & REF_ISSYMREF)
		branch_name = FUNC19(branch_ref, '/') + 1;
	head_short_sha1 = FUNC4(&head_commit->object.oid,
					     DEFAULT_ABBREV);
	FUNC16(&msg, "%s: %s ", branch_name, head_short_sha1);
	FUNC8(CMIT_FMT_ONELINE, head_commit, &msg);

	FUNC16(&commit_tree_label, "index on %s\n", msg.buf);
	FUNC2(head_commit, &parents);
	if (FUNC20(&info->i_tree, 0, NULL) ||
	    FUNC3(commit_tree_label.buf, commit_tree_label.len,
			&info->i_tree, parents, &info->i_commit, NULL, NULL)) {
		if (!quiet)
			FUNC5(stderr, FUNC0("Cannot save the current "
					     "index state"));
		ret = -1;
		goto done;
	}

	if (include_untracked) {
		if (FUNC13(info, &msg, untracked_files)) {
			if (!quiet)
				FUNC5(stderr, FUNC0("Cannot save "
						     "the untracked files"));
			ret = -1;
			goto done;
		}
		untracked_commit_option = 1;
	}
	if (patch_mode) {
		ret = FUNC14(info, ps, patch, quiet);
		if (ret < 0) {
			if (!quiet)
				FUNC5(stderr, FUNC0("Cannot save the current "
						     "worktree state"));
			goto done;
		} else if (ret > 0) {
			goto done;
		}
	} else {
		if (FUNC15(info, ps)) {
			if (!quiet)
				FUNC5(stderr, FUNC0("Cannot save the current "
						     "worktree state"));
			ret = -1;
			goto done;
		}
	}

	if (!stash_msg_buf->len)
		FUNC16(stash_msg_buf, "WIP on %s", msg.buf);
	else
		FUNC17(stash_msg_buf, 0, "On %s: ", branch_name);

	/*
	 * `parents` will be empty after calling `commit_tree()`, so there is
	 * no need to call `free_commit_list()`
	 */
	parents = NULL;
	if (untracked_commit_option)
		FUNC2(FUNC7(the_repository,
						 &info->u_commit),
				   &parents);
	FUNC2(FUNC7(the_repository, &info->i_commit),
			   &parents);
	FUNC2(head_commit, &parents);

	if (FUNC3(stash_msg_buf->buf, stash_msg_buf->len, &info->w_tree,
			parents, &info->w_commit, NULL, NULL)) {
		if (!quiet)
			FUNC5(stderr, FUNC0("Cannot record "
					     "working tree state"));
		ret = -1;
		goto done;
	}

done:
	FUNC18(&commit_tree_label);
	FUNC18(&msg);
	FUNC18(&untracked_files);
	return ret;
}