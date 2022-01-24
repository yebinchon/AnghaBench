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
struct hn_txdesc {scalar_t__ chim_index; int /*<<< orphan*/  flags; int /*<<< orphan*/  data_dmap; } ;
struct hn_tx_ring {int /*<<< orphan*/  hn_tx_data_dtag; int /*<<< orphan*/  hn_tx_collapsed; } ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int EFBIG ; 
 int ENOBUFS ; 
 scalar_t__ HN_NVS_CHIM_IDX_INVALID ; 
 int /*<<< orphan*/  HN_TXD_FLAG_DMAMAP ; 
 int /*<<< orphan*/  HN_TX_DATA_SEGCNT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC3 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline int
FUNC4(struct hn_tx_ring *txr, struct hn_txdesc *txd,
    struct mbuf **m_head, bus_dma_segment_t *segs, int *nsegs)
{
	struct mbuf *m = *m_head;
	int error;

	FUNC0(txd->chim_index == HN_NVS_CHIM_IDX_INVALID, ("txd uses chim"));

	error = FUNC1(txr->hn_tx_data_dtag, txd->data_dmap,
	    m, segs, nsegs, BUS_DMA_NOWAIT);
	if (error == EFBIG) {
		struct mbuf *m_new;

		m_new = FUNC3(m, M_NOWAIT, HN_TX_DATA_SEGCNT_MAX);
		if (m_new == NULL)
			return ENOBUFS;
		else
			*m_head = m = m_new;
		txr->hn_tx_collapsed++;

		error = FUNC1(txr->hn_tx_data_dtag,
		    txd->data_dmap, m, segs, nsegs, BUS_DMA_NOWAIT);
	}
	if (!error) {
		FUNC2(txr->hn_tx_data_dtag, txd->data_dmap,
		    BUS_DMASYNC_PREWRITE);
		txd->flags |= HN_TXD_FLAG_DMAMAP;
	}
	return error;
}