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
struct TYPE_2__ {int vr_tx_cnt; } ;
struct vr_softc {int vr_flags; int vr_watchdog_timer; TYPE_1__ vr_cdata; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; struct vr_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  VR_CR0 ; 
 int /*<<< orphan*/  VR_CR0_TX_GO ; 
 int VR_F_LINK ; 
 int /*<<< orphan*/  FUNC4 (struct vr_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct vr_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VR_TX_RING_CNT ; 
 scalar_t__ FUNC6 (struct vr_softc*,struct mbuf**) ; 

__attribute__((used)) static void
FUNC7(struct ifnet *ifp)
{
	struct vr_softc		*sc;
	struct mbuf		*m_head;
	int			enq;

	sc = ifp->if_softc;

	FUNC4(sc);

	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING || (sc->vr_flags & VR_F_LINK) == 0)
		return;

	for (enq = 0; !FUNC2(&ifp->if_snd) &&
	    sc->vr_cdata.vr_tx_cnt < VR_TX_RING_CNT - 2; ) {
		FUNC1(&ifp->if_snd, m_head);
		if (m_head == NULL)
			break;
		/*
		 * Pack the data into the transmit ring. If we
		 * don't have room, set the OACTIVE flag and wait
		 * for the NIC to drain the ring.
		 */
		if (FUNC6(sc, &m_head)) {
			if (m_head == NULL)
				break;
			FUNC3(&ifp->if_snd, m_head);
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			break;
		}

		enq++;
		/*
		 * If there's a BPF listener, bounce a copy of this frame
		 * to him.
		 */
		FUNC0(ifp, m_head);
	}

	if (enq > 0) {
		/* Tell the chip to start transmitting. */
		FUNC5(sc, VR_CR0, VR_CR0_TX_GO);
		/* Set a timeout in case the chip goes out to lunch. */
		sc->vr_watchdog_timer = 5;
	}
}