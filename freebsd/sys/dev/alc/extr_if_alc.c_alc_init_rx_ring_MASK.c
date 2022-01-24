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
struct TYPE_2__ {int alc_rx_cons; int /*<<< orphan*/  alc_rx_ring_map; int /*<<< orphan*/  alc_rx_ring_tag; struct alc_rxdesc* alc_rxdesc; } ;
struct alc_ring_data {int /*<<< orphan*/ * alc_rx_ring; } ;
struct alc_softc {TYPE_1__ alc_cdata; struct alc_ring_data alc_rdata; scalar_t__ alc_morework; } ;
struct alc_rxdesc {int /*<<< orphan*/ * rx_desc; int /*<<< orphan*/ * rx_m; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alc_softc*) ; 
 int /*<<< orphan*/  ALC_MBOX_RD0_PROD_IDX ; 
 int ALC_RX_RING_CNT ; 
 int /*<<< orphan*/  ALC_RX_RING_SZ ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC1 (struct alc_softc*,int /*<<< orphan*/ ,int) ; 
 int ENOBUFS ; 
 scalar_t__ FUNC2 (struct alc_softc*,struct alc_rxdesc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct alc_softc *sc)
{
	struct alc_ring_data *rd;
	struct alc_rxdesc *rxd;
	int i;

	FUNC0(sc);

	sc->alc_cdata.alc_rx_cons = ALC_RX_RING_CNT - 1;
	sc->alc_morework = 0;
	rd = &sc->alc_rdata;
	FUNC4(rd->alc_rx_ring, ALC_RX_RING_SZ);
	for (i = 0; i < ALC_RX_RING_CNT; i++) {
		rxd = &sc->alc_cdata.alc_rxdesc[i];
		rxd->rx_m = NULL;
		rxd->rx_desc = &rd->alc_rx_ring[i];
		if (FUNC2(sc, rxd) != 0)
			return (ENOBUFS);
	}

	/*
	 * Since controller does not update Rx descriptors, driver
	 * does have to read Rx descriptors back so BUS_DMASYNC_PREWRITE
	 * is enough to ensure coherence.
	 */
	FUNC3(sc->alc_cdata.alc_rx_ring_tag,
	    sc->alc_cdata.alc_rx_ring_map, BUS_DMASYNC_PREWRITE);
	/* Let controller know availability of new Rx buffers. */
	FUNC1(sc, ALC_MBOX_RD0_PROD_IDX, sc->alc_cdata.alc_rx_cons);

	return (0);
}