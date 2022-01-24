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
struct ieee80211_node {int dummy; } ;
struct ath_txq {int dummy; } ;
struct ath_tx_status {int ts_status; } ;
struct ath_softc {int dummy; } ;
struct TYPE_2__ {int bfs_txflags; int /*<<< orphan*/  bfs_pktlen; int /*<<< orphan*/  bfs_rc; } ;
struct ath_buf {int /*<<< orphan*/  (* bf_comp ) (struct ath_softc*,struct ath_buf*,int /*<<< orphan*/ ) ;TYPE_1__ bf_state; struct ieee80211_node* bf_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_txq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int HAL_TXDESC_NOACK ; 
 int HAL_TXERR_FILT ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*,struct ath_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*,struct ieee80211_node*,int /*<<< orphan*/ ,struct ath_tx_status*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*,struct ath_tx_status*,struct ath_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*,struct ath_buf*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct ath_softc *sc, struct ath_txq *txq,
    struct ath_tx_status *ts, struct ath_buf *bf)
{
	struct ieee80211_node *ni = bf->bf_node;

	FUNC1(sc);
	FUNC0(txq);

	/* If unicast frame, update general statistics */
	if (ni != NULL) {
		/* update statistics */
		FUNC4(sc, ts, bf);
	}

	/*
	 * Call the completion handler.
	 * The completion handler is responsible for
	 * calling the rate control code.
	 *
	 * Frames with no completion handler get the
	 * rate control code called here.
	 */
	if (bf->bf_comp == NULL) {
		if ((ts->ts_status & HAL_TXERR_FILT) == 0 &&
		    (bf->bf_state.bfs_txflags & HAL_TXDESC_NOACK) == 0) {
			/*
			 * XXX assume this isn't an aggregate
			 * frame.
			 */
			FUNC3(sc, ni,
			     bf->bf_state.bfs_rc, ts,
			    bf->bf_state.bfs_pktlen, 1,
			    (ts->ts_status == 0 ? 0 : 1));
		}
		FUNC2(sc, bf, 0);
	} else
		bf->bf_comp(sc, bf, 0);
}