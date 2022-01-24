#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vge_txdesc {TYPE_2__* tx_desc; } ;
struct TYPE_6__ {int vge_tx_prodidx; int vge_tx_cnt; int /*<<< orphan*/  vge_tx_ring_map; int /*<<< orphan*/  vge_tx_ring_tag; struct vge_txdesc* vge_txdesc; } ;
struct vge_softc {int vge_flags; int vge_timer; TYPE_3__ vge_cdata; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; struct vge_softc* if_softc; } ;
struct TYPE_5__ {TYPE_1__* vge_frag; } ;
struct TYPE_4__ {int /*<<< orphan*/  vge_addrhi; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct vge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,struct mbuf*) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int VGE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC5 (struct vge_softc*) ; 
 int /*<<< orphan*/  VGE_TXDESC_Q ; 
 int /*<<< orphan*/  VGE_TXQCSRS ; 
 int /*<<< orphan*/  VGE_TXQCSR_WAK0 ; 
 int VGE_TX_DESC_CNT ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct vge_softc*,struct mbuf**) ; 

__attribute__((used)) static void
FUNC11(struct ifnet *ifp)
{
	struct vge_softc *sc;
	struct vge_txdesc *txd;
	struct mbuf *m_head;
	int enq, idx;

	sc = ifp->if_softc;

	FUNC5(sc);

	if ((sc->vge_flags & VGE_FLAG_LINK) == 0 ||
	    (ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING)
		return;

	idx = sc->vge_cdata.vge_tx_prodidx;
	FUNC6(idx);
	for (enq = 0; !FUNC3(&ifp->if_snd) &&
	    sc->vge_cdata.vge_tx_cnt < VGE_TX_DESC_CNT - 1; ) {
		FUNC2(&ifp->if_snd, m_head);
		if (m_head == NULL)
			break;
		/*
		 * Pack the data into the transmit ring. If we
		 * don't have room, set the OACTIVE flag and wait
		 * for the NIC to drain the ring.
		 */
		if (FUNC10(sc, &m_head)) {
			if (m_head == NULL)
				break;
			FUNC4(&ifp->if_snd, m_head);
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			break;
		}

		txd = &sc->vge_cdata.vge_txdesc[idx];
		txd->tx_desc->vge_frag[0].vge_addrhi |= FUNC9(VGE_TXDESC_Q);
		FUNC7(idx);

		enq++;
		/*
		 * If there's a BPF listener, bounce a copy of this frame
		 * to him.
		 */
		FUNC1(ifp, m_head);
	}

	if (enq > 0) {
		FUNC8(sc->vge_cdata.vge_tx_ring_tag,
		    sc->vge_cdata.vge_tx_ring_map,
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
		/* Issue a transmit command. */
		FUNC0(sc, VGE_TXQCSRS, VGE_TXQCSR_WAK0);
		/*
		 * Set a timeout in case the chip goes out to lunch.
		 */
		sc->vge_timer = 5;
	}
}