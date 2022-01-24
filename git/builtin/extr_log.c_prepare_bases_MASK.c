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
struct rev_info {int max_parents; int topo_order; } ;
struct object_id {int dummy; } ;
struct TYPE_3__ {int recursive; } ;
struct diff_options {TYPE_1__ flags; } ;
struct commit_base {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; struct object_id oid; } ;
struct commit {TYPE_2__ object; } ;
struct base_tree_info {int nr_patch_id; struct object_id* patch_id; int /*<<< orphan*/  alloc_patch_id; struct object_id base_commit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct object_id*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNINTERESTING ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct rev_info*,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct commit_base*) ; 
 int* FUNC4 (struct commit_base*,struct commit*) ; 
 scalar_t__ FUNC5 (struct commit*,struct diff_options*,struct object_id*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct diff_options*) ; 
 struct commit* FUNC8 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct commit_base*) ; 
 int /*<<< orphan*/  FUNC10 (struct object_id*,struct object_id*) ; 
 scalar_t__ FUNC11 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC14(struct base_tree_info *bases,
			  struct commit *base,
			  struct commit **list,
			  int total)
{
	struct commit *commit;
	struct rev_info revs;
	struct diff_options diffopt;
	struct commit_base commit_base;
	int i;

	if (!base)
		return;

	FUNC9(&commit_base);
	FUNC12(the_repository, &diffopt);
	diffopt.flags.recursive = 1;
	FUNC7(&diffopt);

	FUNC10(&bases->base_commit, &base->object.oid);

	FUNC13(the_repository, &revs, NULL);
	revs.max_parents = 1;
	revs.topo_order = 1;
	for (i = 0; i < total; i++) {
		list[i]->object.flags &= ~UNINTERESTING;
		FUNC2(&revs, &list[i]->object, "rev_list");
		*FUNC4(&commit_base, list[i]) = 1;
	}
	base->object.flags |= UNINTERESTING;
	FUNC2(&revs, &base->object, "base");

	if (FUNC11(&revs))
		FUNC6(FUNC1("revision walk setup failed"));
	/*
	 * Traverse the commits list, get prerequisite patch ids
	 * and stuff them in bases structure.
	 */
	while ((commit = FUNC8(&revs)) != NULL) {
		struct object_id oid;
		struct object_id *patch_id;
		if (*FUNC4(&commit_base, commit))
			continue;
		if (FUNC5(commit, &diffopt, &oid, 0, 1))
			FUNC6(FUNC1("cannot get patch id"));
		FUNC0(bases->patch_id, bases->nr_patch_id + 1, bases->alloc_patch_id);
		patch_id = bases->patch_id + bases->nr_patch_id;
		FUNC10(patch_id, &oid);
		bases->nr_patch_id++;
	}
	FUNC3(&commit_base);
}