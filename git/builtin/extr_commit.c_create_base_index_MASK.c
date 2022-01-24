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
struct unpack_trees_options {int head_idx; int index_only; int merge; int /*<<< orphan*/  fn; int /*<<< orphan*/ * dst_index; int /*<<< orphan*/ * src_index; } ;
struct tree_desc {int dummy; } ;
struct tree {int /*<<< orphan*/  size; int /*<<< orphan*/  buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;
typedef  int /*<<< orphan*/  opts ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct tree_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct unpack_trees_options*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  oneway_merge ; 
 int /*<<< orphan*/  FUNC6 (struct tree*) ; 
 struct tree* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_index ; 
 scalar_t__ FUNC8 (int,struct tree_desc*,struct unpack_trees_options*) ; 

__attribute__((used)) static void FUNC9(const struct commit *current_head)
{
	struct tree *tree;
	struct unpack_trees_options opts;
	struct tree_desc t;

	if (!current_head) {
		FUNC2();
		return;
	}

	FUNC5(&opts, 0, sizeof(opts));
	opts.head_idx = 1;
	opts.index_only = 1;
	opts.merge = 1;
	opts.src_index = &the_index;
	opts.dst_index = &the_index;

	opts.fn = oneway_merge;
	tree = FUNC7(&current_head->object.oid);
	if (!tree)
		FUNC1(FUNC0("failed to unpack HEAD tree object"));
	FUNC6(tree);
	FUNC4(&t, tree->buffer, tree->size);
	if (FUNC8(1, &t, &opts))
		FUNC3(128); /* We've already reported the error, finish dying */
}