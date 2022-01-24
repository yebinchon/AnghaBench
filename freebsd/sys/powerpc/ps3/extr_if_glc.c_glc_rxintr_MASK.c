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
struct TYPE_5__ {int csum_flags; int csum_data; int /*<<< orphan*/  len; struct ifnet* rcvif; } ;
struct mbuf {int /*<<< orphan*/  m_len; TYPE_2__ m_pkthdr; } ;
struct ifnet {int /*<<< orphan*/  (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct glc_softc {size_t sc_next_rxdma_slot; int /*<<< orphan*/  sc_self; TYPE_3__* sc_rxsoft; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_bus; int /*<<< orphan*/  sc_rxdmadesc_map; int /*<<< orphan*/  sc_dmadesc_tag; int /*<<< orphan*/  sc_mtx; TYPE_1__* sc_rxdmadesc; struct ifnet* sc_ifp; } ;
struct TYPE_6__ {int /*<<< orphan*/  rxs_desc; struct mbuf* rxs_mbuf; } ;
struct TYPE_4__ {int cmd_stat; int rxerror; int data_stat; int /*<<< orphan*/  valid_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int CSUM_DATA_VALID ; 
 int CSUM_IP_CHECKED ; 
 int CSUM_IP_VALID ; 
 int CSUM_PSEUDO_HDR ; 
 int GELIC_CMDSTAT_CHAIN_END ; 
 int GELIC_DESCR_OWNED ; 
 int GELIC_RXERRORS ; 
 int GELIC_RX_IPCSUM ; 
 int GELIC_RX_TCPUDPCSUM ; 
 int GLC_MAX_RX_PACKETS ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (struct glc_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct glc_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC10(struct glc_softc *sc)
{
	int i, restart_rxdma, error;
	struct mbuf *m;
	struct ifnet *ifp = sc->sc_ifp;

	FUNC0(sc->sc_dmadesc_tag, sc->sc_rxdmadesc_map,
	    BUS_DMASYNC_POSTREAD);

	restart_rxdma = 0;
	while ((sc->sc_rxdmadesc[sc->sc_next_rxdma_slot].cmd_stat &
	   GELIC_DESCR_OWNED) == 0) {
		i = sc->sc_next_rxdma_slot;
		sc->sc_next_rxdma_slot++;
		if (sc->sc_next_rxdma_slot >= GLC_MAX_RX_PACKETS)
			sc->sc_next_rxdma_slot = 0;

		if (sc->sc_rxdmadesc[i].cmd_stat & GELIC_CMDSTAT_CHAIN_END)
			restart_rxdma = 1;

		if (sc->sc_rxdmadesc[i].rxerror & GELIC_RXERRORS) {
			FUNC4(ifp, IFCOUNTER_IERRORS, 1);
			goto requeue;
		}

		m = sc->sc_rxsoft[i].rxs_mbuf;
		if (sc->sc_rxdmadesc[i].data_stat & GELIC_RX_IPCSUM) {
			m->m_pkthdr.csum_flags |=
			    CSUM_IP_CHECKED | CSUM_IP_VALID;
		}
		if (sc->sc_rxdmadesc[i].data_stat & GELIC_RX_TCPUDPCSUM) {
			m->m_pkthdr.csum_flags |=
			    CSUM_DATA_VALID | CSUM_PSEUDO_HDR;
			m->m_pkthdr.csum_data = 0xffff;
		}

		if (FUNC2(sc, i)) {
			FUNC4(ifp, IFCOUNTER_IERRORS, 1);
			goto requeue;
		}

		FUNC4(ifp, IFCOUNTER_IPACKETS, 1);
		m->m_pkthdr.rcvif = ifp;
		m->m_len = sc->sc_rxdmadesc[i].valid_size;
		m->m_pkthdr.len = m->m_len;

		/*
		 * Remove VLAN tag. Even on early firmwares that do not allow
		 * multiple VLANs, the VLAN tag is still in place here.
		 */
		FUNC6(m, 2);

		FUNC8(&sc->sc_mtx);
		(*ifp->if_input)(ifp, m);
		FUNC7(&sc->sc_mtx);

	    requeue:
		FUNC3(sc, i);	
	}

	FUNC0(sc->sc_dmadesc_tag, sc->sc_rxdmadesc_map,
	    BUS_DMASYNC_PREWRITE);

	if (restart_rxdma) {
		error = FUNC5(sc->sc_bus, sc->sc_dev,
		    sc->sc_rxsoft[sc->sc_next_rxdma_slot].rxs_desc, 0);
		if (error != 0)
			FUNC1(sc->sc_self,
			    "lv1_net_start_rx_dma error: %d\n", error);
	}
}