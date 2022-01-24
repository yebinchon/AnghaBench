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
struct update_callback_data {int flags; int /*<<< orphan*/  add_errors; } ;
struct TYPE_3__ {int override_submodule_config; } ;
struct TYPE_4__ {TYPE_1__ flags; struct update_callback_data* format_callback_data; int /*<<< orphan*/  format_callback; int /*<<< orphan*/  output_format; } ;
struct rev_info {int /*<<< orphan*/  prune_data; scalar_t__ max_count; TYPE_2__ diffopt; } ;
struct pathspec {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_FORMAT_CALLBACK ; 
 int /*<<< orphan*/  DIFF_RACY_IS_MODIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pathspec const*) ; 
 int /*<<< orphan*/  FUNC2 (struct update_callback_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rev_info*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct rev_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  update_callback ; 

int FUNC6(const char *prefix,
		       const struct pathspec *pathspec, int flags)
{
	struct update_callback_data data;
	struct rev_info rev;

	FUNC2(&data, 0, sizeof(data));
	data.flags = flags;

	FUNC3(the_repository, &rev, prefix);
	FUNC5(0, NULL, &rev, NULL);
	if (pathspec)
		FUNC1(&rev.prune_data, pathspec);
	rev.diffopt.output_format = DIFF_FORMAT_CALLBACK;
	rev.diffopt.format_callback = update_callback;
	rev.diffopt.format_callback_data = &data;
	rev.diffopt.flags.override_submodule_config = 1;
	rev.max_count = 0; /* do not compare unmerged paths with stage #2 */
	FUNC4(&rev, DIFF_RACY_IS_MODIFIED);
	FUNC0(&rev.prune_data);
	return !!data.add_errors;
}