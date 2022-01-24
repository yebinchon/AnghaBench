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
typedef  int uint16_t ;
struct TYPE_4__ {size_t cur; int /*<<< orphan*/  rx_desc_map; int /*<<< orphan*/  rx_desc_tag; struct nfe_desc32* desc32; struct nfe_desc64* desc64; struct nfe_rx_data* data; } ;
struct nfe_softc {int nfe_flags; TYPE_2__ rxq; int /*<<< orphan*/  nfe_ifp; } ;
struct nfe_rx_data {struct mbuf* m; } ;
struct nfe_desc64 {int /*<<< orphan*/  length; int /*<<< orphan*/  flags; int /*<<< orphan*/ * physaddr; } ;
struct nfe_desc32 {int /*<<< orphan*/  length; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int ether_vtag; int len; int csum_flags; int csum_data; int /*<<< orphan*/  rcvif; } ;
struct mbuf {int m_len; TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_flags; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int CSUM_DATA_VALID ; 
 int CSUM_IP_CHECKED ; 
 int CSUM_IP_VALID ; 
 int CSUM_PSEUDO_HDR ; 
 int EAGAIN ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  IFCOUNTER_IQDROPS ; 
 int /*<<< orphan*/  M_VLANTAG ; 
 int NFE_40BIT_ADDR ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int NFE_JUMBO_SUP ; 
 int /*<<< orphan*/  FUNC1 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfe_softc*) ; 
 int NFE_RX_ERROR ; 
 int NFE_RX_FIXME_V1 ; 
 int NFE_RX_FIXME_V2 ; 
 int NFE_RX_IP_CSUMOK ; 
 int NFE_RX_LEN_MASK ; 
 int NFE_RX_READY ; 
 int /*<<< orphan*/  NFE_RX_RING_COUNT ; 
 int NFE_RX_TCP_CSUMOK ; 
 int NFE_RX_UDP_CSUMOK ; 
 int NFE_RX_VALID_V1 ; 
 int NFE_RX_VALID_V2 ; 
 int NFE_RX_VTAG ; 
 int /*<<< orphan*/  FUNC3 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nfe_softc*,size_t) ; 
 scalar_t__ FUNC11 (struct nfe_softc*,size_t) ; 

__attribute__((used)) static int
FUNC12(struct nfe_softc *sc, int count, int *rx_npktsp)
{
	if_t ifp = sc->nfe_ifp;
	struct nfe_desc32 *desc32;
	struct nfe_desc64 *desc64;
	struct nfe_rx_data *data;
	struct mbuf *m;
	uint16_t flags;
	int len, prog, rx_npkts;
	uint32_t vtag = 0;

	rx_npkts = 0;
	FUNC2(sc);

	FUNC4(sc->rxq.rx_desc_tag, sc->rxq.rx_desc_map,
	    BUS_DMASYNC_POSTREAD);

	for (prog = 0;;FUNC0(sc->rxq.cur, NFE_RX_RING_COUNT), vtag = 0) {
		if (count <= 0)
			break;
		count--;

		data = &sc->rxq.data[sc->rxq.cur];

		if (sc->nfe_flags & NFE_40BIT_ADDR) {
			desc64 = &sc->rxq.desc64[sc->rxq.cur];
			vtag = FUNC9(desc64->physaddr[1]);
			flags = FUNC8(desc64->flags);
			len = FUNC8(desc64->length) & NFE_RX_LEN_MASK;
		} else {
			desc32 = &sc->rxq.desc32[sc->rxq.cur];
			flags = FUNC8(desc32->flags);
			len = FUNC8(desc32->length) & NFE_RX_LEN_MASK;
		}

		if (flags & NFE_RX_READY)
			break;
		prog++;
		if ((sc->nfe_flags & (NFE_JUMBO_SUP | NFE_40BIT_ADDR)) == 0) {
			if (!(flags & NFE_RX_VALID_V1)) {
				FUNC6(ifp, IFCOUNTER_IERRORS, 1);
				FUNC10(sc, sc->rxq.cur);
				continue;
			}
			if ((flags & NFE_RX_FIXME_V1) == NFE_RX_FIXME_V1) {
				flags &= ~NFE_RX_ERROR;
				len--;	/* fix buffer length */
			}
		} else {
			if (!(flags & NFE_RX_VALID_V2)) {
				FUNC6(ifp, IFCOUNTER_IERRORS, 1);
				FUNC10(sc, sc->rxq.cur);
				continue;
			}

			if ((flags & NFE_RX_FIXME_V2) == NFE_RX_FIXME_V2) {
				flags &= ~NFE_RX_ERROR;
				len--;	/* fix buffer length */
			}
		}

		if (flags & NFE_RX_ERROR) {
			FUNC6(ifp, IFCOUNTER_IERRORS, 1);
			FUNC10(sc, sc->rxq.cur);
			continue;
		}

		m = data->m;
		if (FUNC11(sc, sc->rxq.cur) != 0) {
			FUNC6(ifp, IFCOUNTER_IQDROPS, 1);
			FUNC10(sc, sc->rxq.cur);
			continue;
		}

		if ((vtag & NFE_RX_VTAG) != 0 &&
		    (FUNC5(ifp) & IFCAP_VLAN_HWTAGGING) != 0) {
			m->m_pkthdr.ether_vtag = vtag & 0xffff;
			m->m_flags |= M_VLANTAG;
		}

		m->m_pkthdr.len = m->m_len = len;
		m->m_pkthdr.rcvif = ifp;

		if ((FUNC5(ifp) & IFCAP_RXCSUM) != 0) {
			if ((flags & NFE_RX_IP_CSUMOK) != 0) {
				m->m_pkthdr.csum_flags |= CSUM_IP_CHECKED;
				m->m_pkthdr.csum_flags |= CSUM_IP_VALID;
				if ((flags & NFE_RX_TCP_CSUMOK) != 0 ||
				    (flags & NFE_RX_UDP_CSUMOK) != 0) {
					m->m_pkthdr.csum_flags |=
					    CSUM_DATA_VALID | CSUM_PSEUDO_HDR;
					m->m_pkthdr.csum_data = 0xffff;
				}
			}
		}

		FUNC6(ifp, IFCOUNTER_IPACKETS, 1);

		FUNC3(sc);
		FUNC7(ifp, m);
		FUNC1(sc);
		rx_npkts++;
	}

	if (prog > 0)
		FUNC4(sc->rxq.rx_desc_tag, sc->rxq.rx_desc_map,
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	if (rx_npktsp != NULL)
		*rx_npktsp = rx_npkts;
	return (count > 0 ? 0 : EAGAIN);
}