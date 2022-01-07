
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_5__ {int len; } ;
struct mbuf {int m_len; TYPE_1__ m_pkthdr; } ;
struct eth_rx_bd {void* addr_lo; void* addr_hi; } ;
struct bxe_sw_rx_bd {struct mbuf* m; int * m_map; } ;
struct TYPE_6__ {int mbuf_alloc_rx; int mbuf_rx_bd_mapping_failed; int mbuf_rx_bd_alloc_failed; } ;
struct bxe_fastpath {struct eth_rx_bd* rx_chain; int rx_mbuf_tag; int * rx_mbuf_spare_map; struct bxe_sw_rx_bd* rx_mbuf_chain; TYPE_2__ eth_q_stats; int rx_buf_size; int mbuf_alloc_size; } ;
typedef int * bus_dmamap_t ;
struct TYPE_7__ {int ds_addr; } ;
typedef TYPE_3__ bus_dma_segment_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMA_NOWAIT ;
 int ENOBUFS ;
 int KASSERT (int,char*) ;
 int MT_DATA ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 scalar_t__ __predict_false (int) ;
 int bus_dmamap_load_mbuf_sg (int ,int *,struct mbuf*,TYPE_3__*,int*,int ) ;
 int bus_dmamap_sync (int ,int *,int ) ;
 int bus_dmamap_unload (int ,int *) ;
 void* htole32 (int ) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_getjcl (int ,int ,int ,int ) ;

__attribute__((used)) static int
bxe_alloc_rx_bd_mbuf(struct bxe_fastpath *fp,
                     uint16_t prev_index,
                     uint16_t index)
{
    struct bxe_sw_rx_bd *rx_buf;
    struct eth_rx_bd *rx_bd;
    bus_dma_segment_t segs[1];
    bus_dmamap_t map;
    struct mbuf *m;
    int nsegs, rc;

    rc = 0;


    m = m_getjcl(M_NOWAIT, MT_DATA, M_PKTHDR, fp->mbuf_alloc_size);
    if (__predict_false(m == ((void*)0))) {
        fp->eth_q_stats.mbuf_rx_bd_alloc_failed++;
        return (ENOBUFS);
    }

    fp->eth_q_stats.mbuf_alloc_rx++;


    m->m_pkthdr.len = m->m_len = fp->rx_buf_size;


    rc = bus_dmamap_load_mbuf_sg(fp->rx_mbuf_tag,
                                 fp->rx_mbuf_spare_map,
                                 m, segs, &nsegs, BUS_DMA_NOWAIT);
    if (__predict_false(rc != 0)) {
        fp->eth_q_stats.mbuf_rx_bd_mapping_failed++;
        m_freem(m);
        fp->eth_q_stats.mbuf_alloc_rx--;
        return (rc);
    }


    KASSERT((nsegs == 1), ("Too many segments, %d returned!", nsegs));



    if (prev_index != index) {
        rx_buf = &fp->rx_mbuf_chain[prev_index];

        if (rx_buf->m_map != ((void*)0)) {
            bus_dmamap_sync(fp->rx_mbuf_tag, rx_buf->m_map,
                            BUS_DMASYNC_POSTREAD);
            bus_dmamap_unload(fp->rx_mbuf_tag, rx_buf->m_map);
        }







        fp->rx_mbuf_chain[prev_index].m = ((void*)0);
    }

    rx_buf = &fp->rx_mbuf_chain[index];

    if (rx_buf->m_map != ((void*)0)) {
        bus_dmamap_sync(fp->rx_mbuf_tag, rx_buf->m_map,
                        BUS_DMASYNC_POSTREAD);
        bus_dmamap_unload(fp->rx_mbuf_tag, rx_buf->m_map);
    }


    map = (prev_index != index) ?
              fp->rx_mbuf_chain[prev_index].m_map : rx_buf->m_map;
    rx_buf->m_map = fp->rx_mbuf_spare_map;
    fp->rx_mbuf_spare_map = map;
    bus_dmamap_sync(fp->rx_mbuf_tag, rx_buf->m_map,
                    BUS_DMASYNC_PREREAD);
    rx_buf->m = m;

    rx_bd = &fp->rx_chain[index];
    rx_bd->addr_hi = htole32(U64_HI(segs[0].ds_addr));
    rx_bd->addr_lo = htole32(U64_LO(segs[0].ds_addr));

    return (rc);
}
