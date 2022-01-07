
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef union event_ring_elem {int dummy; } event_ring_elem ;
struct eth_tx_next_bd {void* addr_lo; void* addr_hi; } ;
union eth_tx_bd_types {struct eth_tx_next_bd next_bd; } ;
typedef union eth_rx_cqe {int dummy; } eth_rx_cqe ;
typedef union bxe_host_hc_status_block {int dummy; } bxe_host_hc_status_block ;
struct host_sp_status_block {int dummy; } ;
struct host_hc_status_block_e2 {int dummy; } ;
struct host_hc_status_block_e1x {int dummy; } ;
struct eth_spe {int dummy; } ;
struct eth_rx_sge {void* addr_lo; void* addr_hi; } ;
struct eth_rx_cqe_next_page {void* addr_lo; void* addr_hi; } ;
struct eth_rx_bd {void* addr_lo; void* addr_hi; } ;
struct TYPE_15__ {scalar_t__ paddr; scalar_t__ vaddr; } ;
struct bxe_softc {int num_queues; int parent_dma_tag; int ifp; struct bxe_fastpath* fp; struct host_sp_status_block* def_sb; TYPE_7__ def_sb_dma; union event_ring_elem* eq; TYPE_7__ eq_dma; struct bxe_slowpath* sp; TYPE_7__ sp_dma; struct eth_spe* spq; TYPE_7__ spq_dma; int * gz_buf; TYPE_7__ gz_buf_dma; int * gz_strm; int dev; } ;
struct bxe_slowpath {int dummy; } ;
struct TYPE_9__ {struct host_hc_status_block_e1x* e1x_sb; struct host_hc_status_block_e2* e2_sb; } ;
struct bxe_fastpath {int index; int rx_tpa_info_mbuf_spare_map; int rx_mbuf_tag; TYPE_6__* rx_tpa_info; int rx_sge_mbuf_spare_map; int rx_sge_mbuf_tag; TYPE_4__* rx_sge_mbuf_chain; int rx_mbuf_spare_map; TYPE_3__* rx_mbuf_chain; TYPE_2__* tx_mbuf_chain; int tx_mbuf_tag; TYPE_7__ rx_sge_dma; struct eth_rx_sge* rx_sge_chain; TYPE_7__ rcq_dma; union eth_rx_cqe* rcq_chain; TYPE_7__ rx_dma; struct eth_rx_bd* rx_chain; TYPE_7__ tx_dma; union eth_tx_bd_types* tx_chain; TYPE_7__ sb_dma; TYPE_1__ status_block; struct bxe_softc* sc; } ;
typedef int bus_size_t ;
typedef scalar_t__ bus_addr_t ;
typedef int buf ;
struct TYPE_13__ {int m_map; } ;
struct TYPE_14__ {TYPE_5__ bd; } ;
struct TYPE_12__ {int m_map; } ;
struct TYPE_11__ {int m_map; } ;
struct TYPE_10__ {int m_map; } ;


 int BCM_PAGE_SIZE ;
 int BLOGE (struct bxe_softc*,char*,...) ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int BUS_SPACE_UNRESTRICTED ;
 int BXE_MAX_SEGMENTS ;
 int BXE_TSO_MAX_SEGMENTS ;
 int BXE_TSO_MAX_SEG_SIZE ;
 int BXE_TSO_MAX_SIZE ;
 scalar_t__ CHIP_IS_E2E3 (struct bxe_softc*) ;
 int FW_BUF_SIZE ;
 int IFCAP_TSO4 ;
 int IFCAP_TSO6 ;
 int MAX_AGG_QS (struct bxe_softc*) ;
 int MCLBYTES ;
 int MJUM9BYTES ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int RCQ_NUM_PAGES ;
 int RCQ_TOTAL_PER_PAGE ;
 int RX_BD_NUM_PAGES ;
 int RX_BD_TOTAL ;
 int RX_BD_TOTAL_PER_PAGE ;
 int RX_SGE_NUM_PAGES ;
 int RX_SGE_TOTAL ;
 int RX_SGE_TOTAL_PER_PAGE ;
 int TX_BD_NUM_PAGES ;
 int TX_BD_TOTAL ;
 int TX_BD_TOTAL_PER_PAGE ;
 int U64_HI (scalar_t__) ;
 int U64_LO (scalar_t__) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 scalar_t__ bus_dmamap_create (int ,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 scalar_t__ bxe_dma_alloc (struct bxe_softc*,int,TYPE_7__*,char*) ;
 int bxe_dma_free (struct bxe_softc*,TYPE_7__*) ;
 int bxe_init_sge_ring_bit_mask (struct bxe_fastpath*) ;
 void* htole32 (int ) ;
 int if_getcapenable (int ) ;
 int * malloc (int,int ,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
bxe_alloc_hsi_mem(struct bxe_softc *sc)
{
    struct bxe_fastpath *fp;
    bus_addr_t busaddr;
    int max_agg_queues;
    int max_segments;
    bus_size_t max_size;
    bus_size_t max_seg_size;
    char buf[32];
    int rc;
    int i, j;




    rc = bus_dma_tag_create(bus_get_dma_tag(sc->dev),
                            1,
                            0,
                            BUS_SPACE_MAXADDR,
                            BUS_SPACE_MAXADDR,
                            ((void*)0),
                            ((void*)0),
                            BUS_SPACE_MAXSIZE_32BIT,
                            BUS_SPACE_UNRESTRICTED,
                            BUS_SPACE_MAXSIZE_32BIT,
                            0,
                            ((void*)0),
                            ((void*)0),
                            &sc->parent_dma_tag);
    if (rc != 0) {
        BLOGE(sc, "Failed to alloc parent DMA tag (%d)!\n", rc);
        return (1);
    }





    if (bxe_dma_alloc(sc, sizeof(struct host_sp_status_block),
                      &sc->def_sb_dma, "default status block") != 0) {

        bus_dma_tag_destroy(sc->parent_dma_tag);
        return (1);
    }

    sc->def_sb = (struct host_sp_status_block *)sc->def_sb_dma.vaddr;





    if (bxe_dma_alloc(sc, BCM_PAGE_SIZE,
                      &sc->eq_dma, "event queue") != 0) {

        bxe_dma_free(sc, &sc->def_sb_dma);
        sc->def_sb = ((void*)0);
        bus_dma_tag_destroy(sc->parent_dma_tag);
        return (1);
    }

    sc->eq = (union event_ring_elem * )sc->eq_dma.vaddr;





    if (bxe_dma_alloc(sc, sizeof(struct bxe_slowpath),
                      &sc->sp_dma, "slow path") != 0) {

        bxe_dma_free(sc, &sc->eq_dma);
        sc->eq = ((void*)0);
        bxe_dma_free(sc, &sc->def_sb_dma);
        sc->def_sb = ((void*)0);
        bus_dma_tag_destroy(sc->parent_dma_tag);
        return (1);
    }

    sc->sp = (struct bxe_slowpath *)sc->sp_dma.vaddr;





    if (bxe_dma_alloc(sc, BCM_PAGE_SIZE,
                      &sc->spq_dma, "slow path queue") != 0) {

        bxe_dma_free(sc, &sc->sp_dma);
        sc->sp = ((void*)0);
        bxe_dma_free(sc, &sc->eq_dma);
        sc->eq = ((void*)0);
        bxe_dma_free(sc, &sc->def_sb_dma);
        sc->def_sb = ((void*)0);
        bus_dma_tag_destroy(sc->parent_dma_tag);
        return (1);
    }

    sc->spq = (struct eth_spe *)sc->spq_dma.vaddr;





    if (bxe_dma_alloc(sc, FW_BUF_SIZE, &sc->gz_buf_dma,
                      "fw decompression buffer") != 0) {

        bxe_dma_free(sc, &sc->spq_dma);
        sc->spq = ((void*)0);
        bxe_dma_free(sc, &sc->sp_dma);
        sc->sp = ((void*)0);
        bxe_dma_free(sc, &sc->eq_dma);
        sc->eq = ((void*)0);
        bxe_dma_free(sc, &sc->def_sb_dma);
        sc->def_sb = ((void*)0);
        bus_dma_tag_destroy(sc->parent_dma_tag);
        return (1);
    }

    sc->gz_buf = (void *)sc->gz_buf_dma.vaddr;

    if ((sc->gz_strm =
         malloc(sizeof(*sc->gz_strm), M_DEVBUF, M_NOWAIT)) == ((void*)0)) {

        bxe_dma_free(sc, &sc->gz_buf_dma);
        sc->gz_buf = ((void*)0);
        bxe_dma_free(sc, &sc->spq_dma);
        sc->spq = ((void*)0);
        bxe_dma_free(sc, &sc->sp_dma);
        sc->sp = ((void*)0);
        bxe_dma_free(sc, &sc->eq_dma);
        sc->eq = ((void*)0);
        bxe_dma_free(sc, &sc->def_sb_dma);
        sc->def_sb = ((void*)0);
        bus_dma_tag_destroy(sc->parent_dma_tag);
        return (1);
    }






    for (i = 0; i < sc->num_queues; i++) {
        fp = &sc->fp[i];
        fp->sc = sc;
        fp->index = i;





        snprintf(buf, sizeof(buf), "fp %d status block", i);
        if (bxe_dma_alloc(sc, sizeof(union bxe_host_hc_status_block),
                          &fp->sb_dma, buf) != 0) {

            BLOGE(sc, "Failed to alloc %s\n", buf);
            return (1);
        } else {
            if (CHIP_IS_E2E3(sc)) {
                fp->status_block.e2_sb =
                    (struct host_hc_status_block_e2 *)fp->sb_dma.vaddr;
            } else {
                fp->status_block.e1x_sb =
                    (struct host_hc_status_block_e1x *)fp->sb_dma.vaddr;
            }
        }





        snprintf(buf, sizeof(buf), "fp %d tx bd chain", i);
        if (bxe_dma_alloc(sc, (BCM_PAGE_SIZE * TX_BD_NUM_PAGES),
                          &fp->tx_dma, buf) != 0) {

            BLOGE(sc, "Failed to alloc %s\n", buf);
            return (1);
        } else {
            fp->tx_chain = (union eth_tx_bd_types *)fp->tx_dma.vaddr;
        }


        for (j = 1; j <= TX_BD_NUM_PAGES; j++) {

            struct eth_tx_next_bd *tx_next_bd =
                &fp->tx_chain[TX_BD_TOTAL_PER_PAGE * j - 1].next_bd;

            busaddr = (fp->tx_dma.paddr +
                       (BCM_PAGE_SIZE * (j % TX_BD_NUM_PAGES)));
            tx_next_bd->addr_hi = htole32(U64_HI(busaddr));
            tx_next_bd->addr_lo = htole32(U64_LO(busaddr));
        }





        snprintf(buf, sizeof(buf), "fp %d rx bd chain", i);
        if (bxe_dma_alloc(sc, (BCM_PAGE_SIZE * RX_BD_NUM_PAGES),
                          &fp->rx_dma, buf) != 0) {

            BLOGE(sc, "Failed to alloc %s\n", buf);
            return (1);
        } else {
            fp->rx_chain = (struct eth_rx_bd *)fp->rx_dma.vaddr;
        }


        for (j = 1; j <= RX_BD_NUM_PAGES; j++) {

            struct eth_rx_bd *rx_bd =
                &fp->rx_chain[RX_BD_TOTAL_PER_PAGE * j - 2];

            busaddr = (fp->rx_dma.paddr +
                       (BCM_PAGE_SIZE * (j % RX_BD_NUM_PAGES)));
            rx_bd->addr_hi = htole32(U64_HI(busaddr));
            rx_bd->addr_lo = htole32(U64_LO(busaddr));
        }





        snprintf(buf, sizeof(buf), "fp %d rcq chain", i);
        if (bxe_dma_alloc(sc, (BCM_PAGE_SIZE * RCQ_NUM_PAGES),
                          &fp->rcq_dma, buf) != 0) {

            BLOGE(sc, "Failed to alloc %s\n", buf);
            return (1);
        } else {
            fp->rcq_chain = (union eth_rx_cqe *)fp->rcq_dma.vaddr;
        }


        for (j = 1; j <= RCQ_NUM_PAGES; j++) {

            struct eth_rx_cqe_next_page *rx_cqe_next =
                (struct eth_rx_cqe_next_page *)
                &fp->rcq_chain[RCQ_TOTAL_PER_PAGE * j - 1];

            busaddr = (fp->rcq_dma.paddr +
                       (BCM_PAGE_SIZE * (j % RCQ_NUM_PAGES)));
            rx_cqe_next->addr_hi = htole32(U64_HI(busaddr));
            rx_cqe_next->addr_lo = htole32(U64_LO(busaddr));
        }





        snprintf(buf, sizeof(buf), "fp %d sge chain", i);
        if (bxe_dma_alloc(sc, (BCM_PAGE_SIZE * RX_SGE_NUM_PAGES),
                          &fp->rx_sge_dma, buf) != 0) {

            BLOGE(sc, "Failed to alloc %s\n", buf);
            return (1);
        } else {
            fp->rx_sge_chain = (struct eth_rx_sge *)fp->rx_sge_dma.vaddr;
        }


        for (j = 1; j <= RX_SGE_NUM_PAGES; j++) {

            struct eth_rx_sge *rx_sge =
                &fp->rx_sge_chain[RX_SGE_TOTAL_PER_PAGE * j - 2];

            busaddr = (fp->rx_sge_dma.paddr +
                       (BCM_PAGE_SIZE * (j % RX_SGE_NUM_PAGES)));
            rx_sge->addr_hi = htole32(U64_HI(busaddr));
            rx_sge->addr_lo = htole32(U64_LO(busaddr));
        }






        if (if_getcapenable(sc->ifp) & (IFCAP_TSO4 | IFCAP_TSO6)) {
            max_size = BXE_TSO_MAX_SIZE;
            max_segments = BXE_TSO_MAX_SEGMENTS;
            max_seg_size = BXE_TSO_MAX_SEG_SIZE;
        } else {
            max_size = (MCLBYTES * BXE_MAX_SEGMENTS);
            max_segments = BXE_MAX_SEGMENTS;
            max_seg_size = MCLBYTES;
        }


        rc = bus_dma_tag_create(sc->parent_dma_tag,
                                1,
                                0,
                                BUS_SPACE_MAXADDR,
                                BUS_SPACE_MAXADDR,
                                ((void*)0),
                                ((void*)0),
                                max_size,
                                max_segments,
                                max_seg_size,
                                0,
                                ((void*)0),
                                ((void*)0),
                                &fp->tx_mbuf_tag);
        if (rc != 0) {

            BLOGE(sc, "Failed to create dma tag for "
                      "'fp %d tx mbufs' (%d)\n", i, rc);
            return (1);
        }


        for (j = 0; j < TX_BD_TOTAL; j++) {
            if (bus_dmamap_create(fp->tx_mbuf_tag,
                                  BUS_DMA_NOWAIT,
                                  &fp->tx_mbuf_chain[j].m_map)) {

                BLOGE(sc, "Failed to create dma map for "
                          "'fp %d tx mbuf %d' (%d)\n", i, j, rc);
                return (1);
            }
        }






        rc = bus_dma_tag_create(sc->parent_dma_tag,
                                1,
                                0,
                                BUS_SPACE_MAXADDR,
                                BUS_SPACE_MAXADDR,
                                ((void*)0),
                                ((void*)0),
                                MJUM9BYTES,
                                1,
                                MJUM9BYTES,
                                0,
                                ((void*)0),
                                ((void*)0),
                                &fp->rx_mbuf_tag);
        if (rc != 0) {

            BLOGE(sc, "Failed to create dma tag for "
                      "'fp %d rx mbufs' (%d)\n", i, rc);
            return (1);
        }


        for (j = 0; j < RX_BD_TOTAL; j++) {
            if (bus_dmamap_create(fp->rx_mbuf_tag,
                                  BUS_DMA_NOWAIT,
                                  &fp->rx_mbuf_chain[j].m_map)) {

                BLOGE(sc, "Failed to create dma map for "
                          "'fp %d rx mbuf %d' (%d)\n", i, j, rc);
                return (1);
            }
        }


        if (bus_dmamap_create(fp->rx_mbuf_tag,
                              BUS_DMA_NOWAIT,
                              &fp->rx_mbuf_spare_map)) {

            BLOGE(sc, "Failed to create dma map for "
                      "'fp %d spare rx mbuf' (%d)\n", i, rc);
            return (1);
        }






        rc = bus_dma_tag_create(sc->parent_dma_tag,
                                1,
                                0,
                                BUS_SPACE_MAXADDR,
                                BUS_SPACE_MAXADDR,
                                ((void*)0),
                                ((void*)0),
                                BCM_PAGE_SIZE,
                                1,
                                BCM_PAGE_SIZE,
                                0,
                                ((void*)0),
                                ((void*)0),
                                &fp->rx_sge_mbuf_tag);
        if (rc != 0) {

            BLOGE(sc, "Failed to create dma tag for "
                      "'fp %d rx sge mbufs' (%d)\n", i, rc);
            return (1);
        }


        for (j = 0; j < RX_SGE_TOTAL; j++) {
            if (bus_dmamap_create(fp->rx_sge_mbuf_tag,
                                  BUS_DMA_NOWAIT,
                                  &fp->rx_sge_mbuf_chain[j].m_map)) {

                BLOGE(sc, "Failed to create dma map for "
                          "'fp %d rx sge mbuf %d' (%d)\n", i, j, rc);
                return (1);
            }
        }


        if (bus_dmamap_create(fp->rx_sge_mbuf_tag,
                              BUS_DMA_NOWAIT,
                              &fp->rx_sge_mbuf_spare_map)) {

            BLOGE(sc, "Failed to create dma map for "
                      "'fp %d spare rx sge mbuf' (%d)\n", i, rc);
            return (1);
        }






        max_agg_queues = MAX_AGG_QS(sc);

        for (j = 0; j < max_agg_queues; j++) {
            if (bus_dmamap_create(fp->rx_mbuf_tag,
                                  BUS_DMA_NOWAIT,
                                  &fp->rx_tpa_info[j].bd.m_map)) {

                BLOGE(sc, "Failed to create dma map for "
                          "'fp %d rx tpa mbuf %d' (%d)\n", i, j, rc);
                return (1);
            }
        }


        if (bus_dmamap_create(fp->rx_mbuf_tag,
                              BUS_DMA_NOWAIT,
                              &fp->rx_tpa_info_mbuf_spare_map)) {

            BLOGE(sc, "Failed to create dma map for "
                      "'fp %d spare rx tpa mbuf' (%d)\n", i, rc);
            return (1);
        }

        bxe_init_sge_ring_bit_mask(fp);
    }

    return (0);
}
