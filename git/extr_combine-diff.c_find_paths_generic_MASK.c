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
struct oid_array {int nr; int /*<<< orphan*/ * oid; } ;
struct object_id {int dummy; } ;
struct diff_options {int output_format; char* orderfile; } ;
struct combine_diff_path {int dummy; } ;

/* Variables and functions */
 void* DIFF_FORMAT_NO_OUTPUT ; 
 int STAT_FORMAT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct object_id const*,char*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct diff_options*) ; 
 struct combine_diff_path* FUNC4 (struct combine_diff_path*,int,int,int) ; 

__attribute__((used)) static struct combine_diff_path *FUNC5(const struct object_id *oid,
	const struct oid_array *parents,
	struct diff_options *opt,
	int combined_all_paths)
{
	struct combine_diff_path *paths = NULL;
	int i, num_parent = parents->nr;

	int output_format = opt->output_format;
	const char *orderfile = opt->orderfile;

	opt->output_format = DIFF_FORMAT_NO_OUTPUT;
	/* tell diff_tree to emit paths in sorted (=tree) order */
	opt->orderfile = NULL;

	/* D(A,P1...Pn) = D(A,P1) ^ ... ^ D(A,Pn)  (wrt paths) */
	for (i = 0; i < num_parent; i++) {
		/*
		 * show stat against the first parent even when doing
		 * combined diff.
		 */
		int stat_opt = output_format & STAT_FORMAT_MASK;
		if (i == 0 && stat_opt)
			opt->output_format = stat_opt;
		else
			opt->output_format = DIFF_FORMAT_NO_OUTPUT;
		FUNC1(&parents->oid[i], oid, "", opt);
		FUNC3(opt);
		paths = FUNC4(paths, i, num_parent,
					combined_all_paths);

		/* if showing diff, show it in requested order */
		if (opt->output_format != DIFF_FORMAT_NO_OUTPUT &&
		    orderfile) {
			FUNC2(orderfile);
		}

		FUNC0(opt);
	}

	opt->output_format = output_format;
	opt->orderfile = orderfile;
	return paths;
}