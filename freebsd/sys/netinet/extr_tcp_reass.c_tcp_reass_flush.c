
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tseg_qent {int tqe_m; } ;
struct tcpcb {scalar_t__ t_segqlen; scalar_t__ t_segqmbuflen; int t_segq; int t_inpcb; } ;


 int INP_WLOCK_ASSERT (int ) ;
 int KASSERT (int,char*) ;
 struct tseg_qent* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct tseg_qent*,int ) ;
 int m_freem (int ) ;
 int tcp_reass_zone ;
 int tqe_q ;
 int uma_zfree (int ,struct tseg_qent*) ;

void
tcp_reass_flush(struct tcpcb *tp)
{
 struct tseg_qent *qe;

 INP_WLOCK_ASSERT(tp->t_inpcb);

 while ((qe = TAILQ_FIRST(&tp->t_segq)) != ((void*)0)) {
  TAILQ_REMOVE(&tp->t_segq, qe, tqe_q);
  m_freem(qe->tqe_m);
  uma_zfree(tcp_reass_zone, qe);
  tp->t_segqlen--;
 }
 tp->t_segqmbuflen = 0;
 KASSERT((tp->t_segqlen == 0),
     ("TCP reass queue %p segment count is %d instead of 0 after flush.",
     tp, tp->t_segqlen));
}
