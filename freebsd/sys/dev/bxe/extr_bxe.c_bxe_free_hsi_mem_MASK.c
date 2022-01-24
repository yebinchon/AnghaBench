#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct bxe_softc {int num_queues; int /*<<< orphan*/ * parent_dma_tag; int /*<<< orphan*/ * def_sb; int /*<<< orphan*/  def_sb_dma; int /*<<< orphan*/ * eq; int /*<<< orphan*/  eq_dma; int /*<<< orphan*/ * sp; int /*<<< orphan*/  sp_dma; int /*<<< orphan*/ * spq; int /*<<< orphan*/  spq_dma; int /*<<< orphan*/ * gz_strm; int /*<<< orphan*/ * gz_buf; int /*<<< orphan*/  gz_buf_dma; struct bxe_fastpath* fp; } ;
struct bxe_fastpath {int /*<<< orphan*/ * rx_sge_mbuf_tag; int /*<<< orphan*/ * rx_sge_mbuf_spare_map; TYPE_5__* rx_sge_mbuf_chain; int /*<<< orphan*/ * rx_mbuf_tag; int /*<<< orphan*/ * rx_tpa_info_mbuf_spare_map; TYPE_4__* rx_tpa_info; int /*<<< orphan*/ * rx_mbuf_spare_map; TYPE_2__* rx_mbuf_chain; int /*<<< orphan*/ * tx_mbuf_tag; TYPE_1__* tx_mbuf_chain; int /*<<< orphan*/ * rx_sge_chain; int /*<<< orphan*/  rx_sge_dma; int /*<<< orphan*/ * rcq_chain; int /*<<< orphan*/  rcq_dma; int /*<<< orphan*/ * rx_chain; int /*<<< orphan*/  rx_dma; int /*<<< orphan*/ * tx_chain; int /*<<< orphan*/  tx_dma; int /*<<< orphan*/  status_block; int /*<<< orphan*/  sb_dma; } ;
struct TYPE_10__ {int /*<<< orphan*/ * m_map; } ;
struct TYPE_8__ {int /*<<< orphan*/ * m_map; } ;
struct TYPE_9__ {TYPE_3__ bd; } ;
struct TYPE_7__ {int /*<<< orphan*/ * m_map; } ;
struct TYPE_6__ {int /*<<< orphan*/ * m_map; } ;

/* Variables and functions */
 int FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int RX_BD_TOTAL ; 
 int RX_SGE_TOTAL ; 
 int TX_BD_TOTAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct bxe_softc *sc)
{
    struct bxe_fastpath *fp;
    int max_agg_queues;
    int i, j;

    if (sc->parent_dma_tag == NULL) {
        return; /* assume nothing was allocated */
    }

    for (i = 0; i < sc->num_queues; i++) {
        fp = &sc->fp[i];

        /*******************/
        /* FP STATUS BLOCK */
        /*******************/

        FUNC4(sc, &fp->sb_dma);
        FUNC6(&fp->status_block, 0, sizeof(fp->status_block));

        /******************/
        /* FP TX BD CHAIN */
        /******************/

        FUNC4(sc, &fp->tx_dma);
        fp->tx_chain = NULL;

        /******************/
        /* FP RX BD CHAIN */
        /******************/

        FUNC4(sc, &fp->rx_dma);
        fp->rx_chain = NULL;

        /*******************/
        /* FP RX RCQ CHAIN */
        /*******************/

        FUNC4(sc, &fp->rcq_dma);
        fp->rcq_chain = NULL;

        /*******************/
        /* FP RX SGE CHAIN */
        /*******************/

        FUNC4(sc, &fp->rx_sge_dma);
        fp->rx_sge_chain = NULL;

        /***********************/
        /* FP TX MBUF DMA MAPS */
        /***********************/

        if (fp->tx_mbuf_tag != NULL) {
            for (j = 0; j < TX_BD_TOTAL; j++) {
                if (fp->tx_mbuf_chain[j].m_map != NULL) {
                    FUNC3(fp->tx_mbuf_tag,
                                      fp->tx_mbuf_chain[j].m_map);
                    FUNC2(fp->tx_mbuf_tag,
                                       fp->tx_mbuf_chain[j].m_map);
                }
            }

            FUNC1(fp->tx_mbuf_tag);
            fp->tx_mbuf_tag = NULL;
        }

        /***********************/
        /* FP RX MBUF DMA MAPS */
        /***********************/

        if (fp->rx_mbuf_tag != NULL) {
            for (j = 0; j < RX_BD_TOTAL; j++) {
                if (fp->rx_mbuf_chain[j].m_map != NULL) {
                    FUNC3(fp->rx_mbuf_tag,
                                      fp->rx_mbuf_chain[j].m_map);
                    FUNC2(fp->rx_mbuf_tag,
                                       fp->rx_mbuf_chain[j].m_map);
                }
            }

            if (fp->rx_mbuf_spare_map != NULL) {
                FUNC3(fp->rx_mbuf_tag, fp->rx_mbuf_spare_map);
                FUNC2(fp->rx_mbuf_tag, fp->rx_mbuf_spare_map);
            }

            /***************************/
            /* FP RX TPA MBUF DMA MAPS */
            /***************************/

            max_agg_queues = FUNC0(sc);

            for (j = 0; j < max_agg_queues; j++) {
                if (fp->rx_tpa_info[j].bd.m_map != NULL) {
                    FUNC3(fp->rx_mbuf_tag,
                                      fp->rx_tpa_info[j].bd.m_map);
                    FUNC2(fp->rx_mbuf_tag,
                                       fp->rx_tpa_info[j].bd.m_map);
                }
            }

            if (fp->rx_tpa_info_mbuf_spare_map != NULL) {
                FUNC3(fp->rx_mbuf_tag,
                                  fp->rx_tpa_info_mbuf_spare_map);
                FUNC2(fp->rx_mbuf_tag,
                                   fp->rx_tpa_info_mbuf_spare_map);
            }

            FUNC1(fp->rx_mbuf_tag);
            fp->rx_mbuf_tag = NULL;
        }

        /***************************/
        /* FP RX SGE MBUF DMA MAPS */
        /***************************/

        if (fp->rx_sge_mbuf_tag != NULL) {
            for (j = 0; j < RX_SGE_TOTAL; j++) {
                if (fp->rx_sge_mbuf_chain[j].m_map != NULL) {
                    FUNC3(fp->rx_sge_mbuf_tag,
                                      fp->rx_sge_mbuf_chain[j].m_map);
                    FUNC2(fp->rx_sge_mbuf_tag,
                                       fp->rx_sge_mbuf_chain[j].m_map);
                }
            }

            if (fp->rx_sge_mbuf_spare_map != NULL) {
                FUNC3(fp->rx_sge_mbuf_tag,
                                  fp->rx_sge_mbuf_spare_map);
                FUNC2(fp->rx_sge_mbuf_tag,
                                   fp->rx_sge_mbuf_spare_map);
            }

            FUNC1(fp->rx_sge_mbuf_tag);
            fp->rx_sge_mbuf_tag = NULL;
        }
    }

    /***************************/
    /* FW DECOMPRESSION BUFFER */
    /***************************/

    FUNC4(sc, &sc->gz_buf_dma);
    sc->gz_buf = NULL;
    FUNC5(sc->gz_strm, M_DEVBUF);
    sc->gz_strm = NULL;

    /*******************/
    /* SLOW PATH QUEUE */
    /*******************/

    FUNC4(sc, &sc->spq_dma);
    sc->spq = NULL;

    /*************/
    /* SLOW PATH */
    /*************/

    FUNC4(sc, &sc->sp_dma);
    sc->sp = NULL;

    /***************/
    /* EVENT QUEUE */
    /***************/

    FUNC4(sc, &sc->eq_dma);
    sc->eq = NULL;

    /************************/
    /* DEFAULT STATUS BLOCK */
    /************************/

    FUNC4(sc, &sc->def_sb_dma);
    sc->def_sb = NULL;

    FUNC1(sc->parent_dma_tag);
    sc->parent_dma_tag = NULL;
}