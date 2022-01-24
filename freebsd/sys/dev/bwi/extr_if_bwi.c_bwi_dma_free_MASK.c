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
struct bwi_ring_data {int /*<<< orphan*/  rdata_dmap; int /*<<< orphan*/ * rdata_desc; } ;
struct bwi_softc {int /*<<< orphan*/ * sc_parent_dtag; int /*<<< orphan*/ * sc_rxring_dtag; struct bwi_ring_data sc_rx_rdata; int /*<<< orphan*/ * sc_txring_dtag; struct bwi_ring_data* sc_tx_rdata; } ;

/* Variables and functions */
 int BWI_TX_NRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwi_softc*) ; 

__attribute__((used)) static void
FUNC5(struct bwi_softc *sc)
{
	if (sc->sc_txring_dtag != NULL) {
		int i;

		for (i = 0; i < BWI_TX_NRING; ++i) {
			struct bwi_ring_data *rd = &sc->sc_tx_rdata[i];

			if (rd->rdata_desc != NULL) {
				FUNC1(sc->sc_txring_dtag,
						  rd->rdata_dmap);
				FUNC2(sc->sc_txring_dtag,
						rd->rdata_desc,
						rd->rdata_dmap);
			}
		}
		FUNC0(sc->sc_txring_dtag);
	}

	if (sc->sc_rxring_dtag != NULL) {
		struct bwi_ring_data *rd = &sc->sc_rx_rdata;

		if (rd->rdata_desc != NULL) {
			FUNC1(sc->sc_rxring_dtag, rd->rdata_dmap);
			FUNC2(sc->sc_rxring_dtag, rd->rdata_desc,
					rd->rdata_dmap);
		}
		FUNC0(sc->sc_rxring_dtag);
	}

	FUNC4(sc);
	FUNC3(sc, BWI_TX_NRING, 1);

	if (sc->sc_parent_dtag != NULL)
		FUNC0(sc->sc_parent_dtag);
}