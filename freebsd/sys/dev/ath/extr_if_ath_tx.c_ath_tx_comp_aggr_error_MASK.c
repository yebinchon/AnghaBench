#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_tx_ampdu {int dummy; } ;
struct ieee80211_node {int dummy; } ;
struct ath_tid {int /*<<< orphan*/  tid; } ;
struct TYPE_6__ {int /*<<< orphan*/  ast_tx_aggr_fail; int /*<<< orphan*/  ast_tx_aggr_failall; } ;
struct ath_softc {TYPE_3__ sc_stats; } ;
struct ath_node {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  bfs_nframes; int /*<<< orphan*/  bfs_pktlen; int /*<<< orphan*/  bfs_rc; } ;
struct TYPE_4__ {int /*<<< orphan*/  ds_txstat; } ;
struct ath_buf {struct ath_buf* bf_next; TYPE_2__ bf_state; TYPE_1__ bf_status; struct ieee80211_node* bf_node; } ;
typedef  int /*<<< orphan*/  ath_bufhead ;

/* Variables and functions */
 struct ath_node* FUNC0 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_tid*,struct ath_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 struct ath_buf* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ath_buf*,int /*<<< orphan*/ ) ; 
 struct ath_buf* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct ath_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ath_bufhead_s ; 
 int /*<<< orphan*/  FUNC9 (struct ath_softc*,struct ath_buf*,int /*<<< orphan*/ ) ; 
 struct ieee80211_tx_ampdu* FUNC10 (struct ath_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct ath_softc*,struct ath_buf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_softc*,struct ath_tid*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_softc*,struct ath_tid*) ; 
 scalar_t__ FUNC14 (struct ath_softc*,struct ath_tid*) ; 
 int /*<<< orphan*/  FUNC15 (struct ath_softc*,struct ath_tid*) ; 
 int /*<<< orphan*/  FUNC16 (struct ath_softc*,struct ieee80211_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bf_list ; 

__attribute__((used)) static void
FUNC17(struct ath_softc *sc, struct ath_buf *bf_first,
    struct ath_tid *tid)
{
	struct ieee80211_node *ni = bf_first->bf_node;
	struct ath_node *an = FUNC0(ni);
	struct ath_buf *bf_next, *bf;
	ath_bufhead bf_q;
	int drops = 0;
	struct ieee80211_tx_ampdu *tap;
	ath_bufhead bf_cq;

	FUNC5(&bf_q);
	FUNC5(&bf_cq);

	/*
	 * Update rate control - all frames have failed.
	 *
	 * XXX use the length in the first frame in the series;
	 * XXX just so things are consistent for now.
	 */
	FUNC16(sc, ni, bf_first->bf_state.bfs_rc,
	    &bf_first->bf_status.ds_txstat,
	    bf_first->bf_state.bfs_pktlen,
	    bf_first->bf_state.bfs_nframes, bf_first->bf_state.bfs_nframes);

	FUNC2(sc);
	tap = FUNC10(an, tid->tid);
	sc->sc_stats.ast_tx_aggr_failall++;

	/* Retry all subframes */
	bf = bf_first;
	while (bf) {
		bf_next = bf->bf_next;
		bf->bf_next = NULL;	/* Remove it from the aggr list */
		sc->sc_stats.ast_tx_aggr_fail++;
		if (FUNC11(sc, bf, &bf_q)) {
			drops++;
			bf->bf_next = NULL;
			FUNC6(&bf_cq, bf, bf_list);
		}
		bf = bf_next;
	}

	/* Prepend all frames to the beginning of the queue */
	while ((bf = FUNC7(&bf_q, ath_bufhead_s)) != NULL) {
		FUNC8(&bf_q, bf, bf_list);
		FUNC1(tid, bf, bf_list);
	}

	/*
	 * Schedule the TID to be re-tried.
	 */
	FUNC15(sc, tid);

	/*
	 * send bar if we dropped any frames
	 *
	 * Keep the txq lock held for now, as we need to ensure
	 * that ni_txseqs[] is consistent (as it's being updated
	 * in the ifnet TX context or raw TX context.)
	 */
	if (drops) {
		/* Suspend the TX queue and get ready to send the BAR */
		FUNC12(sc, tid);
	}

	/*
	 * Send BAR if required
	 */
	if (FUNC14(sc, tid))
		FUNC13(sc, tid);

	FUNC3(sc);

	/* Complete frames which errored out */
	while ((bf = FUNC4(&bf_cq)) != NULL) {
		FUNC8(&bf_cq, bf, bf_list);
		FUNC9(sc, bf, 0);
	}
}