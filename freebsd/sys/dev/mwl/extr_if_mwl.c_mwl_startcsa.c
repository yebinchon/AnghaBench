
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_softc {int sc_csapending; int sc_mh; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_csa_count; int ic_csa_newchan; struct mwl_softc* ic_softc; } ;
typedef int MWL_HAL_CHANNEL ;


 int mwl_hal_setchannelswitchie (int ,int *,int,int ) ;
 int mwl_mapchan (int *,int ) ;

__attribute__((used)) static void
mwl_startcsa(struct ieee80211vap *vap)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct mwl_softc *sc = ic->ic_softc;
 MWL_HAL_CHANNEL hchan;

 if (sc->sc_csapending)
  return;

 mwl_mapchan(&hchan, ic->ic_csa_newchan);

 mwl_hal_setchannelswitchie(sc->sc_mh, &hchan, 1, ic->ic_csa_count);
 sc->sc_csapending = 1;
}
