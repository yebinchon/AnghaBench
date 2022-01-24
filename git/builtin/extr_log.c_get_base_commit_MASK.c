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
struct commit_list {struct commit* item; scalar_t__ next; } ;
struct commit {int dummy; } ;
struct branch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit**,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ base_auto ; 
 struct branch* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (struct branch*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (struct commit**) ; 
 int /*<<< orphan*/  FUNC7 (struct commit_list*) ; 
 struct commit_list* FUNC8 (struct commit*,struct commit*) ; 
 struct commit_list* FUNC9 (struct commit*,int,struct commit**) ; 
 scalar_t__ FUNC10 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC11 (struct commit*,struct commit*) ; 
 struct commit* FUNC12 (struct object_id*,char*) ; 
 struct commit* FUNC13 (char const*) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 

__attribute__((used)) static struct commit *FUNC15(const char *base_commit,
				      struct commit **list,
				      int total)
{
	struct commit *base = NULL;
	struct commit **rev;
	int i = 0, rev_nr = 0;

	if (base_commit && FUNC14(base_commit, "auto")) {
		base = FUNC13(base_commit);
		if (!base)
			FUNC5(FUNC2("unknown commit %s"), base_commit);
	} else if ((base_commit && !FUNC14(base_commit, "auto")) || base_auto) {
		struct branch *curr_branch = FUNC3(NULL);
		const char *upstream = FUNC4(curr_branch, NULL);
		if (upstream) {
			struct commit_list *base_list;
			struct commit *commit;
			struct object_id oid;

			if (FUNC10(upstream, &oid))
				FUNC5(FUNC2("failed to resolve '%s' as a valid ref"), upstream);
			commit = FUNC12(&oid, "upstream base");
			base_list = FUNC9(commit, total, list);
			/* There should be one and only one merge base. */
			if (!base_list || base_list->next)
				FUNC5(FUNC2("could not find exact merge base"));
			base = base_list->item;
			FUNC7(base_list);
		} else {
			FUNC5(FUNC2("failed to get upstream, if you want to record base commit automatically,\n"
			      "please use git branch --set-upstream-to to track a remote branch.\n"
			      "Or you could specify base commit by --base=<base-commit-id> manually"));
		}
	}

	FUNC0(rev, total);
	for (i = 0; i < total; i++)
		rev[i] = list[i];

	rev_nr = total;
	/*
	 * Get merge base through pair-wise computations
	 * and store it in rev[0].
	 */
	while (rev_nr > 1) {
		for (i = 0; i < rev_nr / 2; i++) {
			struct commit_list *merge_base;
			merge_base = FUNC8(rev[2 * i], rev[2 * i + 1]);
			if (!merge_base || merge_base->next)
				FUNC5(FUNC2("failed to find exact merge base"));

			rev[i] = merge_base->item;
		}

		if (rev_nr % 2)
			rev[i] = rev[2 * i];
		rev_nr = FUNC1(rev_nr, 2);
	}

	if (!FUNC11(base, rev[0]))
		FUNC5(FUNC2("base commit should be the ancestor of revision list"));

	for (i = 0; i < total; i++) {
		if (base == list[i])
			FUNC5(FUNC2("base commit shouldn't be in revision list"));
	}

	FUNC6(rev);
	return base;
}