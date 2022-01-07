
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_softc {int sc_ageinterval; int sc_timer; int sc_mh; } ;


 int callout_schedule (int *,int) ;
 int hz ;
 int mwl_hal_setkeepalive (int ) ;

__attribute__((used)) static void
mwl_agestations(void *arg)
{
 struct mwl_softc *sc = arg;

 mwl_hal_setkeepalive(sc->sc_mh);
 if (sc->sc_ageinterval != 0)
  callout_schedule(&sc->sc_timer, sc->sc_ageinterval*hz);
}
