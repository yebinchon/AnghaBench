
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vfpf_vport_update_accept_param_tlv {int tx_accept_filter; int update_tx_mode; int rx_accept_filter; int update_rx_mode; } ;
struct ecore_filter_accept_flags {int tx_accept_filter; int update_tx_mode_config; int rx_accept_filter; int update_rx_mode_config; } ;
struct ecore_sp_vport_update_params {struct ecore_filter_accept_flags accept_flags; } ;
struct ecore_iov_vf_mbx {int req_virt; } ;
struct ecore_hwfn {int dummy; } ;


 int CHANNEL_TLV_VPORT_UPDATE_ACCEPT_PARAM ;
 int ECORE_IOV_VP_UPDATE_ACCEPT_PARAM ;
 scalar_t__ ecore_iov_search_list_tlvs (struct ecore_hwfn*,int ,int) ;

__attribute__((used)) static void
ecore_iov_vp_update_accept_flag(struct ecore_hwfn *p_hwfn,
    struct ecore_sp_vport_update_params *p_data,
    struct ecore_iov_vf_mbx *p_mbx, u16 *tlvs_mask)
{
 struct ecore_filter_accept_flags *p_flags = &p_data->accept_flags;
 struct vfpf_vport_update_accept_param_tlv *p_accept_tlv;
 u16 tlv = CHANNEL_TLV_VPORT_UPDATE_ACCEPT_PARAM;

 p_accept_tlv = (struct vfpf_vport_update_accept_param_tlv *)
         ecore_iov_search_list_tlvs(p_hwfn, p_mbx->req_virt,
        tlv);
 if (!p_accept_tlv)
  return;

 p_flags->update_rx_mode_config = p_accept_tlv->update_rx_mode;
 p_flags->rx_accept_filter = p_accept_tlv->rx_accept_filter;
 p_flags->update_tx_mode_config = p_accept_tlv->update_tx_mode;
 p_flags->tx_accept_filter = p_accept_tlv->tx_accept_filter;
 *tlvs_mask |= 1 << ECORE_IOV_VP_UPDATE_ACCEPT_PARAM;
}
