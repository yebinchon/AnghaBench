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
struct age_txdesc {int /*<<< orphan*/ * tx_m; int /*<<< orphan*/ * tx_desc; } ;
struct TYPE_2__ {int /*<<< orphan*/  age_tx_ring_map; int /*<<< orphan*/  age_tx_ring_tag; struct age_txdesc* age_txdesc; scalar_t__ age_tx_cnt; scalar_t__ age_tx_cons; scalar_t__ age_tx_prod; } ;
struct age_ring_data {int /*<<< orphan*/ * age_tx_ring; } ;
struct age_softc {TYPE_1__ age_cdata; struct age_ring_data age_rdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct age_softc*) ; 
 int AGE_TX_RING_CNT ; 
 int /*<<< orphan*/  AGE_TX_RING_SZ ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct age_softc *sc)
{
	struct age_ring_data *rd;
	struct age_txdesc *txd;
	int i;

	FUNC0(sc);

	sc->age_cdata.age_tx_prod = 0;
	sc->age_cdata.age_tx_cons = 0;
	sc->age_cdata.age_tx_cnt = 0;

	rd = &sc->age_rdata;
	FUNC2(rd->age_tx_ring, AGE_TX_RING_SZ);
	for (i = 0; i < AGE_TX_RING_CNT; i++) {
		txd = &sc->age_cdata.age_txdesc[i];
		txd->tx_desc = &rd->age_tx_ring[i];
		txd->tx_m = NULL;
	}

	FUNC1(sc->age_cdata.age_tx_ring_tag,
	    sc->age_cdata.age_tx_ring_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}