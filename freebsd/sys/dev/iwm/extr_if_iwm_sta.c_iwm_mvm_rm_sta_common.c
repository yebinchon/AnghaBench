
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int sc_dev; } ;
struct iwm_mvm_rm_sta_cmd {int sta_id; } ;
typedef int rm_sta_cmd ;


 int IWM_REMOVE_STA ;
 int IWM_STATION_ID ;
 int device_printf (int ,char*,int ) ;
 int iwm_mvm_send_cmd_pdu (struct iwm_softc*,int ,int ,int,struct iwm_mvm_rm_sta_cmd*) ;

__attribute__((used)) static int
iwm_mvm_rm_sta_common(struct iwm_softc *sc)
{
 struct iwm_mvm_rm_sta_cmd rm_sta_cmd = {
  .sta_id = IWM_STATION_ID,
 };
 int ret;

 ret = iwm_mvm_send_cmd_pdu(sc, IWM_REMOVE_STA, 0,
       sizeof(rm_sta_cmd), &rm_sta_cmd);
 if (ret) {
  device_printf(sc->sc_dev,
      "Failed to remove station. Id=%d\n", IWM_STATION_ID);
  return ret;
 }

 return 0;
}
