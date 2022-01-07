
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct tcphdr {int th_off; int th_flags; scalar_t__ th_seq; scalar_t__ th_ack; scalar_t__ th_win; } ;
struct tcpcb {int dummy; } ;
struct TYPE_3__ {scalar_t__ lro_len; scalar_t__ lro_csum; scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; struct mbuf* m_nextpkt; } ;
struct lro_entry {scalar_t__ append_cnt; scalar_t__ p_len; scalar_t__ next_seq; scalar_t__ ack_seq; scalar_t__ window; scalar_t__ ulp_csum; TYPE_2__* m_tail; int mbuf_appended; int mbuf_cnt; scalar_t__ tsecr; scalar_t__ tsval; struct mbuf* m_head; } ;
struct lro_ctrl {scalar_t__ lro_ackcnt_lim; scalar_t__ lro_length_lim; } ;
struct TYPE_4__ {struct mbuf* m_next; } ;


 int KASSERT (int ,char*) ;
 scalar_t__ SEQ_GT (scalar_t__,scalar_t__) ;
 int TCPOLEN_TIMESTAMP ;
 int TCPOLEN_TSTAMP_APPA ;
 int TCPOPT_NOP ;
 int TCPOPT_TIMESTAMP ;
 int TH_ACK ;
 int TH_PUSH ;
 scalar_t__ TSTMP_GT (scalar_t__,scalar_t__) ;
 scalar_t__ WIN_MAX (scalar_t__,scalar_t__) ;
 scalar_t__ __predict_false (int) ;
 int m_adj (struct mbuf*,scalar_t__) ;
 int m_demote_pkthdr (struct mbuf*) ;
 int m_freem (struct mbuf*) ;
 TYPE_2__* m_last (struct mbuf*) ;
 scalar_t__ ntohl (scalar_t__) ;
 struct tcphdr* tcp_lro_get_th (struct lro_entry*,struct mbuf*) ;
 int tcp_lro_log (struct tcpcb*,struct lro_ctrl*,struct lro_entry*,struct mbuf*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int tcp_push_and_replace (struct tcpcb*,struct lro_ctrl*,struct lro_entry*,struct mbuf*,int) ;

__attribute__((used)) static void
tcp_lro_condense(struct tcpcb *tp, struct lro_ctrl *lc, struct lro_entry *le, int locked)
{





 uint32_t *ts_ptr;
 struct mbuf *m;
 struct tcphdr *th;
 uint16_t tcp_data_len, csum_upd;
 int l;







again:

 m = le->m_head->m_nextpkt;
 if (m == ((void*)0)) {

  return;
 }
 th = tcp_lro_get_th(le, le->m_head);
 KASSERT(th != ((void*)0),
  ("le:%p m:%p th comes back NULL?", le, le->m_head));
 l = (th->th_off << 2);
 l -= sizeof(*th);
 ts_ptr = (uint32_t *)(th + 1);
 if (l != 0 && (__predict_false(l != TCPOLEN_TSTAMP_APPA) ||
         (*ts_ptr != ntohl(TCPOPT_NOP<<24|TCPOPT_NOP<<16|
      TCPOPT_TIMESTAMP<<8|TCPOLEN_TIMESTAMP)))) {




  le->m_head->m_nextpkt = m->m_nextpkt;
  tcp_push_and_replace(tp, lc, le, m, locked);
  goto again;
 }
 if ((th->th_flags & ~(TH_ACK | TH_PUSH)) != 0) {




  le->m_head->m_nextpkt = m->m_nextpkt;
  tcp_push_and_replace(tp, lc, le, m, locked);
  goto again;
 }
 while((m = le->m_head->m_nextpkt) != ((void*)0)) {




  le->m_head->m_nextpkt = m->m_nextpkt;
  m->m_nextpkt = ((void*)0);

  tcp_data_len = m->m_pkthdr.lro_len;
  th = tcp_lro_get_th(le, m);
  KASSERT(th != ((void*)0),
   ("le:%p m:%p th comes back NULL?", le, m));
  ts_ptr = (uint32_t *)(th + 1);
  l = (th->th_off << 2);
  l -= sizeof(*th);
  if (tp && locked) {
   tcp_lro_log(tp, lc, le, m, 1, 0, 0, 0, 0);
  }
  if (le->append_cnt >= lc->lro_ackcnt_lim) {
   if (tp && locked) {
    tcp_lro_log(tp, lc, le, m, 2, 0, 0, 0, 0);
   }
   tcp_push_and_replace(tp, lc, le, m, locked);
   goto again;
  }
  if (le->p_len > (lc->lro_length_lim - tcp_data_len)) {

   if (tp && locked) {
    tcp_lro_log(tp, lc, le, m, 3, tcp_data_len, 0, 0, 0);
   }
   tcp_push_and_replace(tp, lc, le, m, locked);
   goto again;
  }
  if (l != 0 && (__predict_false(l != TCPOLEN_TSTAMP_APPA) ||
          (*ts_ptr != ntohl(TCPOPT_NOP<<24|TCPOPT_NOP<<16|
       TCPOPT_TIMESTAMP<<8|TCPOLEN_TIMESTAMP)))) {







   tcp_push_and_replace(tp, lc, le, m, locked);
   goto again;
  }
  if ((th->th_flags & ~(TH_ACK | TH_PUSH)) != 0) {
   tcp_push_and_replace(tp, lc, le, m, locked);
   goto again;
  }
  if (l != 0) {
   uint32_t tsval = ntohl(*(ts_ptr + 1));

   if (TSTMP_GT(le->tsval, tsval)) {
    tcp_push_and_replace(tp, lc, le, m, locked);
    goto again;
   }
   le->tsval = tsval;
   le->tsecr = *(ts_ptr + 2);
  }

  if (__predict_false(ntohl(th->th_seq) != le->next_seq ||
        (tcp_data_len == 0 &&
         le->ack_seq == th->th_ack &&
         le->window == th->th_win))) {

   if (tp && locked) {
    tcp_lro_log(tp, lc, le, m, 4, tcp_data_len,
         ntohl(th->th_seq),
         th->th_ack,
         th->th_win);
   }
   tcp_push_and_replace(tp, lc, le, m, locked);
   goto again;
  }
  if (tcp_data_len || SEQ_GT(ntohl(th->th_ack), ntohl(le->ack_seq))) {
   le->next_seq += tcp_data_len;
   le->ack_seq = th->th_ack;
   le->window = th->th_win;
  } else if (th->th_ack == le->ack_seq) {
   le->window = WIN_MAX(le->window, th->th_win);
  }
  csum_upd = m->m_pkthdr.lro_csum;
  le->ulp_csum += csum_upd;
  if (tcp_data_len == 0) {
   le->append_cnt++;
   le->mbuf_cnt--;
   if (tp && locked) {
    tcp_lro_log(tp, lc, le, m, 5, tcp_data_len,
         ntohl(th->th_seq),
         th->th_ack,
         th->th_win);
   }
   m_freem(m);
   continue;
  }
  le->append_cnt++;
  le->mbuf_appended++;
  le->p_len += tcp_data_len;





  m_adj(m, m->m_pkthdr.len - tcp_data_len);
  if (tp && locked) {
   tcp_lro_log(tp, lc, le, m, 6, tcp_data_len,
         ntohl(th->th_seq),
         th->th_ack,
         th->th_win);
  }
  m_demote_pkthdr(m);
  le->m_tail->m_next = m;
  le->m_tail = m_last(m);
 }
}
