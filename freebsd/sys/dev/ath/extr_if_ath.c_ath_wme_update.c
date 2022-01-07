
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {struct ath_softc* ic_softc; } ;
struct ath_softc {int dummy; } ;


 int EIO ;
 int WME_AC_BE ;
 int WME_AC_BK ;
 int WME_AC_VI ;
 int WME_AC_VO ;
 int ath_txq_update (struct ath_softc*,int ) ;

int
ath_wme_update(struct ieee80211com *ic)
{
 struct ath_softc *sc = ic->ic_softc;

 return !ath_txq_update(sc, WME_AC_BE) ||
     !ath_txq_update(sc, WME_AC_BK) ||
     !ath_txq_update(sc, WME_AC_VI) ||
     !ath_txq_update(sc, WME_AC_VO) ? EIO : 0;
}
