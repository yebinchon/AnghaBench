
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carpreq {int carpr_key; int carpr_advskew; int carpr_advbase; int carpr_vhid; int carpr_state; } ;
struct carp_softc {int sc_key; int sc_advskew; int sc_advbase; int sc_vhid; int sc_state; } ;


 int CARP_LOCK (struct carp_softc*) ;
 int CARP_UNLOCK (struct carp_softc*) ;
 int bcopy (int ,int ,int) ;
 int bzero (int ,int) ;

__attribute__((used)) static void
carp_carprcp(struct carpreq *carpr, struct carp_softc *sc, int priv)
{

 CARP_LOCK(sc);
 carpr->carpr_state = sc->sc_state;
 carpr->carpr_vhid = sc->sc_vhid;
 carpr->carpr_advbase = sc->sc_advbase;
 carpr->carpr_advskew = sc->sc_advskew;
 if (priv)
  bcopy(sc->sc_key, carpr->carpr_key, sizeof(carpr->carpr_key));
 else
  bzero(carpr->carpr_key, sizeof(carpr->carpr_key));
 CARP_UNLOCK(sc);
}
