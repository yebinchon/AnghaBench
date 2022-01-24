#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  txdesc ;
struct ti_txdesc {struct mbuf* tx_m; int /*<<< orphan*/  tx_dmamap; } ;
struct ti_tx_desc {int /*<<< orphan*/  ti_flags; scalar_t__ ti_vlan_tag; int /*<<< orphan*/  ti_len; int /*<<< orphan*/  ti_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  ti_txbusyq; int /*<<< orphan*/  ti_txfreeq; int /*<<< orphan*/  ti_tx_tag; } ;
struct TYPE_7__ {struct ti_tx_desc* ti_tx_ring; } ;
struct ti_softc {int ti_txcnt; int ti_tx_saved_prodidx; scalar_t__ ti_hwrev; TYPE_3__ ti_cdata; TYPE_2__ ti_rdata; } ;
struct TYPE_6__ {int csum_flags; scalar_t__ ether_vtag; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct TYPE_9__ {int /*<<< orphan*/  ds_len; int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_4__ bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int CSUM_IP ; 
 int CSUM_TCP ; 
 int CSUM_UDP ; 
 int EFBIG ; 
 int EIO ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int M_VLANTAG ; 
 struct ti_txdesc* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ti_txdesc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TI_BDFLAG_END ; 
 int /*<<< orphan*/  TI_BDFLAG_IP_CKSUM ; 
 int /*<<< orphan*/  TI_BDFLAG_TCP_UDP_CKSUM ; 
 int /*<<< orphan*/  TI_BDFLAG_VLAN_TAG ; 
 scalar_t__ TI_HWREV_TIGON ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int TI_MAXTXSEGS ; 
 scalar_t__ TI_TX_RING_BASE ; 
 int TI_TX_RING_CNT ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*,TYPE_4__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ti_tx_desc*,int) ; 
 struct mbuf* FUNC8 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ti_softc*,scalar_t__,int,struct ti_tx_desc*) ; 
 int /*<<< orphan*/  tx_q ; 

__attribute__((used)) static int
FUNC12(struct ti_softc *sc, struct mbuf **m_head)
{
	struct ti_txdesc *txd;
	struct ti_tx_desc *f;
	struct ti_tx_desc txdesc;
	struct mbuf *m;
	bus_dma_segment_t txsegs[TI_MAXTXSEGS];
	uint16_t csum_flags;
	int error, frag, i, nseg;

	if ((txd = FUNC0(&sc->ti_cdata.ti_txfreeq)) == NULL)
		return (ENOBUFS);

	error = FUNC4(sc->ti_cdata.ti_tx_tag, txd->tx_dmamap,
	    *m_head, txsegs, &nseg, 0);
	if (error == EFBIG) {
		m = FUNC8(*m_head, M_NOWAIT);
		if (m == NULL) {
			FUNC9(*m_head);
			*m_head = NULL;
			return (ENOMEM);
		}
		*m_head = m;
		error = FUNC4(sc->ti_cdata.ti_tx_tag,
		    txd->tx_dmamap, *m_head, txsegs, &nseg, 0);
		if (error) {
			FUNC9(*m_head);
			*m_head = NULL;
			return (error);
		}
	} else if (error != 0)
		return (error);
	if (nseg == 0) {
		FUNC9(*m_head);
		*m_head = NULL;
		return (EIO);
	}

	if (sc->ti_txcnt + nseg >= TI_TX_RING_CNT) {
		FUNC6(sc->ti_cdata.ti_tx_tag, txd->tx_dmamap);
		return (ENOBUFS);
	}
	FUNC5(sc->ti_cdata.ti_tx_tag, txd->tx_dmamap,
	    BUS_DMASYNC_PREWRITE);

	m = *m_head;
	csum_flags = 0;
	if (m->m_pkthdr.csum_flags & CSUM_IP)
		csum_flags |= TI_BDFLAG_IP_CKSUM;
	if (m->m_pkthdr.csum_flags & (CSUM_TCP | CSUM_UDP))
		csum_flags |= TI_BDFLAG_TCP_UDP_CKSUM;

	frag = sc->ti_tx_saved_prodidx;
	for (i = 0; i < nseg; i++) {
		if (sc->ti_hwrev == TI_HWREV_TIGON) {
			FUNC7(&txdesc, sizeof(txdesc));
			f = &txdesc;
		} else
			f = &sc->ti_rdata.ti_tx_ring[frag];
		FUNC10(&f->ti_addr, txsegs[i].ds_addr);
		f->ti_len = txsegs[i].ds_len;
		f->ti_flags = csum_flags;
		if (m->m_flags & M_VLANTAG) {
			f->ti_flags |= TI_BDFLAG_VLAN_TAG;
			f->ti_vlan_tag = m->m_pkthdr.ether_vtag;
		} else {
			f->ti_vlan_tag = 0;
		}

		if (sc->ti_hwrev == TI_HWREV_TIGON)
			FUNC11(sc, TI_TX_RING_BASE + frag *
			    sizeof(txdesc), sizeof(txdesc), &txdesc);
		FUNC3(frag, TI_TX_RING_CNT);
	}

	sc->ti_tx_saved_prodidx = frag;
	/* set TI_BDFLAG_END on the last descriptor */
	frag = (frag + TI_TX_RING_CNT - 1) % TI_TX_RING_CNT;
	if (sc->ti_hwrev == TI_HWREV_TIGON) {
		txdesc.ti_flags |= TI_BDFLAG_END;
		FUNC11(sc, TI_TX_RING_BASE + frag * sizeof(txdesc),
		    sizeof(txdesc), &txdesc);
	} else
		sc->ti_rdata.ti_tx_ring[frag].ti_flags |= TI_BDFLAG_END;

	FUNC2(&sc->ti_cdata.ti_txfreeq, tx_q);
	FUNC1(&sc->ti_cdata.ti_txbusyq, txd, tx_q);
	txd->tx_m = m;
	sc->ti_txcnt += nseg;

	return (0);
}