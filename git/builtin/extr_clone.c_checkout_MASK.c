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
struct unpack_trees_options {int update; int merge; int clone; int verbose_update; int /*<<< orphan*/ * dst_index; int /*<<< orphan*/ * src_index; int /*<<< orphan*/  fn; } ;
struct tree_desc {int dummy; } ;
struct tree {int /*<<< orphan*/  size; int /*<<< orphan*/  buffer; } ;
struct object_id {int dummy; } ;
struct lock_file {int dummy; } ;
struct argv_array {int /*<<< orphan*/  argv; } ;
struct TYPE_2__ {scalar_t__ nr; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  COMMIT_LOCK ; 
 int /*<<< orphan*/  LOCK_DIE_ON_ERROR ; 
 struct lock_file LOCK_INIT ; 
 int /*<<< orphan*/  RESOLVE_REF_READING ; 
 int /*<<< orphan*/  RUN_GIT_CMD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ advice_detached_head ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC2 (struct argv_array*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct argv_array*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct argv_array*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct lock_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tree_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int max_jobs ; 
 int /*<<< orphan*/  FUNC10 (struct unpack_trees_options*,int /*<<< orphan*/ ,int) ; 
 struct object_id null_oid ; 
 int /*<<< orphan*/  FUNC11 (struct object_id*) ; 
 int /*<<< orphan*/  oneway_merge ; 
 scalar_t__ option_no_checkout ; 
 TYPE_1__ option_recurse_submodules ; 
 scalar_t__ option_remote_submodules ; 
 int option_shallow_submodules ; 
 scalar_t__ option_verbosity ; 
 int /*<<< orphan*/  FUNC12 (struct tree*) ; 
 struct tree* FUNC13 (struct object_id*) ; 
 char* FUNC14 (char*,int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  the_index ; 
 scalar_t__ FUNC20 (int,struct tree_desc*,struct unpack_trees_options*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,struct lock_file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(int submodule_progress)
{
	struct object_id oid;
	char *head;
	struct lock_file lock_file = LOCK_INIT;
	struct unpack_trees_options opts;
	struct tree *tree;
	struct tree_desc t;
	int err = 0;

	if (option_no_checkout)
		return 0;

	head = FUNC14("HEAD", RESOLVE_REF_READING, &oid, NULL);
	if (!head) {
		FUNC21(FUNC0("remote HEAD refers to nonexistent ref, "
			  "unable to checkout.\n"));
		return 0;
	}
	if (!FUNC19(head, "HEAD")) {
		if (advice_detached_head)
			FUNC5(FUNC11(&oid));
	} else {
		if (!FUNC18(head, "refs/heads/"))
			FUNC6(FUNC0("HEAD not found below refs/heads!"));
	}
	FUNC7(head);

	/* We need to be in the new work tree for the checkout */
	FUNC17();

	FUNC8(&lock_file, LOCK_DIE_ON_ERROR);

	FUNC10(&opts, 0, sizeof opts);
	opts.update = 1;
	opts.merge = 1;
	opts.clone = 1;
	opts.fn = oneway_merge;
	opts.verbose_update = (option_verbosity >= 0);
	opts.src_index = &the_index;
	opts.dst_index = &the_index;

	tree = FUNC13(&oid);
	FUNC12(tree);
	FUNC9(&t, tree->buffer, tree->size);
	if (FUNC20(1, &t, &opts) < 0)
		FUNC6(FUNC0("unable to checkout working tree"));

	if (FUNC22(&the_index, &lock_file, COMMIT_LOCK))
		FUNC6(FUNC0("unable to write new index file"));

	err |= FUNC16(NULL, "post-checkout", FUNC11(&null_oid),
			   FUNC11(&oid), "1", NULL);

	if (!err && (option_recurse_submodules.nr > 0)) {
		struct argv_array args = ARGV_ARRAY_INIT;
		FUNC4(&args, "submodule", "update", "--init", "--recursive", NULL);

		if (option_shallow_submodules == 1)
			FUNC2(&args, "--depth=1");

		if (max_jobs != -1)
			FUNC3(&args, "--jobs=%d", max_jobs);

		if (submodule_progress)
			FUNC2(&args, "--progress");

		if (option_verbosity < 0)
			FUNC2(&args, "--quiet");

		if (option_remote_submodules) {
			FUNC2(&args, "--remote");
			FUNC2(&args, "--no-fetch");
		}

		err = FUNC15(args.argv, RUN_GIT_CMD);
		FUNC1(&args);
	}

	return err;
}