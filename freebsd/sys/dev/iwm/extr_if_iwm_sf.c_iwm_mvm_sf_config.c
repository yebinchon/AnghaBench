
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwm_softc {int sf_state; int sc_dev; TYPE_1__* cfg; } ;
struct iwm_sf_cfg_cmd {int state; } ;
struct ieee80211_node {int dummy; } ;
typedef int sf_cmd ;
typedef enum iwm_sf_state { ____Placeholder_iwm_sf_state } iwm_sf_state ;
struct TYPE_2__ {scalar_t__ disable_dummy_notification; } ;


 int EINVAL ;
 int IWM_CMD_ASYNC ;
 int IWM_REPLY_SF_CFG_CMD ;
 int IWM_SF_CFG_DUMMY_NOTIF_OFF ;



 int device_printf (int ,char*,int) ;
 int htole32 (int) ;
 int iwm_mvm_fill_sf_command (struct iwm_softc*,struct iwm_sf_cfg_cmd*,struct ieee80211_node*) ;
 int iwm_mvm_send_cmd_pdu (struct iwm_softc*,int ,int ,int,struct iwm_sf_cfg_cmd*) ;

__attribute__((used)) static int
iwm_mvm_sf_config(struct iwm_softc *sc, struct ieee80211_node *ni,
 enum iwm_sf_state new_state)
{
 struct iwm_sf_cfg_cmd sf_cmd = {
  .state = htole32(new_state),
 };
 int ret = 0;
 if (new_state != 130 && sc->sf_state == new_state)
  return 0;

 switch (new_state) {
 case 128:
  iwm_mvm_fill_sf_command(sc, &sf_cmd, ((void*)0));
  break;
 case 130:
  iwm_mvm_fill_sf_command(sc, &sf_cmd, ni);
  break;
 case 129:
  iwm_mvm_fill_sf_command(sc, &sf_cmd, ((void*)0));
  break;
 default:
  device_printf(sc->sc_dev,
      "Invalid state: %d. not sending Smart Fifo cmd\n",
      new_state);
  return EINVAL;
 }

 ret = iwm_mvm_send_cmd_pdu(sc, IWM_REPLY_SF_CFG_CMD, IWM_CMD_ASYNC,
       sizeof(sf_cmd), &sf_cmd);
 if (!ret)
  sc->sf_state = new_state;

 return ret;
}
