#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint16_t ;
struct sfxge_txq {scalar_t__ tso_fw_assisted; scalar_t__ init_state; unsigned int added; unsigned int ptr_mask; int n_pend_desc; int /*<<< orphan*/  drops; int /*<<< orphan*/  packet_dma_tag; void* hw_cksum_flags; void* hw_vlan_tci; int /*<<< orphan*/  common; int /*<<< orphan*/ * pend_desc; struct sfxge_tx_mapping* stmp; int /*<<< orphan*/  collapses; int /*<<< orphan*/  blocked; } ;
struct TYPE_7__ {struct mbuf* mbuf; } ;
struct sfxge_tx_mapping {int flags; TYPE_2__ u; scalar_t__ map; } ;
struct TYPE_6__ {int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_data; } ;
typedef  int /*<<< orphan*/  efx_desc_t ;
typedef  scalar_t__ bus_dmamap_t ;
struct TYPE_8__ {int /*<<< orphan*/  ds_len; int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_3__ bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int CSUM_TSO ; 
 int EFBIG ; 
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 scalar_t__ SFXGE_TXQ_STARTED ; 
 int SFXGE_TX_MAPPING_MAX_SEG ; 
 int TX_BUF_MBUF ; 
 int TX_BUF_UNMAP ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,struct mbuf*,TYPE_3__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct mbuf* FUNC6 (struct mbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sfxge_txq*,struct sfxge_tx_mapping**) ; 
 scalar_t__ FUNC10 (struct sfxge_txq*,struct mbuf*,struct sfxge_tx_mapping**) ; 
 int FUNC11 (struct sfxge_txq*,struct mbuf*,struct sfxge_tx_mapping**) ; 
 int /*<<< orphan*/  FUNC12 (struct sfxge_txq*) ; 
 int FUNC13 (struct sfxge_txq*,struct mbuf*,TYPE_3__*,int,int) ; 

__attribute__((used)) static int FUNC14(struct sfxge_txq *txq, struct mbuf *mbuf)
{
	bus_dmamap_t *used_map;
	bus_dmamap_t map;
	bus_dma_segment_t dma_seg[SFXGE_TX_MAPPING_MAX_SEG];
	unsigned int id;
	struct sfxge_tx_mapping *stmp;
	efx_desc_t *desc;
	int n_dma_seg;
	int rc;
	int i;
	int eop;
	uint16_t hw_cksum_flags_prev;
	uint16_t hw_vlan_tci_prev;
	int n_extra_descs;

	FUNC0(!txq->blocked, ("txq->blocked"));

#if SFXGE_TX_PARSE_EARLY
	/*
	 * If software TSO is used, we still need to copy packet header,
	 * even if we have already parsed it early before enqueue.
	 */
	if ((mbuf->m_pkthdr.csum_flags & CSUM_TSO) &&
	    (txq->tso_fw_assisted == 0))
		prefetch_read_many(mbuf->m_data);
#else
	/*
	 * Prefetch packet header since we need to parse it and extract
	 * IP ID, TCP sequence number and flags.
	 */
	if (mbuf->m_pkthdr.csum_flags & CSUM_TSO)
		FUNC8(mbuf->m_data);
#endif

	if (FUNC1(txq->init_state != SFXGE_TXQ_STARTED)) {
		rc = EINTR;
		goto reject;
	}

	/* Load the packet for DMA. */
	id = txq->added & txq->ptr_mask;
	stmp = &txq->stmp[id];
	rc = FUNC2(txq->packet_dma_tag, stmp->map,
				     mbuf, dma_seg, &n_dma_seg, 0);
	if (rc == EFBIG) {
		/* Try again. */
		struct mbuf *new_mbuf = FUNC6(mbuf, M_NOWAIT,
						   SFXGE_TX_MAPPING_MAX_SEG);
		if (new_mbuf == NULL)
			goto reject;
		++txq->collapses;
		mbuf = new_mbuf;
		rc = FUNC2(txq->packet_dma_tag,
					     stmp->map, mbuf,
					     dma_seg, &n_dma_seg, 0);
	}
	if (rc != 0)
		goto reject;

	/* Make the packet visible to the hardware. */
	FUNC3(txq->packet_dma_tag, stmp->map, BUS_DMASYNC_PREWRITE);

	used_map = &stmp->map;

	hw_cksum_flags_prev = txq->hw_cksum_flags;
	hw_vlan_tci_prev = txq->hw_vlan_tci;

	/*
	 * The order of option descriptors, which are used to leverage VLAN tag
	 * and checksum offloads, might be important. Changing checksum offload
	 * between VLAN option and packet descriptors probably does not work.
	 */
	n_extra_descs = FUNC11(txq, mbuf, &stmp);
	n_extra_descs += FUNC10(txq, mbuf, &stmp);

	if (mbuf->m_pkthdr.csum_flags & CSUM_TSO) {
		rc = FUNC13(txq, mbuf, dma_seg, n_dma_seg,
					n_extra_descs);
		if (rc < 0)
			goto reject_mapped;
		stmp = &txq->stmp[(rc - 1) & txq->ptr_mask];
	} else {
		/* Add the mapping to the fragment list, and set flags
		 * for the buffer.
		 */

		i = 0;
		for (;;) {
			desc = &txq->pend_desc[i + n_extra_descs];
			eop = (i == n_dma_seg - 1);
			FUNC5(txq->common,
						dma_seg[i].ds_addr,
						dma_seg[i].ds_len,
						eop,
						desc);
			if (eop)
				break;
			i++;
			FUNC9(txq, &stmp);
		}
		txq->n_pend_desc = n_dma_seg + n_extra_descs;
	}

	/*
	 * If the mapping required more than one descriptor
	 * then we need to associate the DMA map with the last
	 * descriptor, not the first.
	 */
	if (used_map != &stmp->map) {
		map = stmp->map;
		stmp->map = *used_map;
		*used_map = map;
	}

	stmp->u.mbuf = mbuf;
	stmp->flags = TX_BUF_UNMAP | TX_BUF_MBUF;

	/* Post the fragment list. */
	FUNC12(txq);

	return (0);

reject_mapped:
	txq->hw_vlan_tci = hw_vlan_tci_prev;
	txq->hw_cksum_flags = hw_cksum_flags_prev;
	FUNC4(txq->packet_dma_tag, *used_map);
reject:
	/* Drop the packet on the floor. */
	FUNC7(mbuf);
	++txq->drops;

	return (rc);
}