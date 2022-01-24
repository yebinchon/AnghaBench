#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;
struct TYPE_6__ {scalar_t__ flags; scalar_t__ len; } ;
typedef  TYPE_1__ ae_txs_t ;
struct TYPE_7__ {scalar_t__ len; } ;
typedef  TYPE_2__ ae_txd_t ;
struct TYPE_8__ {int txs_ack; int flags; int txd_ack; scalar_t__ tx_inproc; int /*<<< orphan*/  dma_txs_map; int /*<<< orphan*/  dma_txs_tag; int /*<<< orphan*/  dma_txd_map; int /*<<< orphan*/  dma_txd_tag; scalar_t__ wd_timer; int /*<<< orphan*/  dev; scalar_t__ txd_base; int /*<<< orphan*/  stats; TYPE_1__* txs_base; struct ifnet* ifp; } ;
typedef  TYPE_3__ ae_softc_t ;

/* Variables and functions */
 int AE_FLAG_TXAVAIL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int AE_TXD_BUFSIZE_DEFAULT ; 
 int AE_TXS_COUNT_DEFAULT ; 
 int AE_TXS_SUCCESS ; 
 int AE_TXS_UPDATE ; 
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,char*) ; 
 int FUNC7 (scalar_t__) ; 

__attribute__((used)) static void
FUNC8(ae_softc_t *sc)
{
	struct ifnet *ifp;
	ae_txd_t *txd;
	ae_txs_t *txs;
	uint16_t flags;

	FUNC0(sc);

	ifp = sc->ifp;

#ifdef AE_DEBUG
	if_printf(ifp, "Tx interrupt occuried.\n");
#endif

	/*
	 * Syncronize DMA buffers.
	 */
	FUNC2(sc->dma_txd_tag, sc->dma_txd_map,
	    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
	FUNC2(sc->dma_txs_tag, sc->dma_txs_map,
	    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

	for (;;) {
		txs = sc->txs_base + sc->txs_ack;
		flags = FUNC7(txs->flags);
		if ((flags & AE_TXS_UPDATE) == 0)
			break;
		txs->flags = FUNC4(flags & ~AE_TXS_UPDATE);
		/* Update stats. */
		FUNC1(flags, &sc->stats);

		/*
		 * Update TxS position.
		 */
		sc->txs_ack = (sc->txs_ack + 1) % AE_TXS_COUNT_DEFAULT;
		sc->flags |= AE_FLAG_TXAVAIL;

		txd = (ae_txd_t *)(sc->txd_base + sc->txd_ack);
		if (txs->len != txd->len)
			FUNC3(sc->dev, "Size mismatch: TxS:%d TxD:%d\n",
			    FUNC7(txs->len), FUNC7(txd->len));

		/*
		 * Move txd ack and align on 4-byte boundary.
		 */
		sc->txd_ack = ((sc->txd_ack + FUNC7(txd->len) +
		    sizeof(ae_txs_t) + 3) & ~3) % AE_TXD_BUFSIZE_DEFAULT;

		if ((flags & AE_TXS_SUCCESS) != 0)
			FUNC5(ifp, IFCOUNTER_OPACKETS, 1);
		else
			FUNC5(ifp, IFCOUNTER_OERRORS, 1);

		sc->tx_inproc--;
	}

	if ((sc->flags & AE_FLAG_TXAVAIL) != 0)
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
	if (sc->tx_inproc < 0) {
		FUNC6(ifp, "Received stray Tx interrupt(s).\n");
		sc->tx_inproc = 0;
	}

	if (sc->tx_inproc == 0)
		sc->wd_timer = 0;	/* Unarm watchdog. */

	/*
	 * Syncronize DMA buffers.
	 */
	FUNC2(sc->dma_txd_tag, sc->dma_txd_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	FUNC2(sc->dma_txs_tag, sc->dma_txs_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}