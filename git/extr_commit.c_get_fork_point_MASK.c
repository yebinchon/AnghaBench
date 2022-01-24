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
struct rev_collect {int initial; int nr; TYPE_2__** commit; } ;
struct object_id {int dummy; } ;
struct commit_list {struct commit* item; scalar_t__ next; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct commit {TYPE_1__ object; } ;
typedef  int /*<<< orphan*/  revs ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  TMP_MARK ; 
 int /*<<< orphan*/  FUNC0 (struct object_id*,struct rev_collect*) ; 
 int /*<<< orphan*/  collect_one_reflog_ent ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,struct rev_collect*) ; 
 int /*<<< orphan*/  FUNC2 (struct commit_list*) ; 
 struct commit_list* FUNC3 (struct commit*,int,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC5 (struct rev_collect*,int /*<<< orphan*/ ,int) ; 

struct commit *FUNC6(const char *refname, struct commit *commit)
{
	struct object_id oid;
	struct rev_collect revs;
	struct commit_list *bases;
	int i;
	struct commit *ret = NULL;

	FUNC5(&revs, 0, sizeof(revs));
	revs.initial = 1;
	FUNC1(refname, collect_one_reflog_ent, &revs);

	if (!revs.nr && !FUNC4(refname, &oid))
		FUNC0(&oid, &revs);

	for (i = 0; i < revs.nr; i++)
		revs.commit[i]->object.flags &= ~TMP_MARK;

	bases = FUNC3(commit, revs.nr, revs.commit);

	/*
	 * There should be one and only one merge base, when we found
	 * a common ancestor among reflog entries.
	 */
	if (!bases || bases->next)
		goto cleanup_return;

	/* And the found one must be one of the reflog entries */
	for (i = 0; i < revs.nr; i++)
		if (&bases->item->object == &revs.commit[i]->object)
			break; /* found */
	if (revs.nr <= i)
		goto cleanup_return;

	ret = bases->item;

cleanup_return:
	FUNC2(bases);
	return ret;
}