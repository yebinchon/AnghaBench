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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct TYPE_6__ {int vte_rx_cons; int /*<<< orphan*/  vte_rx_ring_map; int /*<<< orphan*/  vte_rx_ring_tag; struct vte_rxdesc* vte_rxdesc; } ;
struct vte_softc {TYPE_3__ vte_cdata; struct ifnet* vte_ifp; } ;
struct vte_rxdesc {TYPE_1__* rx_desc; struct mbuf* rx_m; } ;
struct TYPE_5__ {int len; struct ifnet* rcvif; } ;
struct mbuf {int m_len; TYPE_2__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_4__ {void* drst; void* drlen; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct vte_softc*,int /*<<< orphan*/ ,int) ; 
 int ETHER_CRC_LEN ; 
 int /*<<< orphan*/  IFCOUNTER_IQDROPS ; 
 int IFF_DRV_RUNNING ; 
 int MCLBYTES ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int VTE_DRST_RX_OK ; 
 int VTE_DRST_RX_OWN ; 
 int /*<<< orphan*/  FUNC2 (struct vte_softc*) ; 
 int /*<<< orphan*/  VTE_MRDCR ; 
 int VTE_MRDCR_RX_PAUSE_THRESH_SHIFT ; 
 int FUNC3 (int) ; 
 int VTE_RX_RING_CNT ; 
 int /*<<< orphan*/  FUNC4 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,struct mbuf*) ; 
 scalar_t__ FUNC11 (struct vte_softc*,struct vte_rxdesc*) ; 

__attribute__((used)) static void
FUNC12(struct vte_softc *sc)
{
	struct ifnet *ifp;
	struct vte_rxdesc *rxd;
	struct mbuf *m;
	uint16_t status, total_len;
	int cons, prog;

	FUNC5(sc->vte_cdata.vte_rx_ring_tag,
	    sc->vte_cdata.vte_rx_ring_map, BUS_DMASYNC_POSTREAD |
	    BUS_DMASYNC_POSTWRITE);
	cons = sc->vte_cdata.vte_rx_cons;
	ifp = sc->vte_ifp;
	for (prog = 0; (ifp->if_drv_flags & IFF_DRV_RUNNING) != 0; prog++,
	    FUNC1(cons, VTE_RX_RING_CNT)) {
		rxd = &sc->vte_cdata.vte_rxdesc[cons];
		status = FUNC8(rxd->rx_desc->drst);
		if ((status & VTE_DRST_RX_OWN) != 0)
			break;
		total_len = FUNC3(FUNC8(rxd->rx_desc->drlen));
		m = rxd->rx_m;
		if ((status & VTE_DRST_RX_OK) == 0) {
			/* Discard errored frame. */
			rxd->rx_desc->drlen =
			    FUNC6(MCLBYTES - sizeof(uint32_t));
			rxd->rx_desc->drst = FUNC6(VTE_DRST_RX_OWN);
			continue;
		}
		if (FUNC11(sc, rxd) != 0) {
			FUNC7(ifp, IFCOUNTER_IQDROPS, 1);
			rxd->rx_desc->drlen =
			    FUNC6(MCLBYTES - sizeof(uint32_t));
			rxd->rx_desc->drst = FUNC6(VTE_DRST_RX_OWN);
			continue;
		}

		/*
		 * It seems there is no way to strip FCS bytes.
		 */
		m->m_pkthdr.len = m->m_len = total_len - ETHER_CRC_LEN;
		m->m_pkthdr.rcvif = ifp;
#ifndef __NO_STRICT_ALIGNMENT
		FUNC10(ifp, m);
#endif
		FUNC4(sc);
		(*ifp->if_input)(ifp, m);
		FUNC2(sc);
	}

	if (prog > 0) {
		/* Update the consumer index. */
		sc->vte_cdata.vte_rx_cons = cons;
		/*
		 * Sync updated RX descriptors such that controller see
		 * modified RX buffer addresses.
		 */
		FUNC5(sc->vte_cdata.vte_rx_ring_tag,
		    sc->vte_cdata.vte_rx_ring_map,
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
#ifdef notyet
		/*
		 * Update residue counter.  Controller does not
		 * keep track of number of available RX descriptors
		 * such that driver should have to update VTE_MRDCR
		 * to make controller know how many free RX
		 * descriptors were added to controller.  This is
		 * a similar mechanism used in VIA velocity
		 * controllers and it indicates controller just
		 * polls OWN bit of current RX descriptor pointer.
		 * A couple of severe issues were seen on sample
		 * board where the controller continuously emits TX
		 * pause frames once RX pause threshold crossed.
		 * Once triggered it never recovered form that
		 * state, I couldn't find a way to make it back to
		 * work at least.  This issue effectively
		 * disconnected the system from network.  Also, the
		 * controller used 00:00:00:00:00:00 as source
		 * station address of TX pause frame. Probably this
		 * is one of reason why vendor recommends not to
		 * enable flow control on R6040 controller.
		 */
		CSR_WRITE_2(sc, VTE_MRDCR, prog |
		    (((VTE_RX_RING_CNT * 2) / 10) <<
		    VTE_MRDCR_RX_PAUSE_THRESH_SHIFT));
#endif
	}
}