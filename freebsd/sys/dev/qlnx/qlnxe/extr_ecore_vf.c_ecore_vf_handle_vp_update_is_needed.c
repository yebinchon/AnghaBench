
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int update_tx_mode_config; int update_rx_mode_config; } ;
struct ecore_sp_vport_update_params {int sge_tpa_params; int rss_params; TYPE_1__ accept_flags; int update_approx_mcast_flg; int update_accept_any_vlan_flg; int update_inner_vlan_removal_flg; int update_tx_switching_flg; int update_vport_active_tx_flg; int update_vport_active_rx_flg; } ;
struct ecore_hwfn {int p_dev; } ;
 int CHIP_REV_IS_FPGA (int ) ;
 int DP_INFO (struct ecore_hwfn*,char*,int,int ) ;
 int * ecore_channel_tlvs_string ;

__attribute__((used)) static bool
ecore_vf_handle_vp_update_is_needed(struct ecore_hwfn *p_hwfn,
        struct ecore_sp_vport_update_params *p_data,
        u16 tlv)
{
 switch (tlv) {
 case 133:
  return !!(p_data->update_vport_active_rx_flg ||
     p_data->update_vport_active_tx_flg);
 case 129:


  return !!(p_data->update_tx_switching_flg &&
     !CHIP_REV_IS_FPGA(p_hwfn->p_dev));



 case 128:
  return !!p_data->update_inner_vlan_removal_flg;
 case 135:
  return !!p_data->update_accept_any_vlan_flg;
 case 132:
  return !!p_data->update_approx_mcast_flg;
 case 134:
  return !!(p_data->accept_flags.update_rx_mode_config ||
     p_data->accept_flags.update_tx_mode_config);
 case 131:
  return !!p_data->rss_params;
 case 130:
  return !!p_data->sge_tpa_params;
 default:
  DP_INFO(p_hwfn, "Unexpected vport-update TLV[%d] %s\n",
   tlv, ecore_channel_tlvs_string[tlv]);
  return 0;
 }
}
