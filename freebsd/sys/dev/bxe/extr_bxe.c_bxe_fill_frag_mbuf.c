
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_8__ {int len; } ;
struct mbuf {int m_len; TYPE_4__ m_pkthdr; } ;
struct TYPE_5__ {int * sgl; } ;
struct eth_end_agg_rx_cqe {TYPE_1__ sgl_or_raw_data; int pkt_len; } ;
struct bxe_sw_tpa_info {int len_on_bd; } ;
struct bxe_softc {int dummy; } ;
struct TYPE_7__ {int mbuf_alloc_sge; } ;
struct bxe_fastpath {int index; TYPE_3__ eth_q_stats; TYPE_2__* rx_sge_mbuf_chain; } ;
struct TYPE_6__ {struct mbuf* m; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int ,int,int,...) ;
 int BLOGE (struct bxe_softc*,char*,int,int,int,int,int,int,...) ;
 int DBG_LRO ;
 int EINVAL ;
 int PAGES_PER_SGE ;
 int RX_SGE (int) ;
 scalar_t__ SGE_PAGES ;
 int bxe_alloc_rx_sge_mbuf (struct bxe_fastpath*,int) ;
 int bxe_panic (struct bxe_softc*,char*) ;
 int le16toh (int ) ;
 int m_cat (struct mbuf*,struct mbuf*) ;
 int min (int,int) ;

__attribute__((used)) static int
bxe_fill_frag_mbuf(struct bxe_softc *sc,
                   struct bxe_fastpath *fp,
                   struct bxe_sw_tpa_info *tpa_info,
                   uint16_t queue,
                   uint16_t pages,
                   struct mbuf *m,
          struct eth_end_agg_rx_cqe *cqe,
                   uint16_t cqe_idx)
{
    struct mbuf *m_frag;
    uint32_t frag_len, frag_size, i;
    uint16_t sge_idx;
    int rc = 0;
    int j;

    frag_size = le16toh(cqe->pkt_len) - tpa_info->len_on_bd;

    BLOGD(sc, DBG_LRO,
          "fp[%02d].tpa[%02d] TPA fill len_on_bd=%d frag_size=%d pages=%d\n",
          fp->index, queue, tpa_info->len_on_bd, frag_size, pages);


    if (pages > 8 * PAGES_PER_SGE) {

        uint32_t *tmp = (uint32_t *)cqe;

        BLOGE(sc, "fp[%02d].sge[0x%04x] has too many pages (%d)! "
                  "pkt_len=%d len_on_bd=%d frag_size=%d\n",
              fp->index, cqe_idx, pages, le16toh(cqe->pkt_len),
              tpa_info->len_on_bd, frag_size);

        BLOGE(sc, "cqe [0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x]\n",
            *tmp, *(tmp+1), *(tmp+2), *(tmp+3), *(tmp+4), *(tmp+5), *(tmp+6), *(tmp+7));

        bxe_panic(sc, ("sge page count error\n"));
        return (EINVAL);
    }





    for (i = 0, j = 0; i < pages; i += PAGES_PER_SGE, j++) {
        sge_idx = RX_SGE(le16toh(cqe->sgl_or_raw_data.sgl[j]));





        frag_len = min(frag_size, (uint32_t)(SGE_PAGES));

        BLOGD(sc, DBG_LRO, "fp[%02d].tpa[%02d] TPA fill i=%d j=%d "
                           "sge_idx=%d frag_size=%d frag_len=%d\n",
              fp->index, queue, i, j, sge_idx, frag_size, frag_len);

        m_frag = fp->rx_sge_mbuf_chain[sge_idx].m;


        rc = bxe_alloc_rx_sge_mbuf(fp, sge_idx);
        if (rc) {

            return (rc);
        }


        m_frag->m_len = frag_len;


        m_cat(m, m_frag);
        fp->eth_q_stats.mbuf_alloc_sge--;


        m->m_pkthdr.len += frag_len;
        frag_size -= frag_len;
    }

    BLOGD(sc, DBG_LRO,
          "fp[%02d].tpa[%02d] TPA fill done frag_size=%d\n",
          fp->index, queue, frag_size);

    return (rc);
}
