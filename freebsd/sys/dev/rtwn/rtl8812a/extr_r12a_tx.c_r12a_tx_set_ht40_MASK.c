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
struct rtwn_softc {int dummy; } ;
struct r12a_tx_desc {int /*<<< orphan*/  txdw5; } ;
struct ieee80211_node {scalar_t__ ni_chan; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_CHAN_ANYC ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  R12A_TXDW5_DATA_BW ; 
 int R12A_TXDW5_DATA_BW40 ; 
 int /*<<< orphan*/  R12A_TXDW5_DATA_PRIM_CHAN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rtwn_softc*,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct rtwn_softc *sc, void *buf, struct ieee80211_node *ni)
{
	struct r12a_tx_desc *txd = (struct r12a_tx_desc *)buf;

	/* XXX 80 Mhz */
	if (ni->ni_chan != IEEE80211_CHAN_ANYC &&
	    FUNC0(ni->ni_chan)) {
		int prim_chan;

		prim_chan = FUNC3(sc, ni->ni_chan);
		txd->txdw5 |= FUNC2(FUNC1(R12A_TXDW5_DATA_BW,
		    R12A_TXDW5_DATA_BW40));
		txd->txdw5 |= FUNC2(FUNC1(R12A_TXDW5_DATA_PRIM_CHAN,
		    prim_chan));
	}
}