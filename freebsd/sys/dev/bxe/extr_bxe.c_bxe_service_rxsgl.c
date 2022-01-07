
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef size_t uint32_t ;
typedef size_t uint16_t ;
struct mbuf {size_t m_len; } ;
struct TYPE_6__ {int * sgl; } ;
struct eth_fast_path_rx_cqe {TYPE_3__ sgl_or_raw_data; } ;
struct TYPE_5__ {int mbuf_alloc_sge; } ;
struct bxe_fastpath {int sc; TYPE_2__ eth_q_stats; TYPE_1__* rx_sge_mbuf_chain; } ;
struct TYPE_4__ {struct mbuf* m; } ;


 scalar_t__ PAGES_PER_SGE ;
 size_t RX_SGE (int ) ;
 size_t SGE_PAGE_ALIGN (size_t) ;
 size_t SGE_PAGE_SHIFT ;
 scalar_t__ SGE_PAGE_SIZE ;
 size_t bxe_alloc_rx_sge_mbuf (struct bxe_fastpath*,size_t) ;
 int bxe_update_sge_prod (int ,struct bxe_fastpath*,size_t,TYPE_3__*) ;
 int le16toh (int ) ;
 int m_cat (struct mbuf*,struct mbuf*) ;
 size_t min (size_t,size_t) ;

__attribute__((used)) static uint8_t
bxe_service_rxsgl(
                 struct bxe_fastpath *fp,
                 uint16_t len,
                 uint16_t lenonbd,
                 struct mbuf *m,
                 struct eth_fast_path_rx_cqe *cqe_fp)
{
    struct mbuf *m_frag;
    uint16_t frags, frag_len;
    uint16_t sge_idx = 0;
    uint16_t j;
    uint8_t i, rc = 0;
    uint32_t frag_size;


    m->m_len = lenonbd;

    frag_size = len - lenonbd;
    frags = SGE_PAGE_ALIGN(frag_size) >> SGE_PAGE_SHIFT;

    for (i = 0, j = 0; i < frags; i += PAGES_PER_SGE, j++) {
        sge_idx = RX_SGE(le16toh(cqe_fp->sgl_or_raw_data.sgl[j]));

        m_frag = fp->rx_sge_mbuf_chain[sge_idx].m;
        frag_len = min(frag_size, (uint32_t)(SGE_PAGE_SIZE));
        m_frag->m_len = frag_len;


        rc = bxe_alloc_rx_sge_mbuf(fp, sge_idx);
        if (rc) {

            return (rc);
        }
        fp->eth_q_stats.mbuf_alloc_sge--;


        m_cat(m, m_frag);

        frag_size -= frag_len;
    }

    bxe_update_sge_prod(fp->sc, fp, frags, &cqe_fp->sgl_or_raw_data);

    return rc;
}
