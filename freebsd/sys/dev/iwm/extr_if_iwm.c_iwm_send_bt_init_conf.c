
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int dummy; } ;
struct iwm_bt_coex_cmd {void* enabled_modules; void* mode; } ;
typedef int bt_cmd ;


 int IWM_BT_COEX_HIGH_BAND_RET ;
 int IWM_BT_COEX_WIFI ;
 int IWM_BT_CONFIG ;
 void* htole32 (int ) ;
 int iwm_mvm_send_cmd_pdu (struct iwm_softc*,int ,int ,int,struct iwm_bt_coex_cmd*) ;

__attribute__((used)) static int
iwm_send_bt_init_conf(struct iwm_softc *sc)
{
 struct iwm_bt_coex_cmd bt_cmd;

 bt_cmd.mode = htole32(IWM_BT_COEX_WIFI);
 bt_cmd.enabled_modules = htole32(IWM_BT_COEX_HIGH_BAND_RET);

 return iwm_mvm_send_cmd_pdu(sc, IWM_BT_CONFIG, 0, sizeof(bt_cmd),
     &bt_cmd);
}
