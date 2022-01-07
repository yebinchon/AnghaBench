
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubsec_softc {scalar_t__ sc_nqchip; int sc_qchip; } ;
struct ubsec_q {int dummy; } ;


 int SIMPLEQ_EMPTY (int *) ;
 struct ubsec_q* SIMPLEQ_FIRST (int *) ;
 int SIMPLEQ_REMOVE_HEAD (int *,int ) ;
 int q_next ;
 int ubsec_free_q (struct ubsec_softc*,struct ubsec_q*) ;

__attribute__((used)) static void
ubsec_cleanchip(struct ubsec_softc *sc)
{
 struct ubsec_q *q;

 while (!SIMPLEQ_EMPTY(&sc->sc_qchip)) {
  q = SIMPLEQ_FIRST(&sc->sc_qchip);
  SIMPLEQ_REMOVE_HEAD(&sc->sc_qchip, q_next);
  ubsec_free_q(sc, q);
 }
 sc->sc_nqchip = 0;
}
