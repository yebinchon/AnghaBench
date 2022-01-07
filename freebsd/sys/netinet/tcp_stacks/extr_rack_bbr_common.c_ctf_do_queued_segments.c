
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int * t_tail_pkt; struct mbuf* t_in_pkt; } ;
struct socket {int dummy; } ;
struct mbuf {int dummy; } ;


 scalar_t__ ctf_process_inbound_raw (struct tcpcb*,struct socket*,struct mbuf*,int) ;

int
ctf_do_queued_segments(struct socket *so, struct tcpcb *tp, int have_pkt)
{
 struct mbuf *m;


 if (tp->t_in_pkt) {
  m = tp->t_in_pkt;
  tp->t_in_pkt = ((void*)0);
  tp->t_tail_pkt = ((void*)0);
  if (ctf_process_inbound_raw(tp, so, m, have_pkt)) {

   return(1);
  }
 }
 return (0);
}
