
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubsec_softc {int sc_freequeue; } ;
struct ubsec_q {int q_nstacked_mcrs; scalar_t__ q_crp; int * q_dst_m; int * q_src_m; struct ubsec_q** q_stacked_mcr; } ;
struct cryptop {void* crp_etype; } ;


 void* EFAULT ;
 int SIMPLEQ_INSERT_TAIL (int *,struct ubsec_q*,int ) ;
 int crypto_done (struct cryptop*) ;
 int m_freem (int *) ;
 int q_next ;

__attribute__((used)) static int
ubsec_free_q(struct ubsec_softc *sc, struct ubsec_q *q)
{
 struct ubsec_q *q2;
 struct cryptop *crp;
 int npkts;
 int i;

 npkts = q->q_nstacked_mcrs;

 for (i = 0; i < npkts; i++) {
  if(q->q_stacked_mcr[i]) {
   q2 = q->q_stacked_mcr[i];

   if ((q2->q_dst_m != ((void*)0)) && (q2->q_src_m != q2->q_dst_m))
    m_freem(q2->q_dst_m);

   crp = (struct cryptop *)q2->q_crp;

   SIMPLEQ_INSERT_TAIL(&sc->sc_freequeue, q2, q_next);

   crp->crp_etype = EFAULT;
   crypto_done(crp);
  } else {
   break;
  }
 }




 if ((q->q_dst_m != ((void*)0)) && (q->q_src_m != q->q_dst_m))
  m_freem(q->q_dst_m);

 crp = (struct cryptop *)q->q_crp;

 SIMPLEQ_INSERT_TAIL(&sc->sc_freequeue, q, q_next);

 crp->crp_etype = EFAULT;
 crypto_done(crp);
 return(0);
}
