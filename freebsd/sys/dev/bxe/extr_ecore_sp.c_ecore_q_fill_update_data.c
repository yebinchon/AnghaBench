
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_queue_update_params {int update_flags; int silent_removal_mask; int silent_removal_value; int def_vlan; } ;
struct ecore_queue_sp_obj {int func_id; int cl_id; } ;
struct client_update_ramrod_data {void* handle_ptp_pkts_change_flg; void* handle_ptp_pkts_flg; void* tx_switching_change_flg; void* tx_switching_flg; void* silent_vlan_mask; void* silent_vlan_value; void* silent_vlan_removal_flg; void* silent_vlan_change_flg; void* default_vlan_change_flg; void* default_vlan_enable_flg; void* activate_change_flg; void* activate_flg; void* anti_spoofing_change_flg; void* anti_spoofing_enable_flg; void* outer_vlan_removal_change_flg; void* outer_vlan_removal_enable_flg; void* inner_vlan_removal_change_flg; void* inner_vlan_removal_enable_flg; void* default_vlan; int func_id; int client_id; } ;
struct bxe_softc {int dummy; } ;


 void* ECORE_CPU_TO_LE16 (int ) ;
 int ECORE_Q_UPDATE_ACTIVATE ;
 int ECORE_Q_UPDATE_ACTIVATE_CHNG ;
 int ECORE_Q_UPDATE_ANTI_SPOOF ;
 int ECORE_Q_UPDATE_ANTI_SPOOF_CHNG ;
 int ECORE_Q_UPDATE_DEF_VLAN_EN ;
 int ECORE_Q_UPDATE_DEF_VLAN_EN_CHNG ;
 int ECORE_Q_UPDATE_IN_VLAN_REM ;
 int ECORE_Q_UPDATE_IN_VLAN_REM_CHNG ;
 int ECORE_Q_UPDATE_OUT_VLAN_REM ;
 int ECORE_Q_UPDATE_OUT_VLAN_REM_CHNG ;
 int ECORE_Q_UPDATE_PTP_PKTS ;
 int ECORE_Q_UPDATE_PTP_PKTS_CHNG ;
 int ECORE_Q_UPDATE_SILENT_VLAN_REM ;
 int ECORE_Q_UPDATE_SILENT_VLAN_REM_CHNG ;
 int ECORE_Q_UPDATE_TX_SWITCHING ;
 int ECORE_Q_UPDATE_TX_SWITCHING_CHNG ;
 void* ECORE_TEST_BIT (int ,int *) ;

__attribute__((used)) static void ecore_q_fill_update_data(struct bxe_softc *sc,
         struct ecore_queue_sp_obj *obj,
         struct ecore_queue_update_params *params,
         struct client_update_ramrod_data *data)
{

 data->client_id = obj->cl_id;


 data->func_id = obj->func_id;


 data->default_vlan = ECORE_CPU_TO_LE16(params->def_vlan);


 data->inner_vlan_removal_enable_flg =
  ECORE_TEST_BIT(ECORE_Q_UPDATE_IN_VLAN_REM,
          &params->update_flags);
 data->inner_vlan_removal_change_flg =
  ECORE_TEST_BIT(ECORE_Q_UPDATE_IN_VLAN_REM_CHNG,
         &params->update_flags);


 data->outer_vlan_removal_enable_flg =
  ECORE_TEST_BIT(ECORE_Q_UPDATE_OUT_VLAN_REM,
          &params->update_flags);
 data->outer_vlan_removal_change_flg =
  ECORE_TEST_BIT(ECORE_Q_UPDATE_OUT_VLAN_REM_CHNG,
         &params->update_flags);




 data->anti_spoofing_enable_flg =
  ECORE_TEST_BIT(ECORE_Q_UPDATE_ANTI_SPOOF,
          &params->update_flags);
 data->anti_spoofing_change_flg =
  ECORE_TEST_BIT(ECORE_Q_UPDATE_ANTI_SPOOF_CHNG,
         &params->update_flags);


 data->activate_flg =
  ECORE_TEST_BIT(ECORE_Q_UPDATE_ACTIVATE, &params->update_flags);
 data->activate_change_flg =
  ECORE_TEST_BIT(ECORE_Q_UPDATE_ACTIVATE_CHNG,
          &params->update_flags);


 data->default_vlan_enable_flg =
  ECORE_TEST_BIT(ECORE_Q_UPDATE_DEF_VLAN_EN,
          &params->update_flags);
 data->default_vlan_change_flg =
  ECORE_TEST_BIT(ECORE_Q_UPDATE_DEF_VLAN_EN_CHNG,
         &params->update_flags);


 data->silent_vlan_change_flg =
  ECORE_TEST_BIT(ECORE_Q_UPDATE_SILENT_VLAN_REM_CHNG,
          &params->update_flags);
 data->silent_vlan_removal_flg =
  ECORE_TEST_BIT(ECORE_Q_UPDATE_SILENT_VLAN_REM,
          &params->update_flags);
 data->silent_vlan_value = ECORE_CPU_TO_LE16(params->silent_removal_value);
 data->silent_vlan_mask = ECORE_CPU_TO_LE16(params->silent_removal_mask);


 data->tx_switching_flg =
  ECORE_TEST_BIT(ECORE_Q_UPDATE_TX_SWITCHING,
          &params->update_flags);
 data->tx_switching_change_flg =
  ECORE_TEST_BIT(ECORE_Q_UPDATE_TX_SWITCHING_CHNG,
          &params->update_flags);


 data->handle_ptp_pkts_flg =
  ECORE_TEST_BIT(ECORE_Q_UPDATE_PTP_PKTS,
          &params->update_flags);
 data->handle_ptp_pkts_change_flg =
  ECORE_TEST_BIT(ECORE_Q_UPDATE_PTP_PKTS_CHNG,
          &params->update_flags);
}
