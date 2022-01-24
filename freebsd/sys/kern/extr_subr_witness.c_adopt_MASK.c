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
struct witness {int w_index; int /*<<< orphan*/  w_num_ancestors; int /*<<< orphan*/  w_num_descendants; } ;
struct TYPE_2__ {int /*<<< orphan*/  w_num_ancestors; int /*<<< orphan*/  w_num_descendants; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int WITNESS_ANCESTOR ; 
 int WITNESS_ANCESTOR_MASK ; 
 int WITNESS_CHILD ; 
 int WITNESS_DESCENDANT ; 
 int WITNESS_DESCENDANT_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int WITNESS_PARENT ; 
 scalar_t__ FUNC2 (struct witness*,struct witness*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 TYPE_1__* w_data ; 
 int w_max_used_index ; 
 int /*<<< orphan*/  w_mtx ; 
 int** w_rmatrix ; 
 scalar_t__ witness_cold ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int witness_watch ; 

__attribute__((used)) static void
FUNC7(struct witness *parent, struct witness *child)
{
	int pi, ci, i, j;

	if (witness_cold == 0)
		FUNC4(&w_mtx, MA_OWNED);

	/* If the relationship is already known, there's no work to be done. */
	if (FUNC2(parent, child))
		return;

	/* When the structure of the graph changes, bump up the generation. */
	FUNC6();

	/*
	 * The hard part ... create the direct relationship, then propagate all
	 * indirect relationships.
	 */
	pi = parent->w_index;
	ci = child->w_index;
	FUNC1(pi);
	FUNC1(ci);
	FUNC0(pi != ci);
	w_rmatrix[pi][ci] |= WITNESS_PARENT;
	w_rmatrix[ci][pi] |= WITNESS_CHILD;

	/*
	 * If parent was not already an ancestor of child,
	 * then we increment the descendant and ancestor counters.
	 */
	if ((w_rmatrix[pi][ci] & WITNESS_ANCESTOR) == 0) {
		parent->w_num_descendants++;
		child->w_num_ancestors++;
	}

	/* 
	 * Find each ancestor of 'pi'. Note that 'pi' itself is counted as 
	 * an ancestor of 'pi' during this loop.
	 */
	for (i = 1; i <= w_max_used_index; i++) {
		if ((w_rmatrix[i][pi] & WITNESS_ANCESTOR_MASK) == 0 && 
		    (i != pi))
			continue;

		/* Find each descendant of 'i' and mark it as a descendant. */
		for (j = 1; j <= w_max_used_index; j++) {

			/* 
			 * Skip children that are already marked as
			 * descendants of 'i'.
			 */
			if (w_rmatrix[i][j] & WITNESS_ANCESTOR_MASK)
				continue;

			/*
			 * We are only interested in descendants of 'ci'. Note
			 * that 'ci' itself is counted as a descendant of 'ci'.
			 */
			if ((w_rmatrix[ci][j] & WITNESS_ANCESTOR_MASK) == 0 && 
			    (j != ci))
				continue;
			w_rmatrix[i][j] |= WITNESS_ANCESTOR;
			w_rmatrix[j][i] |= WITNESS_DESCENDANT;
			w_data[i].w_num_descendants++;
			w_data[j].w_num_ancestors++;

			/* 
			 * Make sure we aren't marking a node as both an
			 * ancestor and descendant. We should have caught 
			 * this as a lock order reversal earlier.
			 */
			if ((w_rmatrix[i][j] & WITNESS_ANCESTOR_MASK) &&
			    (w_rmatrix[i][j] & WITNESS_DESCENDANT_MASK)) {
				FUNC5("witness rmatrix paradox! [%d][%d]=%d "
				    "both ancestor and descendant\n",
				    i, j, w_rmatrix[i][j]); 
				FUNC3();
				FUNC5("Witness disabled.\n");
				witness_watch = -1;
			}
			if ((w_rmatrix[j][i] & WITNESS_ANCESTOR_MASK) &&
			    (w_rmatrix[j][i] & WITNESS_DESCENDANT_MASK)) {
				FUNC5("witness rmatrix paradox! [%d][%d]=%d "
				    "both ancestor and descendant\n",
				    j, i, w_rmatrix[j][i]); 
				FUNC3();
				FUNC5("Witness disabled.\n");
				witness_watch = -1;
			}
		}
	}
}