
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_vap {int dummy; } ;
struct iwm_softc {int dummy; } ;
struct iwm_beacon_filter_cmd {int bf_enable_beacon_filter; int member_0; } ;


 int IWM_BF_CMD_CONFIG_DEFAULTS ;
 int _iwm_mvm_enable_beacon_filter (struct iwm_softc*,struct iwm_vap*,struct iwm_beacon_filter_cmd*) ;
 int htole32 (int) ;

int
iwm_mvm_enable_beacon_filter(struct iwm_softc *sc, struct iwm_vap *ivp)
{
 struct iwm_beacon_filter_cmd cmd = {
  IWM_BF_CMD_CONFIG_DEFAULTS,
  .bf_enable_beacon_filter = htole32(1),
 };

 return _iwm_mvm_enable_beacon_filter(sc, ivp, &cmd);
}
