
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211com {int ic_opmode; } ;
struct zyd_softc {struct ieee80211com sc_ic; } ;


 int EINVAL ;




 int ZYD_FILTER_BSS ;
 int ZYD_FILTER_HOSTAP ;
 int ZYD_FILTER_MONITOR ;
 int ZYD_MAC_RXFILTER ;
 int zyd_write32 (struct zyd_softc*,int ,int ) ;

__attribute__((used)) static int
zyd_set_rxfilter(struct zyd_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t rxfilter;

 switch (ic->ic_opmode) {
 case 128:
  rxfilter = ZYD_FILTER_BSS;
  break;
 case 130:
 case 131:
  rxfilter = ZYD_FILTER_HOSTAP;
  break;
 case 129:
  rxfilter = ZYD_FILTER_MONITOR;
  break;
 default:

  return (EINVAL);
 }
 return zyd_write32(sc, ZYD_MAC_RXFILTER, rxfilter);
}
