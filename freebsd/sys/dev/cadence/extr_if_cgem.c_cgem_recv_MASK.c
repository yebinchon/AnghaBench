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
struct TYPE_4__ {int len; int csum_flags; int csum_data; int /*<<< orphan*/  rcvif; } ;
struct mbuf {int m_len; struct mbuf* m_next; TYPE_2__ m_pkthdr; int /*<<< orphan*/  m_data; } ;
struct cgem_softc {scalar_t__ rxring_queued; size_t rxring_tl_ptr; int /*<<< orphan*/ ** rxring_m_dmamap; int /*<<< orphan*/  mbuf_dma_tag; struct mbuf** rxring_m; TYPE_1__* rxring; int /*<<< orphan*/  ifp; } ;
typedef  int /*<<< orphan*/  if_t ;
struct TYPE_3__ {int addr; int ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  FUNC0 (struct cgem_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cgem_softc*) ; 
 size_t CGEM_NUM_RX_DESCS ; 
 int CGEM_RXDESC_BAD_FCS ; 
 int CGEM_RXDESC_CKSUM_STAT_IP_GOOD ; 
 int CGEM_RXDESC_CKSUM_STAT_MASK ; 
 int CGEM_RXDESC_CKSUM_STAT_TCP_GOOD ; 
 int CGEM_RXDESC_CKSUM_STAT_UDP_GOOD ; 
 int CGEM_RXDESC_EOF ; 
 int CGEM_RXDESC_LENGTH_MASK ; 
 int CGEM_RXDESC_OWN ; 
 int CGEM_RXDESC_SOF ; 
 int /*<<< orphan*/  FUNC2 (struct cgem_softc*) ; 
 int CSUM_DATA_VALID ; 
 int CSUM_IP_CHECKED ; 
 int CSUM_IP_VALID ; 
 int CSUM_PSEUDO_HDR ; 
 scalar_t__ ETHER_ALIGN ; 
 int IFCAP_RXCSUM ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cgem_softc*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct mbuf*) ; 

__attribute__((used)) static void
FUNC11(struct cgem_softc *sc)
{
	if_t ifp = sc->ifp;
	struct mbuf *m, *m_hd, **m_tl;
	uint32_t ctl;

	FUNC0(sc);

	/* Pick up all packets in which the OWN bit is set. */
	m_hd = NULL;
	m_tl = &m_hd;
	while (sc->rxring_queued > 0 &&
	       (sc->rxring[sc->rxring_tl_ptr].addr & CGEM_RXDESC_OWN) != 0) {

		ctl = sc->rxring[sc->rxring_tl_ptr].ctl;

		/* Grab filled mbuf. */
		m = sc->rxring_m[sc->rxring_tl_ptr];
		sc->rxring_m[sc->rxring_tl_ptr] = NULL;

		/* Sync cache with receive buffer. */
		FUNC4(sc->mbuf_dma_tag,
				sc->rxring_m_dmamap[sc->rxring_tl_ptr],
				BUS_DMASYNC_POSTREAD);

		/* Unload and destroy dmamap. */
		FUNC5(sc->mbuf_dma_tag,
		  	sc->rxring_m_dmamap[sc->rxring_tl_ptr]);
		FUNC3(sc->mbuf_dma_tag,
				   sc->rxring_m_dmamap[sc->rxring_tl_ptr]);
		sc->rxring_m_dmamap[sc->rxring_tl_ptr] = NULL;

		/* Increment tail pointer. */
		if (++sc->rxring_tl_ptr == CGEM_NUM_RX_DESCS)
			sc->rxring_tl_ptr = 0;
		sc->rxring_queued--;

		/* Check FCS and make sure entire packet landed in one mbuf
		 * cluster (which is much bigger than the largest ethernet
		 * packet).
		 */
		if ((ctl & CGEM_RXDESC_BAD_FCS) != 0 ||
		    (ctl & (CGEM_RXDESC_SOF | CGEM_RXDESC_EOF)) !=
		           (CGEM_RXDESC_SOF | CGEM_RXDESC_EOF)) {
			/* discard. */
			FUNC10(m);
			FUNC8(ifp, IFCOUNTER_IERRORS, 1);
			continue;
		}

		/* Ready it to hand off to upper layers. */
		m->m_data += ETHER_ALIGN;
		m->m_len = (ctl & CGEM_RXDESC_LENGTH_MASK);
		m->m_pkthdr.rcvif = ifp;
		m->m_pkthdr.len = m->m_len;

		/* Are we using hardware checksumming?  Check the
		 * status in the receive descriptor.
		 */
		if ((FUNC7(ifp) & IFCAP_RXCSUM) != 0) {
			/* TCP or UDP checks out, IP checks out too. */
			if ((ctl & CGEM_RXDESC_CKSUM_STAT_MASK) ==
			    CGEM_RXDESC_CKSUM_STAT_TCP_GOOD ||
			    (ctl & CGEM_RXDESC_CKSUM_STAT_MASK) ==
			    CGEM_RXDESC_CKSUM_STAT_UDP_GOOD) {
				m->m_pkthdr.csum_flags |=
					CSUM_IP_CHECKED | CSUM_IP_VALID |
					CSUM_DATA_VALID | CSUM_PSEUDO_HDR;
				m->m_pkthdr.csum_data = 0xffff;
			} else if ((ctl & CGEM_RXDESC_CKSUM_STAT_MASK) ==
				   CGEM_RXDESC_CKSUM_STAT_IP_GOOD) {
				/* Only IP checks out. */
				m->m_pkthdr.csum_flags |=
					CSUM_IP_CHECKED | CSUM_IP_VALID;
				m->m_pkthdr.csum_data = 0xffff;
			}
		}

		/* Queue it up for delivery below. */
		*m_tl = m;
		m_tl = &m->m_next;
	}

	/* Replenish receive buffers. */
	FUNC6(sc);

	/* Unlock and send up packets. */
	FUNC2(sc);
	while (m_hd != NULL) {
		m = m_hd;
		m_hd = m_hd->m_next;
		m->m_next = NULL;
		FUNC8(ifp, IFCOUNTER_IPACKETS, 1);
		FUNC9(ifp, m);
	}
	FUNC1(sc);
}