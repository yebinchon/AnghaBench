
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211com {int ic_curchan; } ;
struct mwl_softc {int sc_mh; struct ieee80211com sc_ic; } ;
struct ieee80211_rateset {int* rs_rates; } ;
typedef int rates ;
struct TYPE_4__ {int MgtRate; int McastRate; } ;
typedef TYPE_1__ MWL_HAL_TXRATE ;


 int IEEE80211_RATE_VAL ;
 struct ieee80211_rateset* ieee80211_get_suprates (struct ieee80211com*,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int mwl_hal_settxrate_auto (int ,TYPE_1__*) ;

__attribute__((used)) static int
mwl_setcurchanrates(struct mwl_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 const struct ieee80211_rateset *rs;
 MWL_HAL_TXRATE rates;

 memset(&rates, 0, sizeof(rates));
 rs = ieee80211_get_suprates(ic, ic->ic_curchan);

 rates.MgtRate = rs->rs_rates[0] & IEEE80211_RATE_VAL;

 rates.McastRate = rates.MgtRate;

 return mwl_hal_settxrate_auto(sc->sc_mh, &rates);
}
