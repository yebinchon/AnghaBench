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
struct ti_txdesc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ti_txfreeq; struct ti_txdesc* ti_txdesc; int /*<<< orphan*/  ti_txbusyq; } ;
struct ti_softc {scalar_t__ ti_tx_saved_prodidx; scalar_t__ ti_tx_saved_considx; scalar_t__ ti_txcnt; TYPE_1__ ti_cdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ti_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ti_txdesc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TI_MB_SENDPROD_IDX ; 
 int TI_TX_RING_CNT ; 
 int /*<<< orphan*/  tx_q ; 

__attribute__((used)) static int
FUNC3(struct ti_softc *sc)
{
	struct ti_txdesc *txd;
	int i;

	FUNC1(&sc->ti_cdata.ti_txfreeq);
	FUNC1(&sc->ti_cdata.ti_txbusyq);
	for (i = 0; i < TI_TX_RING_CNT; i++) {
		txd = &sc->ti_cdata.ti_txdesc[i];
		FUNC2(&sc->ti_cdata.ti_txfreeq, txd, tx_q);
	}
	sc->ti_txcnt = 0;
	sc->ti_tx_saved_considx = 0;
	sc->ti_tx_saved_prodidx = 0;
	FUNC0(sc, TI_MB_SENDPROD_IDX, 0);
	return (0);
}