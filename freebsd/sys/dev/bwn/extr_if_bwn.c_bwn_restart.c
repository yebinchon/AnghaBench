
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct bwn_softc {int sc_dev; struct ieee80211com sc_ic; } ;
struct bwn_mac {scalar_t__ mac_status; int mac_hwreset; struct bwn_softc* mac_sc; } ;


 scalar_t__ BWN_MAC_STATUS_INITED ;
 int device_printf (int ,char*,char const*) ;
 int ieee80211_runtask (struct ieee80211com*,int *) ;

__attribute__((used)) static void
bwn_restart(struct bwn_mac *mac, const char *msg)
{
 struct bwn_softc *sc = mac->mac_sc;
 struct ieee80211com *ic = &sc->sc_ic;

 if (mac->mac_status < BWN_MAC_STATUS_INITED)
  return;

 device_printf(sc->sc_dev, "HW reset: %s\n", msg);
 ieee80211_runtask(ic, &mac->mac_hwreset);
}
