
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_vap {int dummy; } ;
struct iwm_softc {int dummy; } ;
struct iwm_mac_power_cmd {int dummy; } ;
typedef int cmd ;


 int IWM_MAC_PM_POWER_TABLE ;
 int iwm_mvm_power_build_cmd (struct iwm_softc*,struct iwm_vap*,struct iwm_mac_power_cmd*) ;
 int iwm_mvm_power_log (struct iwm_softc*,struct iwm_mac_power_cmd*) ;
 int iwm_mvm_send_cmd_pdu (struct iwm_softc*,int ,int ,int,struct iwm_mac_power_cmd*) ;

__attribute__((used)) static int
iwm_mvm_power_send_cmd(struct iwm_softc *sc, struct iwm_vap *ivp)
{
 struct iwm_mac_power_cmd cmd = {};

 iwm_mvm_power_build_cmd(sc, ivp, &cmd);
 iwm_mvm_power_log(sc, &cmd);

 return iwm_mvm_send_cmd_pdu(sc, IWM_MAC_PM_POWER_TABLE, 0,
     sizeof(cmd), &cmd);
}
