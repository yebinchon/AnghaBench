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
struct prio_queue {struct author_date_slab* cb_data; int /*<<< orphan*/ * compare; } ;
struct indegree_slab {int dummy; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct commit {struct commit_list* parents; } ;
struct author_date_slab {int dummy; } ;
typedef  int /*<<< orphan*/  queue ;
typedef  enum rev_sort_order { ____Placeholder_rev_sort_order } rev_sort_order ;
struct TYPE_2__ {struct commit_list* next; } ;

/* Variables and functions */
#define  REV_SORT_BY_AUTHOR_DATE 129 
#define  REV_SORT_BY_COMMIT_DATE 128 
 int REV_SORT_IN_GRAPH_ORDER ; 
 int /*<<< orphan*/  FUNC0 (struct author_date_slab*) ; 
 int /*<<< orphan*/  FUNC1 (struct indegree_slab*) ; 
 int /*<<< orphan*/  FUNC2 (struct prio_queue*) ; 
 TYPE_1__* FUNC3 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/ * compare_commits_by_author_date ; 
 int /*<<< orphan*/ * compare_commits_by_commit_date ; 
 int /*<<< orphan*/  FUNC4 (struct commit_list*) ; 
 int* FUNC5 (struct indegree_slab*,struct commit*) ; 
 int /*<<< orphan*/  FUNC6 (struct author_date_slab*) ; 
 int /*<<< orphan*/  FUNC7 (struct indegree_slab*) ; 
 int /*<<< orphan*/  FUNC8 (struct prio_queue*,char,int) ; 
 struct commit* FUNC9 (struct prio_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct prio_queue*,struct commit*) ; 
 int /*<<< orphan*/  FUNC11 (struct prio_queue*) ; 
 int /*<<< orphan*/  FUNC12 (struct author_date_slab*,struct commit*) ; 

void FUNC13(struct commit_list **list, enum rev_sort_order sort_order)
{
	struct commit_list *next, *orig = *list;
	struct commit_list **pptr;
	struct indegree_slab indegree;
	struct prio_queue queue;
	struct commit *commit;
	struct author_date_slab author_date;

	if (!orig)
		return;
	*list = NULL;

	FUNC7(&indegree);
	FUNC8(&queue, '\0', sizeof(queue));

	switch (sort_order) {
	default: /* REV_SORT_IN_GRAPH_ORDER */
		queue.compare = NULL;
		break;
	case REV_SORT_BY_COMMIT_DATE:
		queue.compare = compare_commits_by_commit_date;
		break;
	case REV_SORT_BY_AUTHOR_DATE:
		FUNC6(&author_date);
		queue.compare = compare_commits_by_author_date;
		queue.cb_data = &author_date;
		break;
	}

	/* Mark them and clear the indegree */
	for (next = orig; next; next = next->next) {
		struct commit *commit = next->item;
		*(FUNC5(&indegree, commit)) = 1;
		/* also record the author dates, if needed */
		if (sort_order == REV_SORT_BY_AUTHOR_DATE)
			FUNC12(&author_date, commit);
	}

	/* update the indegree */
	for (next = orig; next; next = next->next) {
		struct commit_list *parents = next->item->parents;
		while (parents) {
			struct commit *parent = parents->item;
			int *pi = FUNC5(&indegree, parent);

			if (*pi)
				(*pi)++;
			parents = parents->next;
		}
	}

	/*
	 * find the tips
	 *
	 * tips are nodes not reachable from any other node in the list
	 *
	 * the tips serve as a starting set for the work queue.
	 */
	for (next = orig; next; next = next->next) {
		struct commit *commit = next->item;

		if (*(FUNC5(&indegree, commit)) == 1)
			FUNC10(&queue, commit);
	}

	/*
	 * This is unfortunate; the initial tips need to be shown
	 * in the order given from the revision traversal machinery.
	 */
	if (sort_order == REV_SORT_IN_GRAPH_ORDER)
		FUNC11(&queue);

	/* We no longer need the commit list */
	FUNC4(orig);

	pptr = list;
	*list = NULL;
	while ((commit = FUNC9(&queue)) != NULL) {
		struct commit_list *parents;

		for (parents = commit->parents; parents ; parents = parents->next) {
			struct commit *parent = parents->item;
			int *pi = FUNC5(&indegree, parent);

			if (!*pi)
				continue;

			/*
			 * parents are only enqueued for emission
			 * when all their children have been emitted thereby
			 * guaranteeing topological order.
			 */
			if (--(*pi) == 1)
				FUNC10(&queue, parent);
		}
		/*
		 * all children of commit have already been
		 * emitted. we can emit it now.
		 */
		*(FUNC5(&indegree, commit)) = 0;

		pptr = &FUNC3(commit, pptr)->next;
	}

	FUNC1(&indegree);
	FUNC2(&queue);
	if (sort_order == REV_SORT_BY_AUTHOR_DATE)
		FUNC0(&author_date);
}