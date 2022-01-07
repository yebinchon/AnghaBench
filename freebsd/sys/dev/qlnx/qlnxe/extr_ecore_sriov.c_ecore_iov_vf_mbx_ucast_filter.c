
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct vfpf_ucast_filter_tlv {int vlan; int mac; scalar_t__ type; scalar_t__ opcode; } ;
struct pfvf_def_resp_tlv {int dummy; } ;
struct ecore_iov_vf_mbx {TYPE_2__* req_virt; } ;
struct TYPE_3__ {struct ecore_bulletin_content* p_virt; } ;
struct ecore_vf_info {int opaque_fid; int relative_vf_id; int abs_vf_id; int vport_instance; int vport_id; struct ecore_iov_vf_mbx vf_mbx; TYPE_1__ bulletin; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_filter_ucast {int opcode; int type; int is_rx_filter; int is_tx_filter; int * mac; int vlan; int vport_to_add_to; int vport_to_remove_from; } ;
struct ecore_bulletin_content {int valid_bitmap; int mac; } ;
typedef enum ecore_filter_ucast_type { ____Placeholder_ecore_filter_ucast_type } ecore_filter_ucast_type ;
typedef enum ecore_filter_opcode { ____Placeholder_ecore_filter_opcode } ecore_filter_opcode ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_4__ {struct vfpf_ucast_filter_tlv ucast_filter; } ;


 int CHANNEL_TLV_UCAST_FILTER ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,...) ;
 int ECORE_EXISTS ;
 scalar_t__ ECORE_FILTER_ADD ;
 scalar_t__ ECORE_FILTER_MAC ;
 scalar_t__ ECORE_FILTER_MAC_VLAN ;
 scalar_t__ ECORE_FILTER_REPLACE ;
 scalar_t__ ECORE_FILTER_VLAN ;
 int ECORE_INVAL ;
 int ECORE_MSG_IOV ;
 int ECORE_SPQ_MODE_CB ;
 scalar_t__ ECORE_SUCCESS ;
 int ETH_ALEN ;
 int MAC_ADDR_FORCED ;
 int OSAL_IOV_CHK_UCAST (struct ecore_hwfn*,int ,struct ecore_filter_ucast*) ;
 scalar_t__ OSAL_MEMCMP (int ,int *,int ) ;
 int OSAL_MEMCPY (int *,int ,int ) ;
 int OSAL_MEMSET (struct ecore_filter_ucast*,int ,int) ;
 int OSAL_NULL ;
 int PFVF_STATUS_FAILURE ;
 int PFVF_STATUS_FORCED ;
 int PFVF_STATUS_SUCCESS ;
 int VLAN_ADDR_FORCED ;
 int ecore_iov_prepare_resp (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,int ,int,int ) ;
 scalar_t__ ecore_iov_vf_update_unicast_shadow (struct ecore_hwfn*,struct ecore_vf_info*,struct ecore_filter_ucast*) ;
 int ecore_sp_eth_filter_ucast (struct ecore_hwfn*,int ,struct ecore_filter_ucast*,int ,int ) ;

__attribute__((used)) static void ecore_iov_vf_mbx_ucast_filter(struct ecore_hwfn *p_hwfn,
       struct ecore_ptt *p_ptt,
       struct ecore_vf_info *vf)
{
 struct ecore_bulletin_content *p_bulletin = vf->bulletin.p_virt;
 struct ecore_iov_vf_mbx *mbx = &vf->vf_mbx;
 struct vfpf_ucast_filter_tlv *req;
 u8 status = PFVF_STATUS_SUCCESS;
 struct ecore_filter_ucast params;
 enum _ecore_status_t rc;


 OSAL_MEMSET(&params, 0, sizeof(struct ecore_filter_ucast));
 req = &mbx->req_virt->ucast_filter;
 params.opcode = (enum ecore_filter_opcode)req->opcode;
 params.type = (enum ecore_filter_ucast_type)req->type;


 params.is_rx_filter = 1;
 params.is_tx_filter = 1;
 params.vport_to_remove_from = vf->vport_id;
 params.vport_to_add_to = vf->vport_id;
 OSAL_MEMCPY(params.mac, req->mac, ETH_ALEN);
 params.vlan = req->vlan;

 DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
     "VF[%d]: opcode 0x%02x type 0x%02x [%s %s] [vport 0x%02x] MAC %02x:%02x:%02x:%02x:%02x:%02x, vlan 0x%04x\n",
     vf->abs_vf_id, params.opcode, params.type,
     params.is_rx_filter ? "RX" : "",
     params.is_tx_filter ? "TX" : "",
     params.vport_to_add_to,
     params.mac[0], params.mac[1], params.mac[2],
     params.mac[3], params.mac[4], params.mac[5], params.vlan);

 if (!vf->vport_instance) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
      "No VPORT instance available for VF[%d], failing ucast MAC configuration\n",
      vf->abs_vf_id);
  status = PFVF_STATUS_FAILURE;
  goto out;
 }





 if (ecore_iov_vf_update_unicast_shadow(p_hwfn, vf, &params) !=
     ECORE_SUCCESS)
  goto out;


 if ((p_bulletin->valid_bitmap & (1 << VLAN_ADDR_FORCED)) &&
     (params.type == ECORE_FILTER_VLAN ||
      params.type == ECORE_FILTER_MAC_VLAN)) {



  if (params.opcode == ECORE_FILTER_ADD ||
      params.opcode == ECORE_FILTER_REPLACE)
   status = PFVF_STATUS_FORCED;
  goto out;
 }

 if ((p_bulletin->valid_bitmap & (1 << MAC_ADDR_FORCED)) &&
     (params.type == ECORE_FILTER_MAC ||
      params.type == ECORE_FILTER_MAC_VLAN)) {
  if (OSAL_MEMCMP(p_bulletin->mac, params.mac, ETH_ALEN) ||
      (params.opcode != ECORE_FILTER_ADD &&
       params.opcode != ECORE_FILTER_REPLACE))
   status = PFVF_STATUS_FORCED;
  goto out;
 }

 rc = OSAL_IOV_CHK_UCAST(p_hwfn, vf->relative_vf_id, &params);
 if (rc == ECORE_EXISTS) {
  goto out;
 } else if (rc == ECORE_INVAL) {
  status = PFVF_STATUS_FAILURE;
  goto out;
 }

 rc = ecore_sp_eth_filter_ucast(p_hwfn, vf->opaque_fid, &params,
           ECORE_SPQ_MODE_CB, OSAL_NULL);
 if (rc)
  status = PFVF_STATUS_FAILURE;

out:
 ecore_iov_prepare_resp(p_hwfn, p_ptt, vf, CHANNEL_TLV_UCAST_FILTER,
          sizeof(struct pfvf_def_resp_tlv), status);
}
