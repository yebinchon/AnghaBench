
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int dummy; } ;
struct ieee80211vap {int dummy; } ;


 int iwm_mvm_rm_sta_common (struct iwm_softc*) ;

int
iwm_mvm_rm_sta_id(struct iwm_softc *sc, struct ieee80211vap *vap)
{


 return iwm_mvm_rm_sta_common(sc);
}
