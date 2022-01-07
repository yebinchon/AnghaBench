
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; } ;
struct mbuf {int m_len; TYPE_1__ m_pkthdr; } ;
struct TYPE_6__ {struct mbuf* m; int * m_map; } ;
struct bxe_sw_tpa_info {int seg; TYPE_3__ bd; } ;
struct TYPE_5__ {int mbuf_alloc_tpa; int mbuf_rx_tpa_mapping_failed; int mbuf_rx_tpa_alloc_failed; } ;
struct bxe_fastpath {int rx_mbuf_tag; int * rx_tpa_info_mbuf_spare_map; TYPE_2__ eth_q_stats; int rx_buf_size; int mbuf_alloc_size; struct bxe_sw_tpa_info* rx_tpa_info; } ;
typedef int * bus_dmamap_t ;
typedef int bus_dma_segment_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMA_NOWAIT ;
 int ENOBUFS ;
 int KASSERT (int,char*) ;
 int MT_DATA ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 scalar_t__ __predict_false (int) ;
 int bus_dmamap_load_mbuf_sg (int ,int *,struct mbuf*,int *,int*,int ) ;
 int bus_dmamap_sync (int ,int *,int ) ;
 int bus_dmamap_unload (int ,int *) ;
 int m_free (struct mbuf*) ;
 struct mbuf* m_getjcl (int ,int ,int ,int ) ;

__attribute__((used)) static int
bxe_alloc_rx_tpa_mbuf(struct bxe_fastpath *fp,
                      int queue)
{
    struct bxe_sw_tpa_info *tpa_info = &fp->rx_tpa_info[queue];
    bus_dma_segment_t segs[1];
    bus_dmamap_t map;
    struct mbuf *m;
    int nsegs;
    int rc = 0;


    m = m_getjcl(M_NOWAIT, MT_DATA, M_PKTHDR, fp->mbuf_alloc_size);
    if (__predict_false(m == ((void*)0))) {
        fp->eth_q_stats.mbuf_rx_tpa_alloc_failed++;
        return (ENOBUFS);
    }

    fp->eth_q_stats.mbuf_alloc_tpa++;


    m->m_pkthdr.len = m->m_len = fp->rx_buf_size;


    rc = bus_dmamap_load_mbuf_sg(fp->rx_mbuf_tag,
                                 fp->rx_tpa_info_mbuf_spare_map,
                                 m, segs, &nsegs, BUS_DMA_NOWAIT);
    if (__predict_false(rc != 0)) {
        fp->eth_q_stats.mbuf_rx_tpa_mapping_failed++;
        m_free(m);
        fp->eth_q_stats.mbuf_alloc_tpa--;
        return (rc);
    }


    KASSERT((nsegs == 1), ("Too many segments, %d returned!", nsegs));


    if (tpa_info->bd.m_map != ((void*)0)) {
        bus_dmamap_sync(fp->rx_mbuf_tag, tpa_info->bd.m_map,
                        BUS_DMASYNC_POSTREAD);
        bus_dmamap_unload(fp->rx_mbuf_tag, tpa_info->bd.m_map);
    }


    map = tpa_info->bd.m_map;
    tpa_info->bd.m_map = fp->rx_tpa_info_mbuf_spare_map;
    fp->rx_tpa_info_mbuf_spare_map = map;
    bus_dmamap_sync(fp->rx_mbuf_tag, tpa_info->bd.m_map,
                    BUS_DMASYNC_PREREAD);
    tpa_info->bd.m = m;
    tpa_info->seg = segs[0];

    return (rc);
}
