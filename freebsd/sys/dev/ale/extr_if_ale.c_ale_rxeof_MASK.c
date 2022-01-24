#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct rx_rs {int /*<<< orphan*/  vtags; int /*<<< orphan*/  flags; int /*<<< orphan*/  length; int /*<<< orphan*/  seqno; } ;
struct TYPE_4__ {int /*<<< orphan*/  ether_vtag; } ;
struct mbuf {int /*<<< orphan*/  m_flags; TYPE_2__ m_pkthdr; } ;
struct ifnet {int if_capenable; int /*<<< orphan*/  (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_3__ {size_t ale_rx_curp; int ale_rx_seqno; struct ale_rx_page* ale_rx_page; } ;
struct ale_softc {TYPE_1__ ale_cdata; int /*<<< orphan*/  ale_dev; struct ifnet* ale_ifp; } ;
struct ale_rx_page {int* cmb_addr; int cons; int page_addr; int /*<<< orphan*/  page_map; int /*<<< orphan*/  page_tag; int /*<<< orphan*/  cmb_map; int /*<<< orphan*/  cmb_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ale_softc*) ; 
 int ALE_RD_CODE ; 
 int ALE_RD_CRC ; 
 int ALE_RD_DRIBBLE ; 
 int ALE_RD_ERROR ; 
 int ALE_RD_IPV4 ; 
 int ALE_RD_OFLOW ; 
 int ALE_RD_RUNT ; 
 int ALE_RD_TRUNC ; 
 int ALE_RD_VLAN ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ale_softc*) ; 
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int EAGAIN ; 
 int EIO ; 
 int /*<<< orphan*/  ETHER_ALIGN ; 
 int ETHER_CRC_LEN ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int /*<<< orphan*/  IFCOUNTER_IQDROPS ; 
 int /*<<< orphan*/  M_VLANTAG ; 
 int /*<<< orphan*/  FUNC6 (struct ale_softc*,struct ale_rx_page**,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct ale_softc*,struct mbuf*,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC12 (char*,int,int /*<<< orphan*/ ,struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*,struct mbuf*) ; 

__attribute__((used)) static int
FUNC14(struct ale_softc *sc, int count)
{
	struct ale_rx_page *rx_page;
	struct rx_rs *rs;
	struct ifnet *ifp;
	struct mbuf *m;
	uint32_t length, prod, seqno, status, vtags;
	int prog;

	ifp = sc->ale_ifp;
	rx_page = &sc->ale_cdata.ale_rx_page[sc->ale_cdata.ale_rx_curp];
	FUNC8(rx_page->cmb_tag, rx_page->cmb_map,
	    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
	FUNC8(rx_page->page_tag, rx_page->page_map,
	    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
	/*
	 * Don't directly access producer index as hardware may
	 * update it while Rx handler is in progress. It would
	 * be even better if there is a way to let hardware
	 * know how far driver processed its received frames.
	 * Alternatively, hardware could provide a way to disable
	 * CMB updates until driver acknowledges the end of CMB
	 * access.
	 */
	prod = *rx_page->cmb_addr;
	for (prog = 0; prog < count; prog++) {
		if (rx_page->cons >= prod)
			break;
		rs = (struct rx_rs *)(rx_page->page_addr + rx_page->cons);
		seqno = FUNC2(FUNC11(rs->seqno));
		if (sc->ale_cdata.ale_rx_seqno != seqno) {
			/*
			 * Normally I believe this should not happen unless
			 * severe driver bug or corrupted memory. However
			 * it seems to happen under certain conditions which
			 * is triggered by abrupt Rx events such as initiation
			 * of bulk transfer of remote host. It's not easy to
			 * reproduce this and I doubt it could be related
			 * with FIFO overflow of hardware or activity of Tx
			 * CMB updates. I also remember similar behaviour
			 * seen on RealTek 8139 which uses resembling Rx
			 * scheme.
			 */
			if (bootverbose)
				FUNC9(sc->ale_dev,
				    "garbled seq: %u, expected: %u -- "
				    "resetting!\n", seqno,
				    sc->ale_cdata.ale_rx_seqno);
			return (EIO);
		}
		/* Frame received. */
		sc->ale_cdata.ale_rx_seqno++;
		length = FUNC1(FUNC11(rs->length));
		status = FUNC11(rs->flags);
		if ((status & ALE_RD_ERROR) != 0) {
			/*
			 * We want to pass the following frames to upper
			 * layer regardless of error status of Rx return
			 * status.
			 *
			 *  o IP/TCP/UDP checksum is bad.
			 *  o frame length and protocol specific length
			 *     does not match.
			 */
			if ((status & (ALE_RD_CRC | ALE_RD_CODE |
			    ALE_RD_DRIBBLE | ALE_RD_RUNT | ALE_RD_OFLOW |
			    ALE_RD_TRUNC)) != 0) {
				FUNC6(sc, &rx_page, length, &prod);
				continue;
			}
		}
		/*
		 * m_devget(9) is major bottle-neck of ale(4)(It comes
		 * from hardware limitation). For jumbo frames we could
		 * get a slightly better performance if driver use
		 * m_getjcl(9) with proper buffer size argument. However
		 * that would make code more complicated and I don't
		 * think users would expect good Rx performance numbers
		 * on these low-end consumer ethernet controller.
		 */
		m = FUNC12((char *)(rs + 1), length - ETHER_CRC_LEN,
		    ETHER_ALIGN, ifp, NULL);
		if (m == NULL) {
			FUNC10(ifp, IFCOUNTER_IQDROPS, 1);
			FUNC6(sc, &rx_page, length, &prod);
			continue;
		}
		if ((ifp->if_capenable & IFCAP_RXCSUM) != 0 &&
		    (status & ALE_RD_IPV4) != 0)
			FUNC7(sc, m, status);
		if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0 &&
		    (status & ALE_RD_VLAN) != 0) {
			vtags = FUNC3(FUNC11(rs->vtags));
			m->m_pkthdr.ether_vtag = FUNC4(vtags);
			m->m_flags |= M_VLANTAG;
		}

		/* Pass it to upper layer. */
		FUNC5(sc);
		(*ifp->if_input)(ifp, m);
		FUNC0(sc);

		FUNC6(sc, &rx_page, length, &prod);
	}

	return (count > 0 ? 0 : EAGAIN);
}