
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {int dummy; } ;
struct tcpcb {int t_srtt; scalar_t__ rfbuf_ts; int rfbuf_cnt; } ;
struct TYPE_2__ {int sb_flags; int sb_hiwat; } ;
struct socket {TYPE_1__ so_rcv; } ;
struct mbuf {int dummy; } ;


 int SB_AUTOSIZE ;
 int TCP_PROBE6 (int ,int *,struct tcpcb*,struct mbuf*,struct tcpcb*,struct tcphdr*,int) ;
 int TCP_RTT_SHIFT ;
 int TCP_TS_TO_TICKS (scalar_t__) ;
 int V_tcp_autorcvbuf_max ;
 scalar_t__ V_tcp_do_autorcvbuf ;
 int min (int,int) ;
 int receive__autoresize ;
 scalar_t__ tcp_ts_getticks () ;

int
tcp_autorcvbuf(struct mbuf *m, struct tcphdr *th, struct socket *so,
    struct tcpcb *tp, int tlen)
{
 int newsize = 0;

 if (V_tcp_do_autorcvbuf && (so->so_rcv.sb_flags & SB_AUTOSIZE) &&
     tp->t_srtt != 0 && tp->rfbuf_ts != 0 &&
     TCP_TS_TO_TICKS(tcp_ts_getticks() - tp->rfbuf_ts) >
     ((tp->t_srtt >> TCP_RTT_SHIFT)/2)) {
  if (tp->rfbuf_cnt > ((so->so_rcv.sb_hiwat / 2)/ 4 * 3) &&
      so->so_rcv.sb_hiwat < V_tcp_autorcvbuf_max) {
   newsize = min((so->so_rcv.sb_hiwat + (so->so_rcv.sb_hiwat/2)), V_tcp_autorcvbuf_max);
  }
  TCP_PROBE6(receive__autoresize, ((void*)0), tp, m, tp, th, newsize);


  tp->rfbuf_ts = 0;
  tp->rfbuf_cnt = 0;
 } else {
  tp->rfbuf_cnt += tlen;
 }
 return (newsize);
}
