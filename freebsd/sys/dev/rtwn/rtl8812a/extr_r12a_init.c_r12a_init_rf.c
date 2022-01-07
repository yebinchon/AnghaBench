
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int nrxchains; int * rf_prog; } ;


 scalar_t__ r92c_init_rf_chain (struct rtwn_softc*,int *,int) ;

void
r12a_init_rf(struct rtwn_softc *sc)
{
 int chain, i;

 for (chain = 0, i = 0; chain < sc->nrxchains; chain++, i++) {

  i += r92c_init_rf_chain(sc, &sc->rf_prog[i], chain);
 }
}
