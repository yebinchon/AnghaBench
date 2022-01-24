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
struct ath_tid {int dummy; } ;
struct ath_softc {int dummy; } ;
struct ath_node {struct ath_tid* an_tid; } ;
struct TYPE_2__ {scalar_t__ bfs_dobaw; scalar_t__ bfs_addedbaw; } ;
struct ath_buf {struct ath_buf* bf_next; int /*<<< orphan*/  bf_comp; TYPE_1__ bf_state; } ;
typedef  int /*<<< orphan*/  ath_bufhead ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_tid*,struct ath_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ath_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ath_tx_normal_comp ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*,struct ath_node*,struct ath_tid*,struct ath_buf*) ; 
 int /*<<< orphan*/  bf_list ; 

__attribute__((used)) static void
FUNC4(struct ath_softc *sc, struct ath_node *an,
    int tid, struct ath_buf *bf_head, ath_bufhead *bf_cq)
{
	struct ath_tid *atid = &an->an_tid[tid];
	struct ath_buf *bf, *bf_next;

	FUNC1(sc);

	/*
	 * Remove this frame from the queue.
	 */
	FUNC0(atid, bf_head, bf_list);

	/*
	 * Loop over all the frames in the aggregate.
	 */
	bf = bf_head;
	while (bf != NULL) {
		bf_next = bf->bf_next;	/* next aggregate frame, or NULL */

		/*
		 * If it's been added to the BAW we need to kick
		 * it out of the BAW before we continue.
		 *
		 * XXX if it's an aggregate, assert that it's in the
		 * BAW - we shouldn't have it be in an aggregate
		 * otherwise!
		 */
		if (bf->bf_state.bfs_addedbaw) {
			FUNC3(sc, an, atid, bf);
			bf->bf_state.bfs_dobaw = 0;
		}

		/*
		 * Give it the default completion handler.
		 */
		bf->bf_comp = ath_tx_normal_comp;
		bf->bf_next = NULL;

		/*
		 * Add it to the list to free.
		 */
		FUNC2(bf_cq, bf, bf_list);

		/*
		 * Now advance to the next frame in the aggregate.
		 */
		bf = bf_next;
	}
}