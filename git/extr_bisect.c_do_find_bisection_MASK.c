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
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {unsigned int flags; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;

/* Variables and functions */
 unsigned int TREESAME ; 
 int UNINTERESTING ; 
 struct commit_list* FUNC0 (struct commit_list*,int) ; 
 struct commit_list* FUNC1 (struct commit_list*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct commit_list*) ; 
 int /*<<< orphan*/  commit_weight ; 
 int** FUNC3 (int /*<<< orphan*/ *,struct commit*) ; 
 scalar_t__ FUNC4 (struct commit_list*) ; 
 int FUNC5 (struct commit*) ; 
 scalar_t__ FUNC6 (struct commit_list*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,struct commit_list*) ; 
 scalar_t__ FUNC8 (struct commit_list*) ; 
 int /*<<< orphan*/  FUNC9 (struct commit_list*,scalar_t__) ; 

__attribute__((used)) static struct commit_list *FUNC10(struct commit_list *list,
					     int nr, int *weights,
					     int find_all)
{
	int n, counted;
	struct commit_list *p;

	counted = 0;

	for (n = 0, p = list; p; p = p->next) {
		struct commit *commit = p->item;
		unsigned flags = commit->object.flags;

		*FUNC3(&commit_weight, p->item) = &weights[n++];
		switch (FUNC5(commit)) {
		case 0:
			if (!(flags & TREESAME)) {
				FUNC9(p, 1);
				counted++;
				FUNC7("bisection 2 count one",
					  counted, nr, list);
			}
			/*
			 * otherwise, it is known not to reach any
			 * tree-changing commit and gets weight 0.
			 */
			break;
		case 1:
			FUNC9(p, -1);
			break;
		default:
			FUNC9(p, -2);
			break;
		}
	}

	FUNC7("bisection 2 initialize", counted, nr, list);

	/*
	 * If you have only one parent in the resulting set
	 * then you can reach one commit more than that parent
	 * can reach.  So we do not have to run the expensive
	 * count_distance() for single strand of pearls.
	 *
	 * However, if you have more than one parents, you cannot
	 * just add their distance and one for yourself, since
	 * they usually reach the same ancestor and you would
	 * end up counting them twice that way.
	 *
	 * So we will first count distance of merges the usual
	 * way, and then fill the blanks using cheaper algorithm.
	 */
	for (p = list; p; p = p->next) {
		if (p->item->object.flags & UNINTERESTING)
			continue;
		if (FUNC8(p) != -2)
			continue;
		FUNC9(p, FUNC4(p));
		FUNC2(list);

		/* Does it happen to be at exactly half-way? */
		if (!find_all && FUNC6(p, nr))
			return p;
		counted++;
	}

	FUNC7("bisection 2 count_distance", counted, nr, list);

	while (counted < nr) {
		for (p = list; p; p = p->next) {
			struct commit_list *q;
			unsigned flags = p->item->object.flags;

			if (0 <= FUNC8(p))
				continue;
			for (q = p->item->parents; q; q = q->next) {
				if (q->item->object.flags & UNINTERESTING)
					continue;
				if (0 <= FUNC8(q))
					break;
			}
			if (!q)
				continue;

			/*
			 * weight for p is unknown but q is known.
			 * add one for p itself if p is to be counted,
			 * otherwise inherit it from q directly.
			 */
			if (!(flags & TREESAME)) {
				FUNC9(p, FUNC8(q)+1);
				counted++;
				FUNC7("bisection 2 count one",
					  counted, nr, list);
			}
			else
				FUNC9(p, FUNC8(q));

			/* Does it happen to be at exactly half-way? */
			if (!find_all && FUNC6(p, nr))
				return p;
		}
	}

	FUNC7("bisection 2 counted all", counted, nr, list);

	if (!find_all)
		return FUNC0(list, nr);
	else
		return FUNC1(list, nr);
}