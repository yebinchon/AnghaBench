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
struct TYPE_2__ {int age_rx_cons; int /*<<< orphan*/  age_rx_ring_map; int /*<<< orphan*/  age_rx_ring_tag; struct age_rxdesc* age_rxdesc; } ;
struct age_ring_data {int /*<<< orphan*/ * age_rx_ring; } ;
struct age_softc {TYPE_1__ age_cdata; struct age_ring_data age_rdata; scalar_t__ age_morework; } ;
struct age_rxdesc {int /*<<< orphan*/ * rx_desc; int /*<<< orphan*/ * rx_m; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct age_softc*) ; 
 int AGE_RX_RING_CNT ; 
 int /*<<< orphan*/  AGE_RX_RING_SZ ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int ENOBUFS ; 
 scalar_t__ FUNC1 (struct age_softc*,struct age_rxdesc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct age_softc *sc)
{
	struct age_ring_data *rd;
	struct age_rxdesc *rxd;
	int i;

	FUNC0(sc);

	sc->age_cdata.age_rx_cons = AGE_RX_RING_CNT - 1;
	sc->age_morework = 0;
	rd = &sc->age_rdata;
	FUNC3(rd->age_rx_ring, AGE_RX_RING_SZ);
	for (i = 0; i < AGE_RX_RING_CNT; i++) {
		rxd = &sc->age_cdata.age_rxdesc[i];
		rxd->rx_m = NULL;
		rxd->rx_desc = &rd->age_rx_ring[i];
		if (FUNC1(sc, rxd) != 0)
			return (ENOBUFS);
	}

	FUNC2(sc->age_cdata.age_rx_ring_tag,
	    sc->age_cdata.age_rx_ring_map, BUS_DMASYNC_PREWRITE);

	return (0);
}