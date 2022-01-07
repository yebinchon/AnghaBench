
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct eth_fast_path_rx_cqe {size_t type_error_flags; int status_flags; size_t placement_offset; int vlan_tag; TYPE_1__ pars_flags; int len_on_bd; int pkt_len_or_gro_seg_len; int queue_index; int rss_hash_result; } ;
struct TYPE_8__ {size_t queue_index; int sgl_or_raw_data; int pkt_len; } ;
union eth_rx_cqe {struct eth_fast_path_rx_cqe fast_path_cqe; TYPE_4__ end_agg_cqe; } ;
typedef size_t uint8_t ;
typedef size_t uint16_t ;
struct TYPE_6__ {size_t len; int csum_flags; int csum_data; size_t flowid; int ether_vtag; } ;
struct mbuf {size_t m_len; TYPE_2__ m_pkthdr; int m_flags; } ;
struct bxe_sw_tpa_info {size_t len_on_bd; } ;
struct bxe_sw_rx_bd {struct mbuf* m; } ;
struct bxe_softc {scalar_t__ max_rx_bufs; int rx_budget; int ifp; } ;
struct TYPE_7__ {int rx_pkts; int rx_calls; int rx_budget_reached; int rx_ofld_frames_csum_tcp_udp; int rx_hw_csum_errors; int rx_ofld_frames_csum_ip; int rx_erroneous_jumbo_sge_pkts; int rx_jumbo_sge_pkts; int rx_bxe_service_rxsgl; int mbuf_alloc_rx; int rx_soft_errors; } ;
struct bxe_fastpath {size_t rx_bd_cons; size_t rx_bd_prod; size_t rx_cq_cons; size_t rx_cq_prod; int index; TYPE_3__ eth_q_stats; int rx_sge_prod; struct bxe_sw_rx_bd* rx_mbuf_chain; struct bxe_sw_tpa_info* rx_tpa_info; union eth_rx_cqe* rcq_chain; int * rx_cq_cons_sb; } ;
typedef int if_t ;
typedef enum eth_rx_cqe_type { ____Placeholder_eth_rx_cqe_type } eth_rx_cqe_type ;


 int BLOGD (struct bxe_softc*,int ,char*,int,size_t,...) ;
 int BLOGE (struct bxe_softc*,char*,size_t,int) ;
 int BXE_FP_RX_LOCK (struct bxe_fastpath*) ;
 int BXE_FP_RX_UNLOCK (struct bxe_fastpath*) ;
 int BXE_SET_FLOWID (struct mbuf*) ;
 int CQE_TYPE (size_t) ;
 int CQE_TYPE_FAST (int) ;
 size_t CQE_TYPE_SLOW (int) ;
 scalar_t__ CQE_TYPE_START (int) ;
 int CQE_TYPE_STOP (int) ;
 int CSUM_DATA_VALID ;
 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 int CSUM_PSEUDO_HDR ;
 int DBG_LRO ;
 int DBG_RX ;
 size_t ETH_FAST_PATH_RX_CQE_IP_BAD_XSUM_FLG ;
 int ETH_FAST_PATH_RX_CQE_IP_XSUM_NO_VALIDATION_FLG ;
 size_t ETH_FAST_PATH_RX_CQE_L4_BAD_XSUM_FLG ;
 int ETH_FAST_PATH_RX_CQE_L4_XSUM_NO_VALIDATION_FLG ;
 size_t ETH_FAST_PATH_RX_CQE_PHY_DECODE_ERR_FLG ;
 size_t ETH_FAST_PATH_RX_CQE_TYPE ;
 int IFCAP_RXCSUM ;
 int IFCOUNTER_IPACKETS ;
 int KASSERT (int ,char*) ;
 int M_VLANTAG ;
 int PARSING_FLAGS_INNER_VLAN_EXIST ;
 size_t RCQ (size_t) ;
 size_t RCQ_NEXT (size_t) ;
 size_t RCQ_USABLE_PER_PAGE ;
 size_t RX_BD (size_t) ;
 size_t RX_BD_NEXT (size_t) ;
 scalar_t__ RX_BD_USABLE ;
 size_t SGE_PAGE_ALIGN (size_t) ;
 size_t SGE_PAGE_SHIFT ;
 scalar_t__ __predict_false (size_t) ;
 scalar_t__ __predict_true (int ) ;
 int bxe_alloc_rx_bd_mbuf (struct bxe_fastpath*,size_t,size_t) ;
 int bxe_service_rxsgl (struct bxe_fastpath*,size_t,size_t,struct mbuf*,struct eth_fast_path_rx_cqe*) ;
 int bxe_sp_event (struct bxe_softc*,struct bxe_fastpath*,union eth_rx_cqe*) ;
 int bxe_tpa_start (struct bxe_softc*,struct bxe_fastpath*,int ,size_t,size_t,struct eth_fast_path_rx_cqe*) ;
 int bxe_tpa_stop (struct bxe_softc*,struct bxe_fastpath*,struct bxe_sw_tpa_info*,size_t,size_t,TYPE_4__*,size_t) ;
 int bxe_update_rx_prod (struct bxe_softc*,struct bxe_fastpath*,size_t,size_t,int ) ;
 int bxe_update_sge_prod (struct bxe_softc*,struct bxe_fastpath*,size_t,int *) ;
 int if_getcapenable (int ) ;
 int if_inc_counter (int ,int ,int) ;
 int if_input (int ,struct mbuf*) ;
 int if_setrcvif (struct mbuf*,int ) ;
 size_t le16toh (int ) ;
 int le32toh (int ) ;
 int m_adj (struct mbuf*,size_t) ;
 int memcpy (struct bxe_sw_rx_bd*,struct bxe_sw_rx_bd*,int) ;
 int memset (struct bxe_sw_rx_bd*,int ,int) ;
 int rmb () ;

__attribute__((used)) static uint8_t
bxe_rxeof(struct bxe_softc *sc,
          struct bxe_fastpath *fp)
{
    if_t ifp = sc->ifp;
    uint16_t bd_cons, bd_prod, bd_prod_fw, comp_ring_cons;
    uint16_t hw_cq_cons, sw_cq_cons, sw_cq_prod;
    int rx_pkts = 0;
    int rc = 0;

    BXE_FP_RX_LOCK(fp);


    hw_cq_cons = le16toh(*fp->rx_cq_cons_sb);
    if ((hw_cq_cons & RCQ_USABLE_PER_PAGE) == RCQ_USABLE_PER_PAGE) {
        hw_cq_cons++;
    }

    bd_cons = fp->rx_bd_cons;
    bd_prod = fp->rx_bd_prod;
    bd_prod_fw = bd_prod;
    sw_cq_cons = fp->rx_cq_cons;
    sw_cq_prod = fp->rx_cq_prod;





    rmb();

    BLOGD(sc, DBG_RX,
          "fp[%02d] Rx START hw_cq_cons=%u sw_cq_cons=%u\n",
          fp->index, hw_cq_cons, sw_cq_cons);

    while (sw_cq_cons != hw_cq_cons) {
        struct bxe_sw_rx_bd *rx_buf = ((void*)0);
        union eth_rx_cqe *cqe;
        struct eth_fast_path_rx_cqe *cqe_fp;
        uint8_t cqe_fp_flags;
        enum eth_rx_cqe_type cqe_fp_type;
        uint16_t len, lenonbd, pad;
        struct mbuf *m = ((void*)0);

        comp_ring_cons = RCQ(sw_cq_cons);
        bd_prod = RX_BD(bd_prod);
        bd_cons = RX_BD(bd_cons);

        cqe = &fp->rcq_chain[comp_ring_cons];
        cqe_fp = &cqe->fast_path_cqe;
        cqe_fp_flags = cqe_fp->type_error_flags;
        cqe_fp_type = cqe_fp_flags & ETH_FAST_PATH_RX_CQE_TYPE;

        BLOGD(sc, DBG_RX,
              "fp[%02d] Rx hw_cq_cons=%d hw_sw_cons=%d "
              "BD prod=%d cons=%d CQE type=0x%x err=0x%x "
              "status=0x%x rss_hash=0x%x vlan=0x%x len=%u lenonbd=%u\n",
              fp->index,
              hw_cq_cons,
              sw_cq_cons,
              bd_prod,
              bd_cons,
              CQE_TYPE(cqe_fp_flags),
              cqe_fp_flags,
              cqe_fp->status_flags,
              le32toh(cqe_fp->rss_hash_result),
              le16toh(cqe_fp->vlan_tag),
              le16toh(cqe_fp->pkt_len_or_gro_seg_len),
              le16toh(cqe_fp->len_on_bd));


        if (__predict_false(CQE_TYPE_SLOW(cqe_fp_type))) {
            bxe_sp_event(sc, fp, cqe);
            goto next_cqe;
        }

        rx_buf = &fp->rx_mbuf_chain[bd_cons];

        if (!CQE_TYPE_FAST(cqe_fp_type)) {
            struct bxe_sw_tpa_info *tpa_info;
            uint16_t frag_size, pages;
            uint8_t queue;

            if (CQE_TYPE_START(cqe_fp_type)) {
                bxe_tpa_start(sc, fp, cqe_fp->queue_index,
                              bd_cons, bd_prod, cqe_fp);
                m = ((void*)0);
                goto next_rx;
            }

            KASSERT(CQE_TYPE_STOP(cqe_fp_type),
                    ("CQE type is not STOP! (0x%x)\n", cqe_fp_type));

            queue = cqe->end_agg_cqe.queue_index;
            tpa_info = &fp->rx_tpa_info[queue];

            BLOGD(sc, DBG_LRO, "fp[%02d].tpa[%02d] TPA STOP\n",
                  fp->index, queue);

            frag_size = (le16toh(cqe->end_agg_cqe.pkt_len) -
                         tpa_info->len_on_bd);
            pages = SGE_PAGE_ALIGN(frag_size) >> SGE_PAGE_SHIFT;

            bxe_tpa_stop(sc, fp, tpa_info, queue, pages,
                         &cqe->end_agg_cqe, comp_ring_cons);

            bxe_update_sge_prod(sc, fp, pages, &cqe->end_agg_cqe.sgl_or_raw_data);

            goto next_cqe;
        }




        if (__predict_false(cqe_fp_flags &
                            ETH_FAST_PATH_RX_CQE_PHY_DECODE_ERR_FLG)) {
            BLOGE(sc, "flags 0x%x rx packet %u\n", cqe_fp_flags, sw_cq_cons);
            fp->eth_q_stats.rx_soft_errors++;
            goto next_rx;
        }

        len = le16toh(cqe_fp->pkt_len_or_gro_seg_len);
        lenonbd = le16toh(cqe_fp->len_on_bd);
        pad = cqe_fp->placement_offset;

        m = rx_buf->m;

        if (__predict_false(m == ((void*)0))) {
            BLOGE(sc, "No mbuf in rx chain descriptor %d for fp[%02d]\n",
                  bd_cons, fp->index);
            goto next_rx;
        }
        rc = bxe_alloc_rx_bd_mbuf(fp, bd_cons,
                                  (sc->max_rx_bufs != RX_BD_USABLE) ?
                                      bd_prod : bd_cons);
        if (rc != 0) {


            m = ((void*)0);

            BLOGE(sc, "mbuf alloc fail for fp[%02d] rx chain (%d)\n",
                  fp->index, rc);
            fp->eth_q_stats.rx_soft_errors++;

            if (sc->max_rx_bufs != RX_BD_USABLE) {

                memcpy(&fp->rx_mbuf_chain[bd_prod], rx_buf,
                       sizeof(struct bxe_sw_rx_bd));
                memset(rx_buf, 0, sizeof(struct bxe_sw_rx_bd));
            }

            goto next_rx;
        }


        fp->eth_q_stats.mbuf_alloc_rx--;


        m_adj(m, pad);
        m->m_pkthdr.len = m->m_len = len;

        if ((len > 60) && (len > lenonbd)) {
            fp->eth_q_stats.rx_bxe_service_rxsgl++;
            rc = bxe_service_rxsgl(fp, len, lenonbd, m, cqe_fp);
            if (rc)
                break;
            fp->eth_q_stats.rx_jumbo_sge_pkts++;
        } else if (lenonbd < len) {
            fp->eth_q_stats.rx_erroneous_jumbo_sge_pkts++;
        }


 if_setrcvif(m, ifp);


        m->m_pkthdr.csum_flags = 0;


        if (if_getcapenable(ifp) & IFCAP_RXCSUM) {

            if (!(cqe->fast_path_cqe.status_flags &
                  ETH_FAST_PATH_RX_CQE_IP_XSUM_NO_VALIDATION_FLG)) {
                m->m_pkthdr.csum_flags |= CSUM_IP_CHECKED;
                if (__predict_false(cqe_fp_flags &
                                    ETH_FAST_PATH_RX_CQE_IP_BAD_XSUM_FLG)) {
                    fp->eth_q_stats.rx_hw_csum_errors++;
                } else {
                    fp->eth_q_stats.rx_ofld_frames_csum_ip++;
                    m->m_pkthdr.csum_flags |= CSUM_IP_VALID;
                }
            }


            if (!(cqe->fast_path_cqe.status_flags &
                  ETH_FAST_PATH_RX_CQE_L4_XSUM_NO_VALIDATION_FLG)) {
                if (__predict_false(cqe_fp_flags &
                                    ETH_FAST_PATH_RX_CQE_L4_BAD_XSUM_FLG)) {
                    fp->eth_q_stats.rx_hw_csum_errors++;
                } else {
                    fp->eth_q_stats.rx_ofld_frames_csum_tcp_udp++;
                    m->m_pkthdr.csum_data = 0xFFFF;
                    m->m_pkthdr.csum_flags |= (CSUM_DATA_VALID |
                                               CSUM_PSEUDO_HDR);
                }
            }
        }


        if (cqe->fast_path_cqe.pars_flags.flags & PARSING_FLAGS_INNER_VLAN_EXIST) {
            m->m_pkthdr.ether_vtag = cqe->fast_path_cqe.vlan_tag;
            m->m_flags |= M_VLANTAG;
        }







next_rx:

        bd_cons = RX_BD_NEXT(bd_cons);
        bd_prod = RX_BD_NEXT(bd_prod);
        bd_prod_fw = RX_BD_NEXT(bd_prod_fw);


        if (__predict_true(m != ((void*)0))) {
            if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);
            rx_pkts++;
            if_input(ifp, m);
        }

next_cqe:

        sw_cq_prod = RCQ_NEXT(sw_cq_prod);
        sw_cq_cons = RCQ_NEXT(sw_cq_cons);


        if (rc != 0)
            break;

        if (rx_pkts == sc->rx_budget) {
            fp->eth_q_stats.rx_budget_reached++;
            break;
        }
    }

    fp->rx_bd_cons = bd_cons;
    fp->rx_bd_prod = bd_prod_fw;
    fp->rx_cq_cons = sw_cq_cons;
    fp->rx_cq_prod = sw_cq_prod;


    bxe_update_rx_prod(sc, fp, bd_prod_fw, sw_cq_prod, fp->rx_sge_prod);

    fp->eth_q_stats.rx_pkts += rx_pkts;
    fp->eth_q_stats.rx_calls++;

    BXE_FP_RX_UNLOCK(fp);

    return (sw_cq_cons != hw_cq_cons);
}
