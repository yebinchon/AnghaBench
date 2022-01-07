
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bxe_softc {int num_queues; int * parent_dma_tag; int * def_sb; int def_sb_dma; int * eq; int eq_dma; int * sp; int sp_dma; int * spq; int spq_dma; int * gz_strm; int * gz_buf; int gz_buf_dma; struct bxe_fastpath* fp; } ;
struct bxe_fastpath {int * rx_sge_mbuf_tag; int * rx_sge_mbuf_spare_map; TYPE_5__* rx_sge_mbuf_chain; int * rx_mbuf_tag; int * rx_tpa_info_mbuf_spare_map; TYPE_4__* rx_tpa_info; int * rx_mbuf_spare_map; TYPE_2__* rx_mbuf_chain; int * tx_mbuf_tag; TYPE_1__* tx_mbuf_chain; int * rx_sge_chain; int rx_sge_dma; int * rcq_chain; int rcq_dma; int * rx_chain; int rx_dma; int * tx_chain; int tx_dma; int status_block; int sb_dma; } ;
struct TYPE_10__ {int * m_map; } ;
struct TYPE_8__ {int * m_map; } ;
struct TYPE_9__ {TYPE_3__ bd; } ;
struct TYPE_7__ {int * m_map; } ;
struct TYPE_6__ {int * m_map; } ;


 int MAX_AGG_QS (struct bxe_softc*) ;
 int M_DEVBUF ;
 int RX_BD_TOTAL ;
 int RX_SGE_TOTAL ;
 int TX_BD_TOTAL ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int *) ;
 int bxe_dma_free (struct bxe_softc*,int *) ;
 int free (int *,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
bxe_free_hsi_mem(struct bxe_softc *sc)
{
    struct bxe_fastpath *fp;
    int max_agg_queues;
    int i, j;

    if (sc->parent_dma_tag == ((void*)0)) {
        return;
    }

    for (i = 0; i < sc->num_queues; i++) {
        fp = &sc->fp[i];





        bxe_dma_free(sc, &fp->sb_dma);
        memset(&fp->status_block, 0, sizeof(fp->status_block));





        bxe_dma_free(sc, &fp->tx_dma);
        fp->tx_chain = ((void*)0);





        bxe_dma_free(sc, &fp->rx_dma);
        fp->rx_chain = ((void*)0);





        bxe_dma_free(sc, &fp->rcq_dma);
        fp->rcq_chain = ((void*)0);





        bxe_dma_free(sc, &fp->rx_sge_dma);
        fp->rx_sge_chain = ((void*)0);





        if (fp->tx_mbuf_tag != ((void*)0)) {
            for (j = 0; j < TX_BD_TOTAL; j++) {
                if (fp->tx_mbuf_chain[j].m_map != ((void*)0)) {
                    bus_dmamap_unload(fp->tx_mbuf_tag,
                                      fp->tx_mbuf_chain[j].m_map);
                    bus_dmamap_destroy(fp->tx_mbuf_tag,
                                       fp->tx_mbuf_chain[j].m_map);
                }
            }

            bus_dma_tag_destroy(fp->tx_mbuf_tag);
            fp->tx_mbuf_tag = ((void*)0);
        }





        if (fp->rx_mbuf_tag != ((void*)0)) {
            for (j = 0; j < RX_BD_TOTAL; j++) {
                if (fp->rx_mbuf_chain[j].m_map != ((void*)0)) {
                    bus_dmamap_unload(fp->rx_mbuf_tag,
                                      fp->rx_mbuf_chain[j].m_map);
                    bus_dmamap_destroy(fp->rx_mbuf_tag,
                                       fp->rx_mbuf_chain[j].m_map);
                }
            }

            if (fp->rx_mbuf_spare_map != ((void*)0)) {
                bus_dmamap_unload(fp->rx_mbuf_tag, fp->rx_mbuf_spare_map);
                bus_dmamap_destroy(fp->rx_mbuf_tag, fp->rx_mbuf_spare_map);
            }





            max_agg_queues = MAX_AGG_QS(sc);

            for (j = 0; j < max_agg_queues; j++) {
                if (fp->rx_tpa_info[j].bd.m_map != ((void*)0)) {
                    bus_dmamap_unload(fp->rx_mbuf_tag,
                                      fp->rx_tpa_info[j].bd.m_map);
                    bus_dmamap_destroy(fp->rx_mbuf_tag,
                                       fp->rx_tpa_info[j].bd.m_map);
                }
            }

            if (fp->rx_tpa_info_mbuf_spare_map != ((void*)0)) {
                bus_dmamap_unload(fp->rx_mbuf_tag,
                                  fp->rx_tpa_info_mbuf_spare_map);
                bus_dmamap_destroy(fp->rx_mbuf_tag,
                                   fp->rx_tpa_info_mbuf_spare_map);
            }

            bus_dma_tag_destroy(fp->rx_mbuf_tag);
            fp->rx_mbuf_tag = ((void*)0);
        }





        if (fp->rx_sge_mbuf_tag != ((void*)0)) {
            for (j = 0; j < RX_SGE_TOTAL; j++) {
                if (fp->rx_sge_mbuf_chain[j].m_map != ((void*)0)) {
                    bus_dmamap_unload(fp->rx_sge_mbuf_tag,
                                      fp->rx_sge_mbuf_chain[j].m_map);
                    bus_dmamap_destroy(fp->rx_sge_mbuf_tag,
                                       fp->rx_sge_mbuf_chain[j].m_map);
                }
            }

            if (fp->rx_sge_mbuf_spare_map != ((void*)0)) {
                bus_dmamap_unload(fp->rx_sge_mbuf_tag,
                                  fp->rx_sge_mbuf_spare_map);
                bus_dmamap_destroy(fp->rx_sge_mbuf_tag,
                                   fp->rx_sge_mbuf_spare_map);
            }

            bus_dma_tag_destroy(fp->rx_sge_mbuf_tag);
            fp->rx_sge_mbuf_tag = ((void*)0);
        }
    }





    bxe_dma_free(sc, &sc->gz_buf_dma);
    sc->gz_buf = ((void*)0);
    free(sc->gz_strm, M_DEVBUF);
    sc->gz_strm = ((void*)0);





    bxe_dma_free(sc, &sc->spq_dma);
    sc->spq = ((void*)0);





    bxe_dma_free(sc, &sc->sp_dma);
    sc->sp = ((void*)0);





    bxe_dma_free(sc, &sc->eq_dma);
    sc->eq = ((void*)0);





    bxe_dma_free(sc, &sc->def_sb_dma);
    sc->def_sb = ((void*)0);

    bus_dma_tag_destroy(sc->parent_dma_tag);
    sc->parent_dma_tag = ((void*)0);
}
