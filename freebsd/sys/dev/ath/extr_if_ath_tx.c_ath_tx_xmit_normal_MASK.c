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
struct ath_txq {int dummy; } ;
struct ath_tid {int /*<<< orphan*/  hwq_depth; } ;
struct ath_softc {int dummy; } ;
struct ath_node {struct ath_tid* an_tid; } ;
struct TYPE_2__ {size_t bfs_tid; int /*<<< orphan*/  bfs_txflags; } ;
struct ath_buf {int /*<<< orphan*/  bf_comp; TYPE_1__ bf_state; int /*<<< orphan*/  bf_node; } ;

/* Variables and functions */
 struct ath_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  HAL_TXDESC_CLRDMASK ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*,struct ath_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*,struct ath_buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*,struct ath_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*,struct ath_txq*,struct ath_buf*) ; 
 int /*<<< orphan*/  ath_tx_normal_comp ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*,struct ath_buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*,struct ath_buf*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*,struct ath_buf*) ; 

__attribute__((used)) static void
FUNC9(struct ath_softc *sc, struct ath_txq *txq,
    struct ath_buf *bf)
{
	struct ath_node *an = FUNC0(bf->bf_node);
	struct ath_tid *tid = &an->an_tid[bf->bf_state.bfs_tid];

	FUNC1(sc);

	/*
	 * For now, just enable CLRDMASK. ath_tx_xmit_normal() does
	 * set a completion handler however it doesn't (yet) properly
	 * handle the strict ordering requirements needed for normal,
	 * non-aggregate session frames.
	 *
	 * Once this is implemented, only set CLRDMASK like this for
	 * frames that must go out - eg management/raw frames.
	 */
	bf->bf_state.bfs_txflags |= HAL_TXDESC_CLRDMASK;

	/* Setup the descriptor before handoff */
	FUNC4(sc, bf);
	FUNC2(sc, bf);
	FUNC3(sc, bf);
	FUNC7(sc, bf);
	FUNC6(sc, bf);
	FUNC8(sc, bf);

	/* Track per-TID hardware queue depth correctly */
	tid->hwq_depth++;

	/* Assign the completion handler */
	bf->bf_comp = ath_tx_normal_comp;

	/* Hand off to hardware */
	FUNC5(sc, txq, bf);
}