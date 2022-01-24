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
struct tree {int dummy; } ;
struct object_id {int dummy; } ;
struct checkout_opts {struct tree* source_tree; } ;
struct branch_info {char const* name; int /*<<< orphan*/  commit; int /*<<< orphan*/ * path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tree* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct object_id*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct tree* FUNC5 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct object_id*) ; 
 int /*<<< orphan*/  FUNC7 (struct branch_info*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC8(
	struct branch_info *new_branch_info,
	struct checkout_opts *opts,
	struct object_id *rev,
	const char *arg)
{
	struct tree **source_tree = &opts->source_tree;
	struct object_id branch_rev;

	new_branch_info->name = arg;
	FUNC7(new_branch_info);

	if (!FUNC0(new_branch_info->path, 0) &&
	    !FUNC6(new_branch_info->path, &branch_rev))
		FUNC3(rev, &branch_rev);
	else
		new_branch_info->path = NULL; /* not an existing branch */

	new_branch_info->commit = FUNC2(the_repository, rev, 1);
	if (!new_branch_info->commit) {
		/* not a commit */
		*source_tree = FUNC5(rev);
	} else {
		FUNC4(new_branch_info->commit);
		*source_tree = FUNC1(new_branch_info->commit);
	}
}