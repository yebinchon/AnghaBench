
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {scalar_t__ th_seq; } ;
struct tcpcb {int t_flags2; scalar_t__ rcv_nxt; } ;
struct tcp_bbr {scalar_t__ rc_allow_data_af_clo; int r_wanted_output; } ;
struct socket {int so_snd; } ;
struct mbuf {int dummy; } ;
typedef scalar_t__ int32_t ;


 int BANDLIM_UNLIMITED ;
 int TCPSTAT_INC (int ) ;
 int TF2_DROP_AF_DATA ;
 int ctf_do_dropwithreset (struct mbuf*,struct tcpcb*,struct tcphdr*,int ,scalar_t__) ;
 scalar_t__ sbavail (int *) ;
 struct tcpcb* tcp_close (struct tcpcb*) ;
 int tcps_rcvafterclose ;

__attribute__((used)) static int
bbr_check_data_after_close(struct mbuf *m, struct tcp_bbr *bbr,
    struct tcpcb *tp, int32_t * tlen, struct tcphdr *th, struct socket *so)
{

 if (bbr->rc_allow_data_af_clo == 0) {
close_now:
  tp = tcp_close(tp);
  TCPSTAT_INC(tcps_rcvafterclose);
  ctf_do_dropwithreset(m, tp, th, BANDLIM_UNLIMITED, (*tlen));
  return (1);
 }
 if (sbavail(&so->so_snd) == 0)
  goto close_now;

 tp->rcv_nxt = th->th_seq + *tlen;
 tp->t_flags2 |= TF2_DROP_AF_DATA;
 bbr->r_wanted_output = 1;
 *tlen = 0;
 return (0);
}
