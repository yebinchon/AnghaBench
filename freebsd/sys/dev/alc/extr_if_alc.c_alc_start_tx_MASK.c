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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int alc_tx_prod; int /*<<< orphan*/  alc_tx_ring_map; int /*<<< orphan*/  alc_tx_ring_tag; } ;
struct alc_softc {int alc_flags; int /*<<< orphan*/  alc_watchdog_timer; TYPE_1__ alc_cdata; } ;

/* Variables and functions */
 int ALC_FLAG_AR816X_FAMILY ; 
 int /*<<< orphan*/  ALC_MBOX_TD_PRI0_PROD_IDX ; 
 int /*<<< orphan*/  ALC_MBOX_TD_PROD_IDX ; 
 int /*<<< orphan*/  ALC_TX_TIMEOUT ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct alc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct alc_softc*,int /*<<< orphan*/ ,int) ; 
 int MBOX_TD_PROD_LO_IDX_MASK ; 
 int MBOX_TD_PROD_LO_IDX_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct alc_softc *sc)
{

	/* Sync descriptors. */
	FUNC2(sc->alc_cdata.alc_tx_ring_tag,
	    sc->alc_cdata.alc_tx_ring_map, BUS_DMASYNC_PREWRITE);
	/* Kick. Assume we're using normal Tx priority queue. */
	if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) != 0)
		FUNC0(sc, ALC_MBOX_TD_PRI0_PROD_IDX,
		    (uint16_t)sc->alc_cdata.alc_tx_prod);
	else
		FUNC1(sc, ALC_MBOX_TD_PROD_IDX,
		    (sc->alc_cdata.alc_tx_prod <<
		    MBOX_TD_PROD_LO_IDX_SHIFT) &
		    MBOX_TD_PROD_LO_IDX_MASK);
	/* Set a timeout in case the chip goes out to lunch. */
	sc->alc_watchdog_timer = ALC_TX_TIMEOUT;
}