
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_softc {int sc_dev; int * sc_pmu; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;
typedef int bhnd_clock ;


 int BHND_CLOCK_DYN ;
 int BHND_CLOCK_HT ;
 int bhnd_request_clock (int ,int ) ;
 int device_printf (int ,char*,int ,int) ;

__attribute__((used)) static int
bwn_core_forceclk(struct bwn_mac *mac, bool force)
{
 struct bwn_softc *sc;
 bhnd_clock clock;
 int error;

 sc = mac->mac_sc;


 if (sc->sc_pmu != ((void*)0))
  return (0);


 if (force)
  clock = BHND_CLOCK_HT;
 else
  clock = BHND_CLOCK_DYN;

 if ((error = bhnd_request_clock(sc->sc_dev, clock))) {
  device_printf(sc->sc_dev, "%d clock request failed: %d\n",
      clock, error);
  return (error);
 }

 return (0);
}
