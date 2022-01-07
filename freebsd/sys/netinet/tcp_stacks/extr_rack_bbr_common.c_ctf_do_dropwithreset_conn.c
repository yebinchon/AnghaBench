
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int dummy; } ;
struct tcpcb {scalar_t__ t_inpcb; } ;
struct mbuf {int dummy; } ;
typedef int int32_t ;


 int ETIMEDOUT ;
 int INP_WUNLOCK (scalar_t__) ;
 int tcp_dropwithreset (struct mbuf*,struct tcphdr*,struct tcpcb*,int ,int ) ;
 int tcp_set_inp_to_drop (scalar_t__,int ) ;

void
ctf_do_dropwithreset_conn(struct mbuf *m, struct tcpcb *tp, struct tcphdr *th,
    int32_t rstreason, int32_t tlen)
{

 if (tp->t_inpcb) {
  tcp_set_inp_to_drop(tp->t_inpcb, ETIMEDOUT);
 }
 tcp_dropwithreset(m, th, tp, tlen, rstreason);
 INP_WUNLOCK(tp->t_inpcb);
}
