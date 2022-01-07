
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_inpcb; } ;
struct mbuf {int dummy; } ;


 int INP_WUNLOCK (int ) ;
 int m_freem (struct mbuf*) ;

void
ctf_do_drop(struct mbuf *m, struct tcpcb *tp)
{




 if (tp != ((void*)0))
  INP_WUNLOCK(tp->t_inpcb);
 if (m)
  m_freem(m);
}
