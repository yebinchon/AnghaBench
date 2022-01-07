
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ic_vaps; } ;
struct iwm_softc {TYPE_1__ sc_ic; } ;
struct ieee80211vap {int dummy; } ;


 int IWM_VAP (struct ieee80211vap*) ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int iwm_mvm_power_send_cmd (struct iwm_softc*,int ) ;
 int iwm_mvm_power_set_ba (struct iwm_softc*,int ) ;
 int iwm_mvm_power_set_ps (struct iwm_softc*) ;

int
iwm_mvm_power_update_mac(struct iwm_softc *sc)
{
 struct ieee80211vap *vap = TAILQ_FIRST(&sc->sc_ic.ic_vaps);
 int ret;

 ret = iwm_mvm_power_set_ps(sc);
 if (ret)
  return ret;

 if (vap != ((void*)0)) {
  ret = iwm_mvm_power_send_cmd(sc, IWM_VAP(vap));
  if (ret)
   return ret;
 }

 if (vap != ((void*)0))
  return iwm_mvm_power_set_ba(sc, IWM_VAP(vap));

 return 0;
}
