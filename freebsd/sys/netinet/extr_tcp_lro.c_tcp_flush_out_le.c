
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct tcphdr {int th_sum; int th_win; int th_ack; } ;
struct tcpcb {int dummy; } ;
struct lro_entry {int append_cnt; int eh_type; scalar_t__ timestamp; int tsecr; int ulp_csum; TYPE_2__* m_head; int tsval; int window; int ack_seq; int p_len; struct ip* le_ip4; struct ip6_hdr* le_ip6; } ;
struct lro_ctrl {int lro_queued; TYPE_3__* ifp; } ;
struct ip6_hdr {int ip6_plen; } ;
struct ip {int ip_sum; int ip_len; } ;
struct TYPE_7__ {int (* if_input ) (TYPE_3__*,TYPE_2__*) ;} ;
struct TYPE_5__ {int csum_data; int lro_nsegs; int len; void* csum_flags; } ;
struct TYPE_6__ {TYPE_1__ m_pkthdr; int * m_nextpkt; } ;


 void* CSUM_DATA_VALID ;
 void* CSUM_IP_CHECKED ;
 void* CSUM_IP_VALID ;
 void* CSUM_PSEUDO_HDR ;


 int ETHER_HDR_LEN ;
 int htonl (int ) ;
 int htons (int ) ;
 int stub1 (TYPE_3__*,TYPE_2__*) ;
 scalar_t__ tcp_lro_csum_th (struct tcphdr*) ;
 int tcp_lro_log (struct tcpcb*,struct lro_ctrl*,struct lro_entry*,TYPE_2__*,int,int ,int ,int ,int ) ;

__attribute__((used)) static void
tcp_flush_out_le(struct tcpcb *tp, struct lro_ctrl *lc, struct lro_entry *le, int locked)
{
 if (le->append_cnt > 1) {
  struct tcphdr *th;
  uint16_t p_len;

  p_len = htons(le->p_len);
  switch (le->eh_type) {
  default:
   th = ((void*)0);
  }
  le->m_head->m_pkthdr.csum_data = 0xffff;
  le->m_head->m_pkthdr.len = le->p_len;


  th->th_ack = le->ack_seq;
  th->th_win = le->window;

  if (le->timestamp != 0) {
   uint32_t *ts_ptr;

   ts_ptr = (uint32_t *)(th + 1);
   ts_ptr[1] = htonl(le->tsval);
   ts_ptr[2] = le->tsecr;
  }

  le->ulp_csum += p_len;
  le->ulp_csum += tcp_lro_csum_th(th);
  while (le->ulp_csum > 0xffff)
   le->ulp_csum = (le->ulp_csum >> 16) +
       (le->ulp_csum & 0xffff);
  th->th_sum = (le->ulp_csum & 0xffff);
  th->th_sum = ~th->th_sum;
  if (tp && locked) {
   tcp_lro_log(tp, lc, le, ((void*)0), 7, 0, 0, 0, 0);
  }
 }





 le->m_head->m_nextpkt = ((void*)0);
 le->m_head->m_pkthdr.lro_nsegs = le->append_cnt;
 if (tp && locked) {
  tcp_lro_log(tp, lc, le, le->m_head, 8, 0, 0, 0, 0);
 }
 (*lc->ifp->if_input)(lc->ifp, le->m_head);
 lc->lro_queued += le->append_cnt;
}
