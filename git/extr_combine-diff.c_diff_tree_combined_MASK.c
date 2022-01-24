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
struct TYPE_3__ {int recursive; scalar_t__ follow_renames; scalar_t__ allow_external; } ;
struct diff_options {scalar_t__ output_format; int break_opt; int pickaxe_opts; int /*<<< orphan*/  pathspec; int /*<<< orphan*/  line_termination; scalar_t__ orderfile; scalar_t__ filter; scalar_t__ detect_rename; TYPE_1__ flags; scalar_t__ skip_stat_unmatch; } ;
struct rev_info {int /*<<< orphan*/  combined_all_paths; int /*<<< orphan*/  commit_format; scalar_t__ verbose_header; int /*<<< orphan*/  no_commit_id; int /*<<< orphan*/  loginfo; struct diff_options diffopt; } ;
struct oid_array {int nr; int /*<<< orphan*/ * oid; } ;
struct object_id {int dummy; } ;
struct obj_order {TYPE_2__* parent; struct obj_order* next; struct obj_order* obj; } ;
struct combine_diff_path {TYPE_2__* parent; struct combine_diff_path* next; struct combine_diff_path* obj; } ;
struct TYPE_4__ {int /*<<< orphan*/  path; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obj_order*,int) ; 
 int DIFF_FORMAT_CALLBACK ; 
 int DIFF_FORMAT_NAME ; 
 int DIFF_FORMAT_NAME_STATUS ; 
 scalar_t__ DIFF_FORMAT_NO_OUTPUT ; 
 int DIFF_FORMAT_PATCH ; 
 int DIFF_FORMAT_RAW ; 
 int DIFF_PICKAXE_KINDS_MASK ; 
 int STAT_FORMAT_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct diff_options*) ; 
 char* FUNC5 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct object_id const*,char*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct diff_options*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 struct obj_order* FUNC10 (struct object_id const*,struct oid_array const*,struct diff_options*,int /*<<< orphan*/ ) ; 
 struct obj_order* FUNC11 (struct object_id const*,struct oid_array const*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC12 (struct obj_order*) ; 
 int /*<<< orphan*/  FUNC13 (struct diff_options*,struct obj_order*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,struct obj_order*,int) ; 
 int /*<<< orphan*/  path_path ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC17 (struct obj_order*,int,int,int /*<<< orphan*/ ,struct rev_info*) ; 
 int /*<<< orphan*/  FUNC18 (struct obj_order*,int,struct rev_info*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

void FUNC20(const struct object_id *oid,
			const struct oid_array *parents,
			int dense,
			struct rev_info *rev)
{
	struct diff_options *opt = &rev->diffopt;
	struct diff_options diffopts;
	struct combine_diff_path *p, *paths;
	int i, num_paths, needsep, show_log_first, num_parent = parents->nr;
	int need_generic_pathscan;

	/* nothing to do, if no parents */
	if (!num_parent)
		return;

	show_log_first = !!rev->loginfo && !rev->no_commit_id;
	needsep = 0;
	if (show_log_first) {
		FUNC16(rev);

		if (rev->verbose_header && opt->output_format &&
		    opt->output_format != DIFF_FORMAT_NO_OUTPUT &&
		    !FUNC2(rev->commit_format))
			FUNC15("%s%c", FUNC5(opt),
			       opt->line_termination);
	}

	diffopts = *opt;
	FUNC3(&diffopts.pathspec, &opt->pathspec);
	diffopts.flags.recursive = 1;
	diffopts.flags.allow_external = 0;

	/* find set of paths that everybody touches
	 *
	 * NOTE
	 *
	 * Diffcore transformations are bound to diff_filespec and logic
	 * comparing two entries - i.e. they do not apply directly to combine
	 * diff.
	 *
	 * If some of such transformations is requested - we launch generic
	 * path scanning, which works significantly slower compared to
	 * simultaneous all-trees-in-one-go scan in find_paths_multitree().
	 *
	 * TODO some of the filters could be ported to work on
	 * combine_diff_paths - i.e. all functionality that skips paths, so in
	 * theory, we could end up having only multitree path scanning.
	 *
	 * NOTE please keep this semantically in sync with diffcore_std()
	 */
	need_generic_pathscan = opt->skip_stat_unmatch	||
			opt->flags.follow_renames	||
			opt->break_opt != -1	||
			opt->detect_rename	||
			(opt->pickaxe_opts & DIFF_PICKAXE_KINDS_MASK)	||
			opt->filter;


	if (need_generic_pathscan) {
		/*
		 * NOTE generic case also handles --stat, as it computes
		 * diff(sha1,parent_i) for all i to do the job, specifically
		 * for parent0.
		 */
		paths = FUNC10(oid, parents, &diffopts,
					   rev->combined_all_paths);
	}
	else {
		int stat_opt;
		paths = FUNC11(oid, parents, &diffopts);

		/*
		 * show stat against the first parent even
		 * when doing combined diff.
		 */
		stat_opt = opt->output_format & STAT_FORMAT_MASK;
		if (stat_opt) {
			diffopts.output_format = stat_opt;

			FUNC6(&parents->oid[0], oid, "", &diffopts);
			FUNC8(&diffopts);
			if (opt->orderfile)
				FUNC7(opt->orderfile);
			FUNC4(&diffopts);
		}
	}

	/* find out number of surviving paths */
	for (num_paths = 0, p = paths; p; p = p->next)
		num_paths++;

	/* order paths according to diffcore_order */
	if (opt->orderfile && num_paths) {
		struct obj_order *o;

		FUNC0(o, num_paths);
		for (i = 0, p = paths; p; p = p->next, i++)
			o[i].obj = p;
		FUNC14(opt->orderfile, path_path, o, num_paths);
		for (i = 0; i < num_paths - 1; i++) {
			p = o[i].obj;
			p->next = o[i+1].obj;
		}

		p = o[num_paths-1].obj;
		p->next = NULL;
		paths = o[0].obj;
		FUNC12(o);
	}


	if (num_paths) {
		if (opt->output_format & (DIFF_FORMAT_RAW |
					  DIFF_FORMAT_NAME |
					  DIFF_FORMAT_NAME_STATUS)) {
			for (p = paths; p; p = p->next)
				FUNC18(p, num_parent, rev);
			needsep = 1;
		}
		else if (opt->output_format & STAT_FORMAT_MASK)
			needsep = 1;
		else if (opt->output_format & DIFF_FORMAT_CALLBACK)
			FUNC13(opt, paths, num_parent, num_paths);

		if (opt->output_format & DIFF_FORMAT_PATCH) {
			if (needsep)
				FUNC15("%s%c", FUNC5(opt),
				       opt->line_termination);
			for (p = paths; p; p = p->next)
				FUNC17(p, num_parent, dense,
						0, rev);
		}
	}

	/* Clean things up */
	while (paths) {
		struct combine_diff_path *tmp = paths;
		paths = paths->next;
		for (i = 0; i < num_parent; i++)
			if (rev->combined_all_paths &&
			    FUNC9(tmp->parent[i].status))
				FUNC19(&tmp->parent[i].path);
		FUNC12(tmp);
	}

	FUNC1(&diffopts.pathspec);
}