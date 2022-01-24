#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  topts ;
struct unpack_trees_options {int head_idx; int update; int merge; int quiet; TYPE_1__* dir; int /*<<< orphan*/  fn; int /*<<< orphan*/  verbose_update; int /*<<< orphan*/  initial_checkout; int /*<<< orphan*/ * dst_index; int /*<<< orphan*/ * src_index; } ;
struct tree_desc {int dummy; } ;
struct tree {int /*<<< orphan*/  size; int /*<<< orphan*/  buffer; } ;
struct strbuf {int /*<<< orphan*/ * buf; } ;
struct merge_options {char* branch2; struct strbuf obuf; int /*<<< orphan*/ * branch1; int /*<<< orphan*/ * ancestor; scalar_t__ verbosity; } ;
struct lock_file {int dummy; } ;
struct checkout_opts {int /*<<< orphan*/  diff_options; int /*<<< orphan*/  quiet; scalar_t__ discard_changes; scalar_t__ merge; scalar_t__ overwrite_ignore; int /*<<< orphan*/  show_progress; scalar_t__ orphan_from_empty_tree; scalar_t__ new_orphan_branch; } ;
struct branch_info {TYPE_5__* commit; int /*<<< orphan*/ * name; } ;
struct TYPE_8__ {int /*<<< orphan*/  oid; } ;
struct TYPE_9__ {TYPE_3__ object; } ;
struct TYPE_7__ {int /*<<< orphan*/ * empty_tree; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  COMMIT_LOCK ; 
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 int /*<<< orphan*/  DIR_SHOW_IGNORED ; 
 int /*<<< orphan*/  LOCK_DIE_ON_ERROR ; 
 struct lock_file LOCK_INIT ; 
 int /*<<< orphan*/  REFRESH_QUIET ; 
 struct strbuf STRBUF_INIT ; 
 int WRITE_TREE_REPAIR ; 
 int WRITE_TREE_SILENT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ active_cache_tree ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct unpack_trees_options*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,...) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct tree* FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (struct lock_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct merge_options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct tree_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct unpack_trees_options*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (struct merge_options*,struct tree*,struct tree*,struct tree*) ; 
 int /*<<< orphan*/  FUNC17 (struct tree*) ; 
 struct tree* FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,struct tree*,struct strbuf*) ; 
 int FUNC22 (struct tree*,struct checkout_opts const*,int,int*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (struct unpack_trees_options*,char*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct strbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct strbuf*) ; 
 TYPE_2__* the_hash_algo ; 
 int /*<<< orphan*/  the_index ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  twoway_merge ; 
 scalar_t__ FUNC29 () ; 
 int FUNC30 (int,struct tree_desc*,struct unpack_trees_options*) ; 
 struct tree* FUNC31 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ *,struct lock_file*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC33 (int,int) ; 

__attribute__((used)) static int FUNC34(const struct checkout_opts *opts,
			      struct branch_info *old_branch_info,
			      struct branch_info *new_branch_info,
			      int *writeout_error)
{
	int ret;
	struct lock_file lock_file = LOCK_INIT;
	struct tree *new_tree;

	FUNC11(&lock_file, LOCK_DIE_ON_ERROR);
	if (FUNC19(NULL) < 0)
		return FUNC8(FUNC1("index file corrupt"));

	FUNC23();
	if (opts->new_orphan_branch && opts->orphan_from_empty_tree) {
		if (new_branch_info->commit)
			FUNC0("'switch --orphan' should never accept a commit as starting point");
		new_tree = FUNC18(the_hash_algo->empty_tree);
	} else
		new_tree = FUNC10(new_branch_info->commit);
	if (opts->discard_changes) {
		ret = FUNC22(new_tree, opts, 1, writeout_error);
		if (ret)
			return ret;
	} else {
		struct tree_desc trees[2];
		struct tree *tree;
		struct unpack_trees_options topts;

		FUNC15(&topts, 0, sizeof(topts));
		topts.head_idx = -1;
		topts.src_index = &the_index;
		topts.dst_index = &the_index;

		FUNC25(&topts, "checkout");

		FUNC20(REFRESH_QUIET);

		if (FUNC29()) {
			FUNC8(FUNC1("you need to resolve your current index first"));
			return 1;
		}

		/* 2-way merge to the new branch */
		topts.initial_checkout = FUNC14();
		topts.update = 1;
		topts.merge = 1;
		topts.quiet = opts->merge && old_branch_info->commit;
		topts.verbose_update = opts->show_progress;
		topts.fn = twoway_merge;
		if (opts->overwrite_ignore) {
			topts.dir = FUNC33(1, sizeof(*topts.dir));
			topts.dir->flags |= DIR_SHOW_IGNORED;
			FUNC24(topts.dir);
		}
		tree = FUNC18(old_branch_info->commit ?
					   &old_branch_info->commit->object.oid :
					   the_hash_algo->empty_tree);
		FUNC13(&trees[0], tree->buffer, tree->size);
		FUNC17(new_tree);
		tree = new_tree;
		FUNC13(&trees[1], tree->buffer, tree->size);

		ret = FUNC30(2, trees, &topts);
		FUNC6(&topts);
		if (ret == -1) {
			/*
			 * Unpack couldn't do a trivial merge; either
			 * give up or do a real merge, depending on
			 * whether the merge flag was used.
			 */
			struct tree *work;
			struct tree *old_tree;
			struct merge_options o;
			struct strbuf sb = STRBUF_INIT;
			struct strbuf old_commit_shortname = STRBUF_INIT;

			if (!opts->merge)
				return 1;

			/*
			 * Without old_branch_info->commit, the below is the same as
			 * the two-tree unpack we already tried and failed.
			 */
			if (!old_branch_info->commit)
				return 1;
			old_tree = FUNC10(old_branch_info->commit);

			if (FUNC21(the_repository, old_tree, &sb))
				FUNC7(FUNC1("cannot continue with staged changes in "
				      "the following files:\n%s"), sb.buf);
			FUNC28(&sb);

			/* Do more real merge */

			/*
			 * We update the index fully, then write the
			 * tree from the index, then merge the new
			 * branch with the current tree, with the old
			 * branch as the base. Then we reset the index
			 * (but not the working tree) to the new
			 * branch, leaving the working tree as the
			 * merged version, but skipping unmerged
			 * entries in the index.
			 */

			FUNC2(NULL, NULL, 0);
			/*
			 * NEEDSWORK: carrying over local changes
			 * when branches have different end-of-line
			 * normalization (or clean+smudge rules) is
			 * a pain; plumb in an option to set
			 * o.renormalize?
			 */
			FUNC12(&o, the_repository);
			o.verbosity = 0;
			work = FUNC31(the_repository);

			ret = FUNC22(new_tree,
					 opts, 1,
					 writeout_error);
			if (ret)
				return ret;
			o.ancestor = old_branch_info->name;
			if (old_branch_info->name == NULL) {
				FUNC27(&old_commit_shortname,
							 &old_branch_info->commit->object.oid,
							 DEFAULT_ABBREV);
				o.ancestor = old_commit_shortname.buf;
			}
			o.branch1 = new_branch_info->name;
			o.branch2 = "local";
			ret = FUNC16(&o,
					  new_tree,
					  work,
					  old_tree);
			if (ret < 0)
				FUNC9(128);
			ret = FUNC22(new_tree,
					 opts, 0,
					 writeout_error);
			FUNC28(&o.obuf);
			FUNC28(&old_commit_shortname);
			if (ret)
				return ret;
		}
	}

	if (!active_cache_tree)
		active_cache_tree = FUNC3();

	if (!FUNC4(active_cache_tree))
		FUNC5(&the_index, WRITE_TREE_SILENT | WRITE_TREE_REPAIR);

	if (FUNC32(&the_index, &lock_file, COMMIT_LOCK))
		FUNC7(FUNC1("unable to write new index file"));

	if (!opts->discard_changes && !opts->quiet && new_branch_info->commit)
		FUNC26(&new_branch_info->commit->object, &opts->diff_options);

	return 0;
}