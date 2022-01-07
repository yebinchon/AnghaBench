
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct vfpf_vport_start_tlv {int max_buffers_per_cqe; int zero_placement_offset; int inner_vlan_removal; int tpa_mode; int only_untagged; int mtu; int * sb_addr; } ;
struct pfvf_def_resp_tlv {int dummy; } ;
struct TYPE_8__ {TYPE_3__* p_virt; } ;
struct TYPE_6__ {int inner_vlan_removal; } ;
struct ecore_iov_vf_mbx {TYPE_1__* req_virt; } ;
struct ecore_vf_info {int num_sbs; int req_spoofchk_val; int opaque_fid; int vport_id; scalar_t__ relative_vf_id; int vport_instance; int mtu; int concrete_fid; TYPE_4__ bulletin; TYPE_2__ shadow_config; int abs_vf_id; int * igu_sbs; int state; struct ecore_iov_vf_mbx vf_mbx; } ;
struct ecore_sp_vport_start_params {int tx_switching; int drop_ttl0; int check_mac; int mtu; int max_buffers_per_cqe; int vport_id; int opaque_fid; int concrete_fid; int only_untagged; int zero_placement_offset; int remove_inner_vlan; int tpa_mode; int member_0; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_7__ {int valid_bitmap; int default_only_untagged; } ;
struct TYPE_5__ {struct vfpf_vport_start_tlv start_vport; } ;


 int CHANNEL_TLV_VPORT_START ;
 scalar_t__ CHIP_REV_IS_FPGA (int ) ;
 int DP_ERR (struct ecore_hwfn*,char*,int) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,...) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,scalar_t__,int) ;
 int ECORE_MSG_IOV ;
 int ECORE_SUCCESS ;
 int OSAL_IOV_POST_START_VPORT (struct ecore_hwfn*,scalar_t__,int ,int ) ;
 int OSAL_IOV_PRE_START_VPORT (struct ecore_hwfn*,scalar_t__,struct ecore_sp_vport_start_params*) ;
 int PFVF_STATUS_FAILURE ;
 int PFVF_STATUS_SUCCESS ;
 int VFPF_BULLETIN_UNTAGGED_DEFAULT ;
 int VFPF_BULLETIN_UNTAGGED_DEFAULT_FORCED ;
 int VF_ENABLED ;
 int __ecore_iov_spoofchk_set (struct ecore_hwfn*,struct ecore_vf_info*,int ) ;
 int ecore_int_cau_conf_sb (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,int ,int) ;
 int ecore_iov_configure_vport_forced (struct ecore_hwfn*,struct ecore_vf_info*,int) ;
 int ecore_iov_enable_vf_traffic (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*) ;
 struct ecore_vf_info* ecore_iov_get_vf_info (struct ecore_hwfn*,int ,int) ;
 int ecore_iov_prepare_resp (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,int ,int,int ) ;
 int ecore_sp_eth_vport_start (struct ecore_hwfn*,struct ecore_sp_vport_start_params*) ;

__attribute__((used)) static void ecore_iov_vf_mbx_start_vport(struct ecore_hwfn *p_hwfn,
      struct ecore_ptt *p_ptt,
      struct ecore_vf_info *vf)
{
 struct ecore_sp_vport_start_params params = {0};
 struct ecore_iov_vf_mbx *mbx = &vf->vf_mbx;
 struct vfpf_vport_start_tlv *start;
 u8 status = PFVF_STATUS_SUCCESS;
 struct ecore_vf_info *vf_info;
 u64 *p_bitmap;
 int sb_id;
 enum _ecore_status_t rc;

 vf_info = ecore_iov_get_vf_info(p_hwfn, (u16)vf->relative_vf_id, 1);
 if (!vf_info) {
  DP_NOTICE(p_hwfn->p_dev, 1,
     "Failed to get VF info, invalid vfid [%d]\n",
     vf->relative_vf_id);
  return;
 }

 vf->state = VF_ENABLED;
 start = &mbx->req_virt->start_vport;

 ecore_iov_enable_vf_traffic(p_hwfn, p_ptt, vf);


 for (sb_id = 0; sb_id < vf->num_sbs; sb_id++) {
  if (!start->sb_addr[sb_id]) {
   DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
       "VF[%d] did not fill the address of SB %d\n",
       vf->relative_vf_id, sb_id);
   break;
  }

  ecore_int_cau_conf_sb(p_hwfn, p_ptt,
          start->sb_addr[sb_id],
          vf->igu_sbs[sb_id],
          vf->abs_vf_id, 1);
 }

 vf->mtu = start->mtu;
 vf->shadow_config.inner_vlan_removal = start->inner_vlan_removal;





 p_bitmap = &vf_info->bulletin.p_virt->valid_bitmap;
 if (!(*p_bitmap & (1 << VFPF_BULLETIN_UNTAGGED_DEFAULT_FORCED))) {
  u8 vf_req = start->only_untagged;

  vf_info->bulletin.p_virt->default_only_untagged = vf_req;
  *p_bitmap |= 1 << VFPF_BULLETIN_UNTAGGED_DEFAULT;
 }

 params.tpa_mode = start->tpa_mode;
 params.remove_inner_vlan = start->inner_vlan_removal;
 params.tx_switching = 1;
 params.zero_placement_offset = start->zero_placement_offset;


 if (CHIP_REV_IS_FPGA(p_hwfn->p_dev)) {
  DP_NOTICE(p_hwfn, 0, "FPGA: Don't configure VF for Tx-switching [no pVFC]\n");
  params.tx_switching = 0;
 }


 params.only_untagged = vf_info->bulletin.p_virt->default_only_untagged;
 params.drop_ttl0 = 0;
 params.concrete_fid = vf->concrete_fid;
 params.opaque_fid = vf->opaque_fid;
 params.vport_id = vf->vport_id;
 params.max_buffers_per_cqe = start->max_buffers_per_cqe;
 params.mtu = vf->mtu;
 params.check_mac = 1;


 rc = OSAL_IOV_PRE_START_VPORT(p_hwfn, vf->relative_vf_id, &params);
 if (rc != ECORE_SUCCESS) {
  DP_ERR(p_hwfn, "OSAL_IOV_PRE_START_VPORT returned error %d\n", rc);
  status = PFVF_STATUS_FAILURE;
  goto exit;
 }


 rc = ecore_sp_eth_vport_start(p_hwfn, &params);
 if (rc != ECORE_SUCCESS) {
  DP_ERR(p_hwfn, "ecore_iov_vf_mbx_start_vport returned error %d\n", rc);
  status = PFVF_STATUS_FAILURE;
 } else {
  vf->vport_instance++;


  ecore_iov_configure_vport_forced(p_hwfn, vf, *p_bitmap);
  OSAL_IOV_POST_START_VPORT(p_hwfn, vf->relative_vf_id,
       vf->vport_id, vf->opaque_fid);
  __ecore_iov_spoofchk_set(p_hwfn, vf, vf->req_spoofchk_val);
 }

exit:

 ecore_iov_prepare_resp(p_hwfn, p_ptt, vf, CHANNEL_TLV_VPORT_START,
          sizeof(struct pfvf_def_resp_tlv), status);
}
