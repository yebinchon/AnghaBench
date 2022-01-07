
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int sc_flags; int rcr; } ;


 int R92C_RCR ;
 int RTWN_RCR_LOCKED ;
 int rtwn_write_4 (struct rtwn_softc*,int ,int ) ;

void
rtwn_rxfilter_set(struct rtwn_softc *sc)
{
 if (!(sc->sc_flags & RTWN_RCR_LOCKED))
  rtwn_write_4(sc, R92C_RCR, sc->rcr);
}
