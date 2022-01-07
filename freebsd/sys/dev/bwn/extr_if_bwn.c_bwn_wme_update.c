
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmeParams {int dummy; } ;
struct ieee80211com {struct bwn_softc* ic_softc; } ;
struct chanAccParams {struct wmeParams* cap_wmeParams; } ;
struct bwn_softc {int sc_wmeParams; struct bwn_mac* sc_curmac; } ;
struct bwn_mac {scalar_t__ mac_status; } ;


 int BWN_LOCK (struct bwn_softc*) ;
 scalar_t__ BWN_MAC_STATUS_INITED ;
 int BWN_UNLOCK (struct bwn_softc*) ;
 int N (int ) ;
 int bwn_mac_enable (struct bwn_mac*) ;
 int bwn_mac_suspend (struct bwn_mac*) ;
 int bwn_wme_loadparams (struct bwn_mac*,struct wmeParams*,int ) ;
 int * bwn_wme_shm_offsets ;
 int ieee80211_wme_ic_getparams (struct ieee80211com*,struct chanAccParams*) ;

__attribute__((used)) static int
bwn_wme_update(struct ieee80211com *ic)
{
 struct bwn_softc *sc = ic->ic_softc;
 struct bwn_mac *mac = sc->sc_curmac;
 struct chanAccParams chp;
 struct wmeParams *wmep;
 int i;

 ieee80211_wme_ic_getparams(ic, &chp);

 BWN_LOCK(sc);
 mac = sc->sc_curmac;
 if (mac != ((void*)0) && mac->mac_status >= BWN_MAC_STATUS_INITED) {
  bwn_mac_suspend(mac);
  for (i = 0; i < N(sc->sc_wmeParams); i++) {
   wmep = &chp.cap_wmeParams[i];
   bwn_wme_loadparams(mac, wmep, bwn_wme_shm_offsets[i]);
  }
  bwn_mac_enable(mac);
 }
 BWN_UNLOCK(sc);
 return (0);
}
