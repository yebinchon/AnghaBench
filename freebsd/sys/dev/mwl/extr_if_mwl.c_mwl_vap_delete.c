
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwl_vap {struct mwl_hal_vap* mv_hvap; } ;
struct mwl_softc {int sc_imask; scalar_t__ sc_running; int sc_nwdsvaps; int sc_nstavaps; int sc_napvaps; struct mwl_hal* sc_mh; } ;
struct mwl_hal_vap {int dummy; } ;
struct mwl_hal {int dummy; } ;
struct ieee80211vap {int iv_opmode; int iv_myaddr; TYPE_1__* iv_ic; } ;
typedef enum ieee80211_opmode { ____Placeholder_ieee80211_opmode } ieee80211_opmode ;
struct TYPE_2__ {struct mwl_softc* ic_softc; } ;






 int KASSERT (int ,char*) ;
 struct mwl_vap* MWL_VAP (struct ieee80211vap*) ;
 int M_80211_VAP ;
 int free (struct mwl_vap*,int ) ;
 int ieee80211_vap_detach (struct ieee80211vap*) ;
 int mwl_cleartxq (struct mwl_softc*,struct ieee80211vap*) ;
 int mwl_hal_delstation (struct mwl_hal_vap*,int ) ;
 int mwl_hal_delvap (struct mwl_hal_vap*) ;
 int mwl_hal_intrset (struct mwl_hal*,int ) ;
 int reclaim_address (struct mwl_softc*,int ) ;

__attribute__((used)) static void
mwl_vap_delete(struct ieee80211vap *vap)
{
 struct mwl_vap *mvp = MWL_VAP(vap);
 struct mwl_softc *sc = vap->iv_ic->ic_softc;
 struct mwl_hal *mh = sc->sc_mh;
 struct mwl_hal_vap *hvap = mvp->mv_hvap;
 enum ieee80211_opmode opmode = vap->iv_opmode;


 if (sc->sc_running) {

  mwl_hal_intrset(mh, 0);
 }
 ieee80211_vap_detach(vap);
 switch (opmode) {
 case 131:
 case 130:
 case 129:
  KASSERT(hvap != ((void*)0), ("no hal vap handle"));
  (void) mwl_hal_delstation(hvap, vap->iv_myaddr);
  mwl_hal_delvap(hvap);
  if (opmode == 131 || opmode == 130)
   sc->sc_napvaps--;
  else
   sc->sc_nstavaps--;

  reclaim_address(sc, vap->iv_myaddr);
  break;
 case 128:
  sc->sc_nwdsvaps--;
  break;
 default:
  break;
 }
 mwl_cleartxq(sc, vap);
 free(mvp, M_80211_VAP);
 if (sc->sc_running)
  mwl_hal_intrset(mh, sc->sc_imask);
}
