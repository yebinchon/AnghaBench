
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vfpf_vport_update_sge_tpa_tlv {int update_sge_tpa_flags; int sge_tpa_flags; int max_buffers_per_cqe; int tpa_min_size_to_cont; int tpa_min_size_to_start; int tpa_max_size; int tpa_max_aggs_num; } ;
struct ecore_sp_vport_update_params {struct ecore_sge_tpa_params* sge_tpa_params; } ;
struct ecore_sge_tpa_params {int update_tpa_en_flg; int update_tpa_param_flg; int tpa_ipv4_en_flg; int tpa_ipv6_en_flg; int tpa_pkt_split_flg; int tpa_hdr_data_split_flg; int tpa_gro_consistent_flg; int max_buffers_per_cqe; int tpa_min_size_to_cont; int tpa_min_size_to_start; int tpa_max_size; int tpa_max_aggs_num; } ;
struct ecore_iov_vf_mbx {int req_virt; } ;
struct ecore_hwfn {int dummy; } ;


 int CHANNEL_TLV_VPORT_UPDATE_SGE_TPA ;
 int ECORE_IOV_VP_UPDATE_SGE_TPA ;
 int OSAL_MEMSET (struct ecore_sge_tpa_params*,int ,int) ;
 struct ecore_sge_tpa_params* OSAL_NULL ;
 int VFPF_TPA_GRO_CONSIST_FLAG ;
 int VFPF_TPA_HDR_DATA_SPLIT_FLAG ;
 int VFPF_TPA_IPV4_EN_FLAG ;
 int VFPF_TPA_IPV6_EN_FLAG ;
 int VFPF_TPA_PKT_SPLIT_FLAG ;
 int VFPF_UPDATE_TPA_EN_FLAG ;
 int VFPF_UPDATE_TPA_PARAM_FLAG ;
 scalar_t__ ecore_iov_search_list_tlvs (struct ecore_hwfn*,int ,int) ;

__attribute__((used)) static void
ecore_iov_vp_update_sge_tpa_param(struct ecore_hwfn *p_hwfn,
      struct ecore_sp_vport_update_params *p_data,
      struct ecore_sge_tpa_params *p_sge_tpa,
      struct ecore_iov_vf_mbx *p_mbx,
      u16 *tlvs_mask)
{
 struct vfpf_vport_update_sge_tpa_tlv *p_sge_tpa_tlv;
 u16 tlv = CHANNEL_TLV_VPORT_UPDATE_SGE_TPA;

 p_sge_tpa_tlv = (struct vfpf_vport_update_sge_tpa_tlv *)
   ecore_iov_search_list_tlvs(p_hwfn,
         p_mbx->req_virt, tlv);

 if (!p_sge_tpa_tlv) {
  p_data->sge_tpa_params = OSAL_NULL;
  return;
 }

 OSAL_MEMSET(p_sge_tpa, 0, sizeof(struct ecore_sge_tpa_params));

 p_sge_tpa->update_tpa_en_flg =
  !!(p_sge_tpa_tlv->update_sge_tpa_flags &
     VFPF_UPDATE_TPA_EN_FLAG);
 p_sge_tpa->update_tpa_param_flg =
  !!(p_sge_tpa_tlv->update_sge_tpa_flags &
     VFPF_UPDATE_TPA_PARAM_FLAG);

 p_sge_tpa->tpa_ipv4_en_flg =
  !!(p_sge_tpa_tlv->sge_tpa_flags &
     VFPF_TPA_IPV4_EN_FLAG);
 p_sge_tpa->tpa_ipv6_en_flg =
  !!(p_sge_tpa_tlv->sge_tpa_flags &
     VFPF_TPA_IPV6_EN_FLAG);
 p_sge_tpa->tpa_pkt_split_flg =
  !!(p_sge_tpa_tlv->sge_tpa_flags &
     VFPF_TPA_PKT_SPLIT_FLAG);
 p_sge_tpa->tpa_hdr_data_split_flg =
  !!(p_sge_tpa_tlv->sge_tpa_flags &
     VFPF_TPA_HDR_DATA_SPLIT_FLAG);
 p_sge_tpa->tpa_gro_consistent_flg =
  !!(p_sge_tpa_tlv->sge_tpa_flags &
     VFPF_TPA_GRO_CONSIST_FLAG);

 p_sge_tpa->tpa_max_aggs_num = p_sge_tpa_tlv->tpa_max_aggs_num;
 p_sge_tpa->tpa_max_size = p_sge_tpa_tlv->tpa_max_size;
 p_sge_tpa->tpa_min_size_to_start =
  p_sge_tpa_tlv->tpa_min_size_to_start;
 p_sge_tpa->tpa_min_size_to_cont =
  p_sge_tpa_tlv->tpa_min_size_to_cont;
 p_sge_tpa->max_buffers_per_cqe =
  p_sge_tpa_tlv->max_buffers_per_cqe;

 p_data->sge_tpa_params = p_sge_tpa;

 *tlvs_mask |= 1 << ECORE_IOV_VP_UPDATE_SGE_TPA;
}
