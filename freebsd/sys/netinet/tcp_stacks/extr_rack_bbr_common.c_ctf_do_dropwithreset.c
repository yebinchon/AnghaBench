
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int dummy; } ;
struct tcpcb {int t_inpcb; } ;
struct mbuf {int dummy; } ;
typedef int int32_t ;


 int INP_WUNLOCK (int ) ;
 int tcp_dropwithreset (struct mbuf*,struct tcphdr*,struct tcpcb*,int ,int ) ;

void
ctf_do_dropwithreset(struct mbuf *m, struct tcpcb *tp, struct tcphdr *th,
    int32_t rstreason, int32_t tlen)
{
 if (tp != ((void*)0)) {
  tcp_dropwithreset(m, th, tp, tlen, rstreason);
  INP_WUNLOCK(tp->t_inpcb);
 } else
  tcp_dropwithreset(m, th, ((void*)0), tlen, rstreason);
}
