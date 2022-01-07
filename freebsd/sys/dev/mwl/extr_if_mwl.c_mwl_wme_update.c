
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_softc {int dummy; } ;
struct ieee80211com {struct mwl_softc* ic_softc; } ;


 int EIO ;
 int WME_AC_BE ;
 int WME_AC_BK ;
 int WME_AC_VI ;
 int WME_AC_VO ;
 int mwl_txq_update (struct mwl_softc*,int ) ;

__attribute__((used)) static int
mwl_wme_update(struct ieee80211com *ic)
{
 struct mwl_softc *sc = ic->ic_softc;

 return !mwl_txq_update(sc, WME_AC_BE) ||
     !mwl_txq_update(sc, WME_AC_BK) ||
     !mwl_txq_update(sc, WME_AC_VI) ||
     !mwl_txq_update(sc, WME_AC_VO) ? EIO : 0;
}
