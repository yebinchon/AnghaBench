
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ieee80211com {int ic_macaddr; } ;
struct ath_softc {struct ath_hal* sc_ah; struct ieee80211com sc_ic; } ;
struct ath_hal {int dummy; } ;


 int ath_calcrxfilter (struct ath_softc*) ;
 int ath_hal_setmac (struct ath_hal*,int ) ;
 int ath_hal_setopmode (struct ath_hal*) ;
 int ath_hal_setrxfilter (struct ath_hal*,int ) ;
 int ath_update_mcast_hw (struct ath_softc*) ;

void
ath_mode_init(struct ath_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ath_hal *ah = sc->sc_ah;
 u_int32_t rfilt;




 rfilt = ath_calcrxfilter(sc);
 ath_hal_setrxfilter(ah, rfilt);


 ath_hal_setopmode(ah);


 ath_hal_setmac(ah, ic->ic_macaddr);


 ath_update_mcast_hw(sc);
}
