
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zyd_rf {int (* switch_radio ) (struct zyd_rf*,int) ;} ;
struct zyd_softc {struct zyd_rf sc_rf; } ;


 int stub1 (struct zyd_rf*,int) ;
 int zyd_lock_phy (struct zyd_softc*) ;
 int zyd_unlock_phy (struct zyd_softc*) ;

__attribute__((used)) static int
zyd_switch_radio(struct zyd_softc *sc, int on)
{
 struct zyd_rf *rf = &sc->sc_rf;
 int error;

 error = zyd_lock_phy(sc);
 if (error != 0)
  goto fail;
 error = (*rf->switch_radio)(rf, on);
 if (error != 0)
  goto fail;
 error = zyd_unlock_phy(sc);
fail:
 return (error);
}
