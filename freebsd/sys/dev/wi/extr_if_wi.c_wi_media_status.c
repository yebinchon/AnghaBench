
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
typedef int u_int16_t ;
struct wi_softc {scalar_t__ sc_firmware_type; scalar_t__ sc_enabled; } ;
struct ifnet {struct ieee80211vap* if_softc; } ;
struct ifmediareq {int dummy; } ;
struct ieee80211vap {TYPE_1__* iv_bss; struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct wi_softc* ic_softc; } ;
struct TYPE_2__ {int ni_txrate; } ;


 scalar_t__ WI_LUCENT ;
 int WI_RID_CUR_TX_RATE ;
 int ieee80211_media_status (struct ifnet*,struct ifmediareq*) ;
 int le16toh (int) ;
 scalar_t__ wi_read_rid (struct wi_softc*,int ,int*,int*) ;

__attribute__((used)) static void
wi_media_status(struct ifnet *ifp, struct ifmediareq *imr)
{
 struct ieee80211vap *vap = ifp->if_softc;
 struct ieee80211com *ic = vap->iv_ic;
 struct wi_softc *sc = ic->ic_softc;
 u_int16_t val;
 int rate, len;

 len = sizeof(val);
 if (sc->sc_enabled &&
     wi_read_rid(sc, WI_RID_CUR_TX_RATE, &val, &len) == 0 &&
     len == sizeof(val)) {

  val = le16toh(val);
  rate = val * 2;
  if (sc->sc_firmware_type == WI_LUCENT) {
   if (rate == 10)
    rate = 11;
  } else {
   if (rate == 4*2)
    rate = 11;
   else if (rate == 8*2)
    rate = 22;
  }
  vap->iv_bss->ni_txrate = rate;
 }
 ieee80211_media_status(ifp, imr);
}
