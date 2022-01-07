
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ic_nrunning; } ;
struct bwn_softc {TYPE_1__ sc_ic; } ;
typedef int device_t ;


 int BWN_LOCK (struct bwn_softc*) ;
 int BWN_UNLOCK (struct bwn_softc*) ;
 int EDOOFUS ;
 int bwn_init (struct bwn_softc*) ;
 struct bwn_softc* device_get_softc (int ) ;
 int ieee80211_start_all (TYPE_1__*) ;

__attribute__((used)) static int
bwn_resume(device_t dev)
{
 struct bwn_softc *sc = device_get_softc(dev);
 int error = EDOOFUS;

 BWN_LOCK(sc);
 if (sc->sc_ic.ic_nrunning > 0)
  error = bwn_init(sc);
 BWN_UNLOCK(sc);
 if (error == 0)
  ieee80211_start_all(&sc->sc_ic);
 return (0);
}
