#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  len; } ;
struct mbuf {int /*<<< orphan*/  m_len; TYPE_1__ m_pkthdr; } ;
struct eth_rx_bd {void* addr_lo; void* addr_hi; } ;
struct bxe_sw_rx_bd {struct mbuf* m; int /*<<< orphan*/ * m_map; } ;
struct TYPE_6__ {int /*<<< orphan*/  mbuf_alloc_rx; int /*<<< orphan*/  mbuf_rx_bd_mapping_failed; int /*<<< orphan*/  mbuf_rx_bd_alloc_failed; } ;
struct bxe_fastpath {struct eth_rx_bd* rx_chain; int /*<<< orphan*/  rx_mbuf_tag; int /*<<< orphan*/ * rx_mbuf_spare_map; struct bxe_sw_rx_bd* rx_mbuf_chain; TYPE_2__ eth_q_stats; int /*<<< orphan*/  rx_buf_size; int /*<<< orphan*/  mbuf_alloc_size; } ;
typedef  int /*<<< orphan*/ * bus_dmamap_t ;
struct TYPE_7__ {int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_3__ bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mbuf*,TYPE_3__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*) ; 
 struct mbuf* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct bxe_fastpath *fp,
                     uint16_t            prev_index,
                     uint16_t            index)
{
    struct bxe_sw_rx_bd *rx_buf;
    struct eth_rx_bd *rx_bd;
    bus_dma_segment_t segs[1];
    bus_dmamap_t map;
    struct mbuf *m;
    int nsegs, rc;

    rc = 0;

    /* allocate the new RX BD mbuf */
    m = FUNC9(M_NOWAIT, MT_DATA, M_PKTHDR, fp->mbuf_alloc_size);
    if (FUNC3(m == NULL)) {
        fp->eth_q_stats.mbuf_rx_bd_alloc_failed++;
        return (ENOBUFS);
    }

    fp->eth_q_stats.mbuf_alloc_rx++;

    /* initialize the mbuf buffer length */
    m->m_pkthdr.len = m->m_len = fp->rx_buf_size;

    /* map the mbuf into non-paged pool */
    rc = FUNC4(fp->rx_mbuf_tag,
                                 fp->rx_mbuf_spare_map,
                                 m, segs, &nsegs, BUS_DMA_NOWAIT);
    if (FUNC3(rc != 0)) {
        fp->eth_q_stats.mbuf_rx_bd_mapping_failed++;
        FUNC8(m);
        fp->eth_q_stats.mbuf_alloc_rx--;
        return (rc);
    }

    /* all mbufs must map to a single segment */
    FUNC0((nsegs == 1), ("Too many segments, %d returned!", nsegs));

    /* release any existing RX BD mbuf mappings */

    if (prev_index != index) {
        rx_buf = &fp->rx_mbuf_chain[prev_index];

        if (rx_buf->m_map != NULL) {
            FUNC5(fp->rx_mbuf_tag, rx_buf->m_map,
                            BUS_DMASYNC_POSTREAD);
            FUNC6(fp->rx_mbuf_tag, rx_buf->m_map);
        }

        /*
         * We only get here from bxe_rxeof() when the maximum number
         * of rx buffers is less than RX_BD_USABLE. bxe_rxeof() already
         * holds the mbuf in the prev_index so it's OK to NULL it out
         * here without concern of a memory leak.
         */
        fp->rx_mbuf_chain[prev_index].m = NULL;
    }

    rx_buf = &fp->rx_mbuf_chain[index];

    if (rx_buf->m_map != NULL) {
        FUNC5(fp->rx_mbuf_tag, rx_buf->m_map,
                        BUS_DMASYNC_POSTREAD);
        FUNC6(fp->rx_mbuf_tag, rx_buf->m_map);
    }

    /* save the mbuf and mapping info for a future packet */
    map = (prev_index != index) ?
              fp->rx_mbuf_chain[prev_index].m_map : rx_buf->m_map;
    rx_buf->m_map = fp->rx_mbuf_spare_map;
    fp->rx_mbuf_spare_map = map;
    FUNC5(fp->rx_mbuf_tag, rx_buf->m_map,
                    BUS_DMASYNC_PREREAD);
    rx_buf->m = m;

    rx_bd = &fp->rx_chain[index];
    rx_bd->addr_hi = FUNC7(FUNC1(segs[0].ds_addr));
    rx_bd->addr_lo = FUNC7(FUNC2(segs[0].ds_addr));

    return (rc);
}