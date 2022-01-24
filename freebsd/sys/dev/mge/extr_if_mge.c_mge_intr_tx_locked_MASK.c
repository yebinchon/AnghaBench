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
typedef  int uint32_t ;
struct mge_softc {size_t tx_desc_used_idx; int /*<<< orphan*/  mge_tx_dtag; scalar_t__ tx_desc_used_count; int /*<<< orphan*/  mge_desc_dtag; struct mge_desc_wrapper* mge_tx_desc; scalar_t__ wd_timer; struct ifnet* ifp; } ;
struct mge_desc_wrapper {struct mbuf* buffer; int /*<<< orphan*/  buffer_dmap; int /*<<< orphan*/  desc_dmap; struct mge_desc* mge_desc; } ;
struct mge_desc {int cmd_status; } ;
struct mbuf {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  IFCOUNTER_COLLISIONS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int MGE_DMA_OWNED ; 
 int MGE_ERR_MASK ; 
 int MGE_ERR_SUMMARY ; 
 int /*<<< orphan*/  FUNC0 (struct mge_softc*) ; 
 int MGE_TX_DESC_NUM ; 
 int MGE_TX_ERROR_LC ; 
 int MGE_TX_ERROR_RL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC6(struct mge_softc *sc)
{
	struct ifnet *ifp = sc->ifp;
	struct mge_desc_wrapper *dw;
	struct mge_desc *desc;
	uint32_t status;
	int send = 0;

	FUNC0(sc);

	/* Disable watchdog */
	sc->wd_timer = 0;

	while (sc->tx_desc_used_count) {
		/* Get the descriptor */
		dw = &sc->mge_tx_desc[sc->tx_desc_used_idx];
		desc = dw->mge_desc;
		FUNC1(sc->mge_desc_dtag, dw->desc_dmap,
		    BUS_DMASYNC_POSTREAD);

		/* Get descriptor status */
		status = desc->cmd_status;

		if (status & MGE_DMA_OWNED)
			break;

		sc->tx_desc_used_idx =
			(++sc->tx_desc_used_idx) % MGE_TX_DESC_NUM;
		sc->tx_desc_used_count--;

		/* Update collision statistics */
		if (status & MGE_ERR_SUMMARY) {
			if ((status & MGE_ERR_MASK) == MGE_TX_ERROR_LC)
				FUNC3(ifp, IFCOUNTER_COLLISIONS, 1);
			if ((status & MGE_ERR_MASK) == MGE_TX_ERROR_RL)
				FUNC3(ifp, IFCOUNTER_COLLISIONS, 16);
		}

		FUNC1(sc->mge_tx_dtag, dw->buffer_dmap,
		    BUS_DMASYNC_POSTWRITE);
		FUNC2(sc->mge_tx_dtag, dw->buffer_dmap);
		FUNC4(dw->buffer);
		dw->buffer = (struct mbuf*)NULL;
		send++;

		FUNC3(ifp, IFCOUNTER_OPACKETS, 1);
	}

	if (send) {
		/* Now send anything that was pending */
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
		FUNC5(ifp);
	}
}