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
struct arge_txdesc {int /*<<< orphan*/ * tx_m; scalar_t__ tx_dmamap; } ;
struct TYPE_2__ {int /*<<< orphan*/  arge_tx_tag; struct arge_txdesc* arge_txdesc; } ;
struct arge_softc {TYPE_1__ arge_cdata; } ;

/* Variables and functions */
 int ARGE_TX_RING_COUNT ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct arge_softc *sc)
{
	struct arge_txdesc	*txd;
	int			i;

	/* Free the Tx buffers. */
	for (i = 0; i < ARGE_TX_RING_COUNT; i++) {
		txd = &sc->arge_cdata.arge_txdesc[i];
		if (txd->tx_dmamap) {
			FUNC0(sc->arge_cdata.arge_tx_tag,
			    txd->tx_dmamap, BUS_DMASYNC_POSTWRITE);
			FUNC1(sc->arge_cdata.arge_tx_tag,
			    txd->tx_dmamap);
		}
		if (txd->tx_m)
			FUNC2(txd->tx_m);
		txd->tx_m = NULL;
	}
}