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
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; struct bfe_softc* if_softc; } ;
struct bfe_softc {int bfe_flags; int bfe_tx_cnt; int bfe_tx_prod; int bfe_watchdog_timer; int /*<<< orphan*/  bfe_tx_map; int /*<<< orphan*/  bfe_tx_tag; } ;
struct bfe_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFE_DMATX_PTR ; 
 int BFE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct bfe_softc*) ; 
 int BFE_TX_LIST_CNT ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,struct mbuf*) ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC2 (struct bfe_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct mbuf*) ; 
 scalar_t__ FUNC6 (struct bfe_softc*,struct mbuf**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct ifnet *ifp)
{
	struct bfe_softc *sc;
	struct mbuf *m_head;
	int queued;

	sc = ifp->if_softc;

	FUNC0(sc);

	/*
	 * Not much point trying to send if the link is down
	 * or we have nothing to send.
	 */
	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING || (sc->bfe_flags & BFE_FLAG_LINK) == 0)
		return;

	for (queued = 0; !FUNC4(&ifp->if_snd) &&
	    sc->bfe_tx_cnt < BFE_TX_LIST_CNT - 1;) {
		FUNC3(&ifp->if_snd, m_head);
		if (m_head == NULL)
			break;

		/*
		 * Pack the data into the tx ring.  If we dont have
		 * enough room, let the chip drain the ring.
		 */
		if (FUNC6(sc, &m_head)) {
			if (m_head == NULL)
				break;
			FUNC5(&ifp->if_snd, m_head);
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			break;
		}

		queued++;

		/*
		 * If there's a BPF listener, bounce a copy of this frame
		 * to him.
		 */
		FUNC1(ifp, m_head);
	}

	if (queued) {
		FUNC7(sc->bfe_tx_tag, sc->bfe_tx_map,
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
		/* Transmit - twice due to apparent hardware bug */
		FUNC2(sc, BFE_DMATX_PTR,
		    sc->bfe_tx_prod * sizeof(struct bfe_desc));
		/*
		 * XXX It seems the following write is not necessary
		 * to kick Tx command. What might be required would be
		 * a way flushing PCI posted write. Reading the register
		 * back ensures the flush operation. In addition,
		 * hardware will execute PCI posted write in the long
		 * run and watchdog timer for the kick command was set
		 * to 5 seconds. Therefore I think the second write
		 * access is not necessary or could be replaced with
		 * read operation.
		 */
		FUNC2(sc, BFE_DMATX_PTR,
		    sc->bfe_tx_prod * sizeof(struct bfe_desc));

		/*
		 * Set a timeout in case the chip goes out to lunch.
		 */
		sc->bfe_watchdog_timer = 5;
	}
}