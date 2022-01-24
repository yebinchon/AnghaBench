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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct stash_info {int /*<<< orphan*/  w_tree; int /*<<< orphan*/  b_commit; int /*<<< orphan*/  i_tree; } ;
struct TYPE_3__ {int /*<<< orphan*/  pathspec; struct strbuf* format_callback_data; int /*<<< orphan*/  format_callback; int /*<<< orphan*/  output_format; } ;
struct rev_info {int /*<<< orphan*/  prune_data; int /*<<< orphan*/  pending; TYPE_1__ diffopt; } ;
struct pathspec {int dummy; } ;
struct index_state {int /*<<< orphan*/ * member_0; } ;
struct child_process {int git_cmd; int /*<<< orphan*/  env_array; int /*<<< orphan*/  args; } ;
struct TYPE_4__ {int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  DIFF_FORMAT_CALLBACK ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct rev_info) ; 
 int /*<<< orphan*/  add_diff_to_buf ; 
 int /*<<< orphan*/  FUNC1 (struct rev_info*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct pathspec const*) ; 
 int /*<<< orphan*/  FUNC6 (struct index_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct child_process*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct rev_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_2__ stash_index_path ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,struct index_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct stash_info *info, const struct pathspec *ps)
{
	int ret = 0;
	struct rev_info rev;
	struct child_process cp_upd_index = CHILD_PROCESS_INIT;
	struct strbuf diff_output = STRBUF_INIT;
	struct index_state istate = { NULL };

	FUNC7(&rev, NULL);
	FUNC5(&rev.prune_data, ps);

	FUNC15(stash_index_path.buf);
	if (FUNC13(&info->i_tree, 0, 0)) {
		ret = -1;
		goto done;
	}
	FUNC15(NULL);

	rev.diffopt.output_format = DIFF_FORMAT_CALLBACK;
	rev.diffopt.format_callback = add_diff_to_buf;
	rev.diffopt.format_callback_data = &diff_output;

	if (FUNC11(&rev.diffopt.pathspec) < 0) {
		ret = -1;
		goto done;
	}

	FUNC1(&rev, FUNC9(the_repository, &info->b_commit),
			   "");
	if (FUNC14(&rev, 0)) {
		ret = -1;
		goto done;
	}

	cp_upd_index.git_cmd = 1;
	FUNC3(&cp_upd_index.args, "update-index",
			 "--ignore-skip-worktree-entries",
			 "-z", "--add", "--remove", "--stdin", NULL);
	FUNC2(&cp_upd_index.env_array, "GIT_INDEX_FILE=%s",
			 stash_index_path.buf);

	if (FUNC10(&cp_upd_index, diff_output.buf, diff_output.len,
			 NULL, 0, NULL, 0)) {
		ret = -1;
		goto done;
	}

	if (FUNC17(&info->w_tree, &istate, stash_index_path.buf, 0,
				NULL)) {
		ret = -1;
		goto done;
	}

done:
	FUNC6(&istate);
	FUNC0(rev);
	FUNC8(&rev.pending);
	FUNC4(&rev.prune_data);
	FUNC16(&diff_output);
	FUNC12(stash_index_path.buf);
	return ret;
}