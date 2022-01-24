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
struct bwn_txstatus {int rtscnt; scalar_t__ ampdu; scalar_t__ im; } ;
struct bwn_stats {int /*<<< orphan*/  rts; int /*<<< orphan*/  rtsfail; } ;
struct bwn_softc {int /*<<< orphan*/  sc_dev; } ;
struct bwn_mac {int mac_flags; struct bwn_softc* mac_sc; struct bwn_stats mac_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_softc*) ; 
 int BWN_MAC_FLAG_DMA ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,struct bwn_txstatus const*) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,struct bwn_txstatus const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(struct bwn_mac *mac, const struct bwn_txstatus *status)
{
	struct bwn_softc *sc = mac->mac_sc;
	struct bwn_stats *stats = &mac->mac_stats;

	FUNC0(mac->mac_sc);

	if (status->im)
		FUNC4(sc->sc_dev, "TODO: STATUS IM\n");
	if (status->ampdu)
		FUNC4(sc->sc_dev, "TODO: STATUS AMPDU\n");
	if (status->rtscnt) {
		if (status->rtscnt == 0xf)
			stats->rtsfail++;
		else
			stats->rts++;
	}

	if (mac->mac_flags & BWN_MAC_FLAG_DMA) {
		FUNC1(mac, status);
	} else {
		FUNC3(mac, status);
	}

	FUNC2(mac, 0);
}