
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_6__ {int csum_data; int csum_flags; int flowid; int ether_vtag; int len; } ;
struct mbuf {TYPE_2__ m_pkthdr; int m_flags; int m_len; } ;
struct eth_end_agg_rx_cqe {int pkt_len; } ;
struct TYPE_5__ {struct mbuf* m; } ;
struct bxe_sw_tpa_info {int parsing_flags; int vlan_tag; int len_on_bd; int placement_offset; TYPE_1__ bd; } ;
struct bxe_softc {int ifp; } ;
struct TYPE_7__ {int mbuf_alloc_tpa; int rx_tpa_pkts; int rx_soft_errors; int rx_ofld_frames_csum_tcp_udp; int rx_ofld_frames_csum_ip; } ;
struct bxe_fastpath {int rx_tpa_queue_used; TYPE_4__* rx_tpa_info; TYPE_3__ eth_q_stats; int index; } ;
typedef int if_t ;
struct TYPE_8__ {int state; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int ,size_t,int ,int ,size_t,int ) ;
 int BXE_SET_FLOWID (struct mbuf*) ;
 int BXE_TPA_STATE_STOP ;
 int CSUM_DATA_VALID ;
 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 int CSUM_PSEUDO_HDR ;
 int DBG_LRO ;
 int IFCOUNTER_IPACKETS ;
 int M_VLANTAG ;
 int PARSING_FLAGS_INNER_VLAN_EXIST ;
 int bxe_alloc_rx_tpa_mbuf (struct bxe_fastpath*,size_t) ;
 int bxe_fill_frag_mbuf (struct bxe_softc*,struct bxe_fastpath*,struct bxe_sw_tpa_info*,size_t,size_t,struct mbuf*,struct eth_end_agg_rx_cqe*,size_t) ;
 int if_inc_counter (int ,int ,int) ;
 int if_input (int ,struct mbuf*) ;
 int if_setrcvif (struct mbuf*,int ) ;
 int le16toh (int ) ;
 int m_adj (struct mbuf*,int ) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
bxe_tpa_stop(struct bxe_softc *sc,
             struct bxe_fastpath *fp,
             struct bxe_sw_tpa_info *tpa_info,
             uint16_t queue,
             uint16_t pages,
    struct eth_end_agg_rx_cqe *cqe,
             uint16_t cqe_idx)
{
    if_t ifp = sc->ifp;
    struct mbuf *m;
    int rc = 0;

    BLOGD(sc, DBG_LRO,
          "fp[%02d].tpa[%02d] pad=%d pkt_len=%d pages=%d vlan=%d\n",
          fp->index, queue, tpa_info->placement_offset,
          le16toh(cqe->pkt_len), pages, tpa_info->vlan_tag);

    m = tpa_info->bd.m;


    rc = bxe_alloc_rx_tpa_mbuf(fp, queue);
    if (rc) {

        fp->eth_q_stats.rx_soft_errors++;
        goto bxe_tpa_stop_exit;
    }


    m_adj(m, tpa_info->placement_offset);
    m->m_pkthdr.len = m->m_len = tpa_info->len_on_bd;


    fp->eth_q_stats.rx_ofld_frames_csum_ip++;
    fp->eth_q_stats.rx_ofld_frames_csum_tcp_udp++;
    m->m_pkthdr.csum_data = 0xffff;
    m->m_pkthdr.csum_flags |= (CSUM_IP_CHECKED |
                               CSUM_IP_VALID |
                               CSUM_DATA_VALID |
                               CSUM_PSEUDO_HDR);


    rc = bxe_fill_frag_mbuf(sc, fp, tpa_info, queue, pages, m, cqe, cqe_idx);
    if (rc) {

        fp->eth_q_stats.rx_soft_errors++;
        m_freem(m);
    } else {
        if (tpa_info->parsing_flags & PARSING_FLAGS_INNER_VLAN_EXIST) {
            m->m_pkthdr.ether_vtag = tpa_info->vlan_tag;
            m->m_flags |= M_VLANTAG;
        }


        if_setrcvif(m, ifp);







        if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);
        fp->eth_q_stats.rx_tpa_pkts++;


        if_input(ifp, m);
    }


    fp->eth_q_stats.mbuf_alloc_tpa--;

bxe_tpa_stop_exit:

    fp->rx_tpa_info[queue].state = BXE_TPA_STATE_STOP;
    fp->rx_tpa_queue_used &= ~(1 << queue);
}
