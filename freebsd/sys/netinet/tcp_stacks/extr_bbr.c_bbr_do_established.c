
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tcpopt {int to_flags; scalar_t__ to_tsval; } ;
struct tcphdr {scalar_t__ th_seq; } ;
struct tcpcb {int t_maxseg; scalar_t__ rcv_nxt; scalar_t__ last_ack_sent; int t_flags; scalar_t__ ts_recent; int ts_recent_age; int t_inpcb; scalar_t__ t_fin_is_rst; int snd_wnd; scalar_t__ t_fb_ptr; } ;
struct TYPE_2__ {int rc_delivered; int rc_init_rwnd; } ;
struct tcp_bbr {int r_wanted_output; int rc_tv; TYPE_1__ r_ctl; } ;
struct socket {int so_snd; } ;
struct mbuf {int dummy; } ;
typedef scalar_t__ int32_t ;


 int BANDLIM_RST_OPENPORT ;
 int INP_WLOCK_ASSERT (int ) ;
 int SEGQ_EMPTY (struct tcpcb*) ;
 scalar_t__ SEQ_LEQ (scalar_t__,scalar_t__) ;
 int TF_ACKNOW ;
 int TF_NEEDSYN ;
 scalar_t__ TH_ACK ;
 scalar_t__ TH_FIN ;
 scalar_t__ TH_RST ;
 scalar_t__ TH_SYN ;
 scalar_t__ TH_URG ;
 int TOF_SACK ;
 int TOF_TS ;
 scalar_t__ TSTMP_LT (scalar_t__,scalar_t__) ;
 scalar_t__ __predict_true (int) ;
 scalar_t__ bbr_do_fastnewdata (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*,struct tcpopt*,scalar_t__,scalar_t__,int ,scalar_t__) ;
 scalar_t__ bbr_fastack (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*,struct tcpopt*,scalar_t__,scalar_t__,int ,scalar_t__) ;
 scalar_t__ bbr_process_ack (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*,struct tcpopt*,int ,scalar_t__,int *,scalar_t__,scalar_t__*) ;
 int bbr_process_data (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*,scalar_t__,scalar_t__,int ,scalar_t__,scalar_t__) ;
 scalar_t__ bbr_progress_timeout_check (struct tcp_bbr*) ;
 int ctf_calc_rwin (struct socket*,struct tcpcb*) ;
 int ctf_challenge_ack (struct mbuf*,struct tcphdr*,struct tcpcb*,scalar_t__*) ;
 int ctf_do_drop (struct mbuf*,int *) ;
 int ctf_do_dropafterack (struct mbuf*,struct tcpcb*,struct tcphdr*,scalar_t__,scalar_t__,scalar_t__*) ;
 int ctf_do_dropwithreset_conn (struct mbuf*,struct tcpcb*,struct tcphdr*,int ,scalar_t__) ;
 scalar_t__ ctf_drop_checks (struct tcpopt*,struct mbuf*,struct tcphdr*,struct tcpcb*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int ctf_process_rst (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*) ;
 scalar_t__ ctf_ts_check (struct mbuf*,struct tcphdr*,struct tcpcb*,scalar_t__,scalar_t__,scalar_t__*) ;
 int max (int ,int ) ;
 scalar_t__ sbavail (int *) ;
 int tcp_tv_to_mssectick (int *) ;

__attribute__((used)) static int
bbr_do_established(struct mbuf *m, struct tcphdr *th, struct socket *so,
    struct tcpcb *tp, struct tcpopt *to, int32_t drop_hdrlen, int32_t tlen,
    uint32_t tiwin, int32_t thflags, int32_t nxt_pkt)
{
 struct tcp_bbr *bbr;
 int32_t ret_val;
 bbr = (struct tcp_bbr *)tp->t_fb_ptr;
 if (bbr->r_ctl.rc_delivered < (4 * tp->t_maxseg)) {





  bbr->r_ctl.rc_init_rwnd = max(tiwin, tp->snd_wnd);
 }
 if (__predict_true(((to->to_flags & TOF_SACK) == 0)) &&
     __predict_true((thflags & (TH_SYN | TH_FIN | TH_RST | TH_URG | TH_ACK)) == TH_ACK) &&
     __predict_true(SEGQ_EMPTY(tp)) &&
     __predict_true(th->th_seq == tp->rcv_nxt)) {
  if (tlen == 0) {
   if (bbr_fastack(m, th, so, tp, to, drop_hdrlen, tlen,
       tiwin, nxt_pkt)) {
    return (0);
   }
  } else {
   if (bbr_do_fastnewdata(m, th, so, tp, to, drop_hdrlen, tlen,
       tiwin, nxt_pkt)) {
    return (0);
   }
  }
 }
 ctf_calc_rwin(so, tp);

 if ((thflags & TH_RST) ||
     (tp->t_fin_is_rst && (thflags & TH_FIN)))
  return (ctf_process_rst(m, th, so, tp));




 if (thflags & TH_SYN) {
  ctf_challenge_ack(m, th, tp, &ret_val);
  return (ret_val);
 }




 if ((to->to_flags & TOF_TS) != 0 && tp->ts_recent &&
     TSTMP_LT(to->to_tsval, tp->ts_recent)) {
  if (ctf_ts_check(m, th, tp, tlen, thflags, &ret_val))
   return (ret_val);
 }
 INP_WLOCK_ASSERT(tp->t_inpcb);
 if (ctf_drop_checks(to, m, th, tp, &tlen, &thflags, &drop_hdrlen, &ret_val)) {
  return (ret_val);
 }
 if ((to->to_flags & TOF_TS) != 0 &&
     SEQ_LEQ(th->th_seq, tp->last_ack_sent) &&
     SEQ_LEQ(tp->last_ack_sent, th->th_seq + tlen +
     ((thflags & (TH_SYN | TH_FIN)) != 0))) {
  tp->ts_recent_age = tcp_tv_to_mssectick(&bbr->rc_tv);
  tp->ts_recent = to->to_tsval;
 }





 if ((thflags & TH_ACK) == 0) {
  if (tp->t_flags & TF_NEEDSYN) {
   return (bbr_process_data(m, th, so, tp, drop_hdrlen, tlen,
       tiwin, thflags, nxt_pkt));
  } else if (tp->t_flags & TF_ACKNOW) {
   ctf_do_dropafterack(m, tp, th, thflags, tlen, &ret_val);
   bbr->r_wanted_output = 1;
   return (ret_val);
  } else {
   ctf_do_drop(m, ((void*)0));
   return (0);
  }
 }



 if (bbr_process_ack(m, th, so, tp, to, tiwin, tlen, ((void*)0), thflags, &ret_val)) {
  return (ret_val);
 }
 if (sbavail(&so->so_snd)) {
  if (bbr_progress_timeout_check(bbr)) {
   ctf_do_dropwithreset_conn(m, tp, th, BANDLIM_RST_OPENPORT, tlen);
   return (1);
  }
 }

 return (bbr_process_data(m, th, so, tp, drop_hdrlen, tlen,
     tiwin, thflags, nxt_pkt));
}
