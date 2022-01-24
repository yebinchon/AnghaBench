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
struct alc_txdesc {int /*<<< orphan*/ * tx_m; } ;
struct TYPE_2__ {int /*<<< orphan*/  alc_tx_ring_map; int /*<<< orphan*/  alc_tx_ring_tag; struct alc_txdesc* alc_txdesc; scalar_t__ alc_tx_cnt; scalar_t__ alc_tx_cons; scalar_t__ alc_tx_prod; } ;
struct alc_ring_data {int /*<<< orphan*/  alc_tx_ring; } ;
struct alc_softc {TYPE_1__ alc_cdata; struct alc_ring_data alc_rdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alc_softc*) ; 
 int ALC_TX_RING_CNT ; 
 int /*<<< orphan*/  ALC_TX_RING_SZ ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct alc_softc *sc)
{
	struct alc_ring_data *rd;
	struct alc_txdesc *txd;
	int i;

	FUNC0(sc);

	sc->alc_cdata.alc_tx_prod = 0;
	sc->alc_cdata.alc_tx_cons = 0;
	sc->alc_cdata.alc_tx_cnt = 0;

	rd = &sc->alc_rdata;
	FUNC2(rd->alc_tx_ring, ALC_TX_RING_SZ);
	for (i = 0; i < ALC_TX_RING_CNT; i++) {
		txd = &sc->alc_cdata.alc_txdesc[i];
		txd->tx_m = NULL;
	}

	FUNC1(sc->alc_cdata.alc_tx_ring_tag,
	    sc->alc_cdata.alc_tx_ring_map, BUS_DMASYNC_PREWRITE);
}