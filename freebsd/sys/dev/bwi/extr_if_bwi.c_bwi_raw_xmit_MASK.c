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
struct mbuf {int dummy; } ;
struct ieee80211com {struct bwi_softc* ic_softc; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;
struct bwi_txbuf_data {int tbd_idx; int /*<<< orphan*/  tbd_used; TYPE_1__* tbd_buf; } ;
struct bwi_softc {int sc_flags; int sc_tx_timer; struct bwi_txbuf_data* sc_tx_bdata; } ;
struct TYPE_2__ {int /*<<< orphan*/ * tb_mbuf; } ;

/* Variables and functions */
 int BWI_F_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*) ; 
 size_t BWI_TX_DATA_RING ; 
 int BWI_TX_NDESC ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*) ; 
 int ENETDOWN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct bwi_softc*,int,struct mbuf*,struct ieee80211_node*) ; 
 int FUNC4 (struct bwi_softc*,int,struct mbuf*,struct ieee80211_node*,struct ieee80211_bpf_params const*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 

__attribute__((used)) static int
FUNC6(struct ieee80211_node *ni, struct mbuf *m,
	const struct ieee80211_bpf_params *params)
{
	struct ieee80211com *ic = ni->ni_ic;
	struct bwi_softc *sc = ic->ic_softc;
	/* XXX wme? */
	struct bwi_txbuf_data *tbd = &sc->sc_tx_bdata[BWI_TX_DATA_RING];
	int idx, error;

	if ((sc->sc_flags & BWI_F_RUNNING) == 0) {
		FUNC5(m);
		return ENETDOWN;
	}

	FUNC0(sc);
	idx = tbd->tbd_idx;
	FUNC2(tbd->tbd_buf[idx].tb_mbuf == NULL, ("slot %d not empty", idx));
	if (params == NULL) {
		/*
		 * Legacy path; interpret frame contents to decide
		 * precisely how to send the frame.
		 */
		error = FUNC3(sc, idx, m, ni);
	} else {
		/*
		 * Caller supplied explicit parameters to use in
		 * sending the frame.
		 */
		error = FUNC4(sc, idx, m, ni, params);
	}
	if (error == 0) {
		tbd->tbd_used++;
		tbd->tbd_idx = (idx + 1) % BWI_TX_NDESC;
		sc->sc_tx_timer = 5;
	}
	FUNC1(sc);
	return error;
}