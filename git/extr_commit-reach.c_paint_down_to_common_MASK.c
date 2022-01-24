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
typedef  int uint32_t ;
struct repository {int dummy; } ;
struct prio_queue {int /*<<< orphan*/  compare; int /*<<< orphan*/  member_0; } ;
struct commit_list {struct commit_list* next; struct commit* item; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  oid; } ;
struct commit {int generation; TYPE_1__ object; struct commit_list* parents; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ ) ; 
 int GENERATION_NUMBER_INFINITY ; 
 int PARENT1 ; 
 int PARENT2 ; 
 int RESULT ; 
 int STALE ; 
 int /*<<< orphan*/  FUNC1 (struct prio_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC3 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  compare_commits_by_commit_date ; 
 int /*<<< orphan*/  compare_commits_by_gen_then_commit_date ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct commit* FUNC5 (struct prio_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct prio_queue*,struct commit*) ; 
 scalar_t__ FUNC7 (struct prio_queue*) ; 
 scalar_t__ FUNC8 (struct repository*,struct commit*) ; 

__attribute__((used)) static struct commit_list *FUNC9(struct repository *r,
						struct commit *one, int n,
						struct commit **twos,
						int min_generation)
{
	struct prio_queue queue = { compare_commits_by_gen_then_commit_date };
	struct commit_list *result = NULL;
	int i;
	uint32_t last_gen = GENERATION_NUMBER_INFINITY;

	if (!min_generation)
		queue.compare = compare_commits_by_commit_date;

	one->object.flags |= PARENT1;
	if (!n) {
		FUNC2(one, &result);
		return result;
	}
	FUNC6(&queue, one);

	for (i = 0; i < n; i++) {
		twos[i]->object.flags |= PARENT2;
		FUNC6(&queue, twos[i]);
	}

	while (FUNC7(&queue)) {
		struct commit *commit = FUNC5(&queue);
		struct commit_list *parents;
		int flags;

		if (min_generation && commit->generation > last_gen)
			FUNC0("bad generation skip %8x > %8x at %s",
			    commit->generation, last_gen,
			    FUNC4(&commit->object.oid));
		last_gen = commit->generation;

		if (commit->generation < min_generation)
			break;

		flags = commit->object.flags & (PARENT1 | PARENT2 | STALE);
		if (flags == (PARENT1 | PARENT2)) {
			if (!(commit->object.flags & RESULT)) {
				commit->object.flags |= RESULT;
				FUNC3(commit, &result);
			}
			/* Mark parents of a found merge stale */
			flags |= STALE;
		}
		parents = commit->parents;
		while (parents) {
			struct commit *p = parents->item;
			parents = parents->next;
			if ((p->object.flags & flags) == flags)
				continue;
			if (FUNC8(r, p))
				return NULL;
			p->object.flags |= flags;
			FUNC6(&queue, p);
		}
	}

	FUNC1(&queue);
	return result;
}