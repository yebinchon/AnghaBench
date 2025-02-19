
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct tcphdr {int dummy; } ;
struct tcpcb {int t_inpcb; scalar_t__ t_in_pkt; } ;
struct socket {int dummy; } ;
struct TYPE_2__ {int rcv_tstmp; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
typedef int int32_t ;


 int INP_WUNLOCK (int ) ;
 int M_TSTMP_LRO ;
 int bbr_do_segment_nounlock (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*,int ,int ,int ,int ,struct timeval*) ;
 scalar_t__ ctf_do_queued_segments (struct socket*,struct tcpcb*,int) ;
 int m_freem (struct mbuf*) ;
 int tcp_get_usecs (struct timeval*) ;

__attribute__((used)) static void
bbr_do_segment(struct mbuf *m, struct tcphdr *th, struct socket *so,
    struct tcpcb *tp, int32_t drop_hdrlen, int32_t tlen, uint8_t iptos)
{
 struct timeval tv;
 int retval;


 if (tp->t_in_pkt) {
  if (ctf_do_queued_segments(so, tp, 1)) {
   m_freem(m);
   return;
  }
 }
 if (m->m_flags & M_TSTMP_LRO) {
  tv.tv_sec = m->m_pkthdr.rcv_tstmp /1000000000;
  tv.tv_usec = (m->m_pkthdr.rcv_tstmp % 1000000000)/1000;
 } else {

  tcp_get_usecs(&tv);
 }
 retval = bbr_do_segment_nounlock(m, th, so, tp,
      drop_hdrlen, tlen, iptos, 0, &tv);
 if (retval == 0)
  INP_WUNLOCK(tp->t_inpcb);
}
