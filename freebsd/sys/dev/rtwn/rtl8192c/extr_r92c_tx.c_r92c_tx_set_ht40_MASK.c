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
struct r92c_tx_desc {int /*<<< orphan*/  txdw4; } ;
struct ieee80211_node {scalar_t__ ni_chan; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_CHAN_ANYC ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  R92C_TXDW4_DATA_BW40 ; 
 int /*<<< orphan*/  R92C_TXDW4_DATA_SCO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rtwn_softc*,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct rtwn_softc *sc, void *buf, struct ieee80211_node *ni)
{
	struct r92c_tx_desc *txd = (struct r92c_tx_desc *)buf;

	if (ni->ni_chan != IEEE80211_CHAN_ANYC &&
	    FUNC0(ni->ni_chan)) {
		int extc_offset;

		extc_offset = FUNC3(sc, ni->ni_chan);
		txd->txdw4 |= FUNC2(R92C_TXDW4_DATA_BW40);
		txd->txdw4 |= FUNC2(FUNC1(R92C_TXDW4_DATA_SCO, extc_offset));
	}
}