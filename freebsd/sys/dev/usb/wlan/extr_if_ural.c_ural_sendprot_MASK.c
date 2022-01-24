#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ural_tx_data {int rate; int /*<<< orphan*/  desc; int /*<<< orphan*/  ni; struct mbuf* m; } ;
struct ural_softc {int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  tx_q; int /*<<< orphan*/  tx_nfree; int /*<<< orphan*/  tx_free; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ieee80211com {int /*<<< orphan*/  ic_rt; } ;
struct ieee80211_node {TYPE_1__* ni_vap; struct ieee80211com* ni_ic; } ;
struct TYPE_3__ {int /*<<< orphan*/  iv_ifp; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int IEEE80211_PROT_RTSCTS ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int RAL_TX_ACK ; 
 int FUNC0 (int) ; 
 struct ural_tx_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ural_tx_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t URAL_BULK_WR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct mbuf* FUNC5 (struct ieee80211_node*,struct mbuf const*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC9 (struct ural_softc*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct ural_softc *sc,
    const struct mbuf *m, struct ieee80211_node *ni, int prot, int rate)
{
	struct ieee80211com *ic = ni->ni_ic;
	struct ural_tx_data *data;
	struct mbuf *mprot;
	int protrate, flags;

	mprot = FUNC5(ni, m, rate, prot);
	if (mprot == NULL) {
		FUNC8(ni->ni_vap->iv_ifp, IFCOUNTER_OERRORS, 1);
		FUNC4(sc->sc_dev,
		    "could not allocate mbuf for protection mode %d\n", prot);
		return ENOBUFS;
	}

	protrate = FUNC6(ic->ic_rt, rate);
	flags = FUNC0(7);
	if (prot == IEEE80211_PROT_RTSCTS)
		flags |= RAL_TX_ACK;

	data = FUNC1(&sc->tx_free);
	FUNC3(&sc->tx_free, next);
	sc->tx_nfree--;

	data->m = mprot;
	data->ni = FUNC7(ni);
	data->rate = protrate;
	FUNC9(sc, &data->desc, flags, mprot->m_pkthdr.len, protrate);

	FUNC2(&sc->tx_q, data, next);
	FUNC10(sc->sc_xfer[URAL_BULK_WR]);

	return 0;
}