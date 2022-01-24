#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  n_name; } ;
struct TYPE_7__ {scalar_t__ n_refcnt; int n_flags; struct TYPE_7__* n_next; } ;
typedef  TYPE_1__ NODE ;

/* Variables and functions */
 int NF_ACYCLIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * cycle_buf ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* graph ; 
 TYPE_3__** longest_cycle ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  quiet ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void
FUNC7(void)
{
	NODE *n, *next;
	int cnt, i;

	while (graph != NULL) {
		/*
		 * Keep getting rid of simple cases until there are none left,
		 * if there are any nodes still in the graph, then there is
		 * a cycle in it.
		 */
		do {
			for (cnt = 0, n = graph; n != NULL; n = next) {
				next = n->n_next;
				if (n->n_refcnt == 0) {
					FUNC5(n);
					++cnt;
				}
			}
		} while (graph != NULL && cnt);

		if (graph == NULL)
			break;

		if (!cycle_buf) {
			/*
			 * Allocate space for two cycle logs - one to be used
			 * as scratch space, the other to save the longest
			 * cycle.
			 */
			for (cnt = 0, n = graph; n != NULL; n = n->n_next)
				++cnt;
			cycle_buf = FUNC4(sizeof(NODE *) * cnt);
			longest_cycle = FUNC4(sizeof(NODE *) * cnt);
			if (cycle_buf == NULL || longest_cycle == NULL)
				FUNC1(1, NULL);
		}
		for (n = graph; n != NULL; n = n->n_next)
			if (!(n->n_flags & NF_ACYCLIC)) {
				if ((cnt = FUNC3(n, n, 0, 0))) {
					if (!quiet) {
						FUNC6("cycle in data");
						for (i = 0; i < cnt; i++)
							FUNC6("%s",
							    longest_cycle[i]->n_name);
					}
					FUNC5(n);
					FUNC0();
					break;
				} else {
					/* to avoid further checks */
					n->n_flags  |= NF_ACYCLIC;
					FUNC0();
				}
			}

		if (n == NULL)
			FUNC2(1, "internal error -- could not find cycle");
	}
}