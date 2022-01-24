#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mbuf {int dummy; } ;
struct ieee80211_node {int dummy; } ;
struct ath_softc {int /*<<< orphan*/  sc_dmat; } ;
struct ath_buf {struct mbuf* bf_m; struct ieee80211_node* bf_node; int /*<<< orphan*/  bf_dmamap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*,struct ath_buf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_node*,struct mbuf*,int) ; 

void
FUNC4(struct ath_softc *sc, struct ath_buf *bf, int status)
{
	struct ieee80211_node *ni = bf->bf_node;
	struct mbuf *m0 = bf->bf_m;

	/*
	 * Make sure that we only sync/unload if there's an mbuf.
	 * If not (eg we cloned a buffer), the unload will have already
	 * occurred.
	 */
	if (bf->bf_m != NULL) {
		FUNC1(sc->sc_dmat, bf->bf_dmamap,
		    BUS_DMASYNC_POSTWRITE);
		FUNC2(sc->sc_dmat, bf->bf_dmamap);
	}

	bf->bf_node = NULL;
	bf->bf_m = NULL;

	/* Free the buffer, it's not needed any longer */
	FUNC0(sc, bf);

	/* Pass the buffer back to net80211 - completing it */
	FUNC3(ni, m0, status);
}