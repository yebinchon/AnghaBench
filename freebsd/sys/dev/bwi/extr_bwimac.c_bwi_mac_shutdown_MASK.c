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
struct bwi_softc {int /*<<< orphan*/  (* sc_free_tx_ring ) (struct bwi_softc*,int) ;int /*<<< orphan*/  (* sc_free_rx_ring ) (struct bwi_softc*) ;int /*<<< orphan*/  (* sc_free_txstats ) (struct bwi_softc*) ;} ;
struct bwi_mac {int mac_flags; int /*<<< orphan*/  mac_regwin; struct bwi_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_BBP_ATTEN ; 
 int /*<<< orphan*/  BWI_BBP_ATTEN_MAGIC ; 
 int BWI_MAC_F_HAS_TXSTATS ; 
 int BWI_MAC_F_INITED ; 
 int BWI_TX_NRING ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC4 (struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bwi_softc*,int) ; 

void
FUNC7(struct bwi_mac *mac)
{
	struct bwi_softc *sc = mac->mac_sc;
	int i;

	if (mac->mac_flags & BWI_MAC_F_HAS_TXSTATS)
		sc->sc_free_txstats(sc);

	sc->sc_free_rx_ring(sc);

	for (i = 0; i < BWI_TX_NRING; ++i)
		sc->sc_free_tx_ring(sc, i);

	FUNC3(mac);

	/* TODO:LED */

	FUNC1(mac);

	FUNC3(mac); /* XXX again */
	FUNC0(sc, BWI_BBP_ATTEN, BWI_BBP_ATTEN_MAGIC);
	FUNC2(sc, &mac->mac_regwin, 0);

	mac->mac_flags &= ~BWI_MAC_F_INITED;
}