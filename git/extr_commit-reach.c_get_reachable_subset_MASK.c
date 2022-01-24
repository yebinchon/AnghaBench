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
typedef  scalar_t__ uint32_t ;
struct prio_queue {int /*<<< orphan*/  member_0; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; } ;
struct commit {scalar_t__ generation; TYPE_1__ object; struct commit_list* parents; } ;

/* Variables and functions */
 scalar_t__ GENERATION_NUMBER_INFINITY ; 
 int PARENT1 ; 
 int PARENT2 ; 
 int /*<<< orphan*/  FUNC0 (int,struct commit**,int) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  compare_commits_by_gen_then_commit_date ; 
 int /*<<< orphan*/  FUNC2 (struct commit*) ; 
 struct commit* FUNC3 (struct prio_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct prio_queue*,struct commit*) ; 

struct commit_list *FUNC5(struct commit **from, int nr_from,
					 struct commit **to, int nr_to,
					 unsigned int reachable_flag)
{
	struct commit **item;
	struct commit *current;
	struct commit_list *found_commits = NULL;
	struct commit **to_last = to + nr_to;
	struct commit **from_last = from + nr_from;
	uint32_t min_generation = GENERATION_NUMBER_INFINITY;
	int num_to_find = 0;

	struct prio_queue queue = { compare_commits_by_gen_then_commit_date };

	for (item = to; item < to_last; item++) {
		struct commit *c = *item;

		FUNC2(c);
		if (c->generation < min_generation)
			min_generation = c->generation;

		if (!(c->object.flags & PARENT1)) {
			c->object.flags |= PARENT1;
			num_to_find++;
		}
	}

	for (item = from; item < from_last; item++) {
		struct commit *c = *item;
		if (!(c->object.flags & PARENT2)) {
			c->object.flags |= PARENT2;
			FUNC2(c);

			FUNC4(&queue, *item);
		}
	}

	while (num_to_find && (current = FUNC3(&queue)) != NULL) {
		struct commit_list *parents;

		if (current->object.flags & PARENT1) {
			current->object.flags &= ~PARENT1;
			current->object.flags |= reachable_flag;
			FUNC1(current, &found_commits);
			num_to_find--;
		}

		for (parents = current->parents; parents; parents = parents->next) {
			struct commit *p = parents->item;

			FUNC2(p);

			if (p->generation < min_generation)
				continue;

			if (p->object.flags & PARENT2)
				continue;

			p->object.flags |= PARENT2;
			FUNC4(&queue, p);
		}
	}

	FUNC0(nr_to, to, PARENT1);
	FUNC0(nr_from, from, PARENT2);

	return found_commits;
}