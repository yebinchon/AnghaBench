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
struct object_id {int dummy; } ;
struct checkout_opts {int /*<<< orphan*/  quiet; scalar_t__ only_merge_on_switching_branches; scalar_t__ orphan_from_empty_tree; scalar_t__ new_orphan_branch; } ;
struct branch_info {char* name; scalar_t__ commit; int /*<<< orphan*/ * path; } ;
typedef  int /*<<< orphan*/  old_branch_info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int REF_ISSYMREF ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,struct object_id*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct branch_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct checkout_opts const*,struct branch_info*,struct branch_info*,int*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (scalar_t__,scalar_t__,int) ; 
 void* FUNC10 (char*,int /*<<< orphan*/ ,struct object_id*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct checkout_opts const*,struct branch_info*,struct branch_info*) ; 

__attribute__((used)) static int FUNC14(const struct checkout_opts *opts,
			   struct branch_info *new_branch_info)
{
	int ret = 0;
	struct branch_info old_branch_info;
	void *path_to_free;
	struct object_id rev;
	int flag, writeout_error = 0;
	int do_merge = 1;

	FUNC12("branch");

	FUNC5(&old_branch_info, 0, sizeof(old_branch_info));
	old_branch_info.path = path_to_free = FUNC10("HEAD", 0, &rev, &flag);
	if (old_branch_info.path)
		old_branch_info.commit = FUNC4(the_repository, &rev, 1);
	if (!(flag & REF_ISSYMREF))
		old_branch_info.path = NULL;

	if (old_branch_info.path)
		FUNC11(old_branch_info.path, "refs/heads/", &old_branch_info.name);

	if (opts->new_orphan_branch && opts->orphan_from_empty_tree) {
		if (new_branch_info->name)
			FUNC0("'switch --orphan' should never accept a commit as starting point");
		new_branch_info->commit = NULL;
		new_branch_info->name = "(empty)";
		do_merge = 1;
	}

	if (!new_branch_info->name) {
		new_branch_info->name = "HEAD";
		new_branch_info->commit = old_branch_info.commit;
		if (!new_branch_info->commit)
			FUNC2(FUNC1("You are on a branch yet to be born"));
		FUNC8(new_branch_info->commit);

		if (opts->only_merge_on_switching_branches)
			do_merge = 0;
	}

	if (do_merge) {
		ret = FUNC6(opts, &old_branch_info, new_branch_info, &writeout_error);
		if (ret) {
			FUNC3(path_to_free);
			return ret;
		}
	}

	if (!opts->quiet && !old_branch_info.path && old_branch_info.commit && new_branch_info->commit != old_branch_info.commit)
		FUNC7(old_branch_info.commit, new_branch_info->commit);

	FUNC13(opts, &old_branch_info, new_branch_info);

	ret = FUNC9(old_branch_info.commit, new_branch_info->commit, 1);
	FUNC3(path_to_free);
	return ret || writeout_error;
}