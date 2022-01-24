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
struct unpack_trees_options {int head_idx; int merge; int reset; int update; int /*<<< orphan*/  fn; int /*<<< orphan*/ * dst_index; int /*<<< orphan*/ * src_index; } ;
struct tree_desc {int dummy; } ;
struct tree {int /*<<< orphan*/  size; int /*<<< orphan*/  buffer; } ;
struct object_id {int dummy; } ;
struct lock_file {int dummy; } ;
typedef  int /*<<< orphan*/  opts ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_LOCK ; 
 int /*<<< orphan*/  LOCK_DIE_ON_ERROR ; 
 struct lock_file LOCK_INIT ; 
 int MAX_UNPACK_TREES ; 
 int /*<<< orphan*/  REFRESH_QUIET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lock_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tree_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct unpack_trees_options*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  oneway_merge ; 
 scalar_t__ FUNC5 (struct tree*) ; 
 struct tree* FUNC6 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_index ; 
 scalar_t__ FUNC9 (int,struct tree_desc*,struct unpack_trees_options*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,struct lock_file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct object_id *i_tree, int update, int reset)
{
	int nr_trees = 1;
	struct unpack_trees_options opts;
	struct tree_desc t[MAX_UNPACK_TREES];
	struct tree *tree;
	struct lock_file lock_file = LOCK_INIT;

	FUNC7(NULL);
	if (FUNC8(REFRESH_QUIET))
		return -1;

	FUNC2(&lock_file, LOCK_DIE_ON_ERROR);

	FUNC4(&opts, 0, sizeof(opts));

	tree = FUNC6(i_tree);
	if (FUNC5(tree))
		return -1;

	FUNC3(t, tree->buffer, tree->size);

	opts.head_idx = 1;
	opts.src_index = &the_index;
	opts.dst_index = &the_index;
	opts.merge = 1;
	opts.reset = reset;
	opts.update = update;
	opts.fn = oneway_merge;

	if (FUNC9(nr_trees, t, &opts))
		return -1;

	if (FUNC10(&the_index, &lock_file, COMMIT_LOCK))
		return FUNC1(FUNC0("unable to write new index file"));

	return 0;
}