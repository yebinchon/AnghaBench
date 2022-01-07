
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwm_softc {int dummy; } ;
struct ieee80211vap {int dummy; } ;


 int iwm_mvm_mac_ctxt_cmd_station (struct iwm_softc*,struct ieee80211vap*,int ) ;

__attribute__((used)) static int
iwm_mvm_mac_ctx_send(struct iwm_softc *sc, struct ieee80211vap *vap,
    uint32_t action)
{
 return iwm_mvm_mac_ctxt_cmd_station(sc, vap, action);
}
