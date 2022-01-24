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
typedef  int /*<<< orphan*/  unpack_tree_opts ;
struct unpack_trees_options {int head_idx; int update; int merge; int reset; int /*<<< orphan*/  fn; int /*<<< orphan*/  dst_index; int /*<<< orphan*/  src_index; } ;
struct tree_desc {scalar_t__ buffer; int /*<<< orphan*/ * member_0; } ;
struct tree {int dummy; } ;
struct strbuf {size_t len; char* buf; } ;
struct object_id {int dummy; } ;
struct lock_file {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  COMMIT_LOCK ; 
 int /*<<< orphan*/  GIT_REFLOG_ACTION_ENVIRONMENT ; 
 struct lock_file LOCK_INIT ; 
 int /*<<< orphan*/  LOCK_REPORT_ON_ERROR ; 
 int /*<<< orphan*/  REF_NO_DEREF ; 
 unsigned int RESET_HEAD_DETACH ; 
 unsigned int RESET_HEAD_HARD ; 
 unsigned int RESET_HEAD_REFS_ONLY ; 
 unsigned int RESET_HEAD_RUN_POST_CHECKOUT_HOOK ; 
 unsigned int RESET_ORIG_HEAD ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  UPDATE_REFS_MSG_ON_ERR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,struct object_id*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct tree_desc*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ FUNC7 (char*,struct object_id*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct lock_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct unpack_trees_options*,int /*<<< orphan*/ ,int) ; 
 struct object_id null_oid ; 
 int /*<<< orphan*/  FUNC11 (struct object_id*) ; 
 int /*<<< orphan*/  oneway_merge ; 
 struct tree* FUNC12 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,struct tree*) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (struct lock_file*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct unpack_trees_options*,char const*) ; 
 int /*<<< orphan*/  FUNC18 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC20 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC22 (struct strbuf*,size_t) ; 
 TYPE_1__* the_repository ; 
 int /*<<< orphan*/  twoway_merge ; 
 scalar_t__ FUNC23 (int,struct tree_desc*,struct unpack_trees_options*) ; 
 int FUNC24 (char const*,char const*,struct object_id*,struct object_id*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,struct lock_file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct object_id *oid, const char *action,
		      const char *switch_to_branch, unsigned flags,
		      const char *reflog_orig_head, const char *reflog_head)
{
	unsigned detach_head = flags & RESET_HEAD_DETACH;
	unsigned reset_hard = flags & RESET_HEAD_HARD;
	unsigned run_hook = flags & RESET_HEAD_RUN_POST_CHECKOUT_HOOK;
	unsigned refs_only = flags & RESET_HEAD_REFS_ONLY;
	unsigned update_orig_head = flags & RESET_ORIG_HEAD;
	struct object_id head_oid;
	struct tree_desc desc[2] = { { NULL }, { NULL } };
	struct lock_file lock = LOCK_INIT;
	struct unpack_trees_options unpack_tree_opts;
	struct tree *tree;
	const char *reflog_action;
	struct strbuf msg = STRBUF_INIT;
	size_t prefix_len;
	struct object_id *orig = NULL, oid_orig,
		*old_orig = NULL, oid_old_orig;
	int ret = 0, nr = 0;

	if (switch_to_branch && !FUNC18(switch_to_branch, "refs/"))
		FUNC0("Not a fully qualified branch: '%s'", switch_to_branch);

	if (!refs_only && FUNC9(&lock, LOCK_REPORT_ON_ERROR) < 0) {
		ret = -1;
		goto leave_reset_head;
	}

	if ((!oid || !reset_hard) && FUNC7("HEAD", &head_oid)) {
		ret = FUNC4(FUNC1("could not determine HEAD revision"));
		goto leave_reset_head;
	}

	if (!oid)
		oid = &head_oid;

	if (refs_only)
		goto reset_head_refs;

	FUNC10(&unpack_tree_opts, 0, sizeof(unpack_tree_opts));
	FUNC17(&unpack_tree_opts, action);
	unpack_tree_opts.head_idx = 1;
	unpack_tree_opts.src_index = the_repository->index;
	unpack_tree_opts.dst_index = the_repository->index;
	unpack_tree_opts.fn = reset_hard ? oneway_merge : twoway_merge;
	unpack_tree_opts.update = 1;
	unpack_tree_opts.merge = 1;
	if (!detach_head)
		unpack_tree_opts.reset = 1;

	if (FUNC14(the_repository) < 0) {
		ret = FUNC4(FUNC1("could not read index"));
		goto leave_reset_head;
	}

	if (!reset_hard && !FUNC5(the_repository, &desc[nr++], &head_oid)) {
		ret = FUNC4(FUNC1("failed to find tree of %s"),
			    FUNC11(&head_oid));
		goto leave_reset_head;
	}

	if (!FUNC5(the_repository, &desc[nr++], oid)) {
		ret = FUNC4(FUNC1("failed to find tree of %s"), FUNC11(oid));
		goto leave_reset_head;
	}

	if (FUNC23(nr, desc, &unpack_tree_opts)) {
		ret = -1;
		goto leave_reset_head;
	}

	tree = FUNC12(oid);
	FUNC13(the_repository, the_repository->index, tree);

	if (FUNC25(the_repository->index, &lock, COMMIT_LOCK) < 0) {
		ret = FUNC4(FUNC1("could not write index"));
		goto leave_reset_head;
	}

reset_head_refs:
	reflog_action = FUNC8(GIT_REFLOG_ACTION_ENVIRONMENT);
	FUNC19(&msg, "%s: ", reflog_action ? reflog_action : "rebase");
	prefix_len = msg.len;

	if (update_orig_head) {
		if (!FUNC7("ORIG_HEAD", &oid_old_orig))
			old_orig = &oid_old_orig;
		if (!FUNC7("HEAD", &oid_orig)) {
			orig = &oid_orig;
			if (!reflog_orig_head) {
				FUNC20(&msg, "updating ORIG_HEAD");
				reflog_orig_head = msg.buf;
			}
			FUNC24(reflog_orig_head, "ORIG_HEAD", orig,
				   old_orig, 0, UPDATE_REFS_MSG_ON_ERR);
		} else if (old_orig)
			FUNC3(NULL, "ORIG_HEAD", old_orig, 0);
	}

	if (!reflog_head) {
		FUNC22(&msg, prefix_len);
		FUNC20(&msg, "updating HEAD");
		reflog_head = msg.buf;
	}
	if (!switch_to_branch)
		ret = FUNC24(reflog_head, "HEAD", oid, orig,
				 detach_head ? REF_NO_DEREF : 0,
				 UPDATE_REFS_MSG_ON_ERR);
	else {
		ret = FUNC24(reflog_head, switch_to_branch, oid,
				 NULL, 0, UPDATE_REFS_MSG_ON_ERR);
		if (!ret)
			ret = FUNC2("HEAD", switch_to_branch,
					    reflog_head);
	}
	if (run_hook)
		FUNC16(NULL, "post-checkout",
			    FUNC11(orig ? orig : &null_oid),
			    FUNC11(oid), "1", NULL);

leave_reset_head:
	FUNC21(&msg);
	FUNC15(&lock);
	while (nr)
		FUNC6((void *)desc[--nr].buffer);
	return ret;
}