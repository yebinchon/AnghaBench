
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct rx_update_gft_filter_data {int rx_qid_valid; int filter_action; void* vport_id; scalar_t__ flow_id; scalar_t__ flow_id_valid; void* rx_qid; void* pkt_hdr_length; int pkt_hdr_addr; } ;
struct TYPE_4__ {struct rx_update_gft_filter_data rx_update_gft; } ;
struct ecore_spq_entry {TYPE_2__ ramrod; } ;
struct ecore_spq_comp_cb {int dummy; } ;
struct ecore_sp_init_data {int comp_mode; struct ecore_spq_comp_cb* p_comp_data; int opaque_fid; int cid; } ;
struct ecore_ntuple_filter_params {scalar_t__ qid; int length; scalar_t__ addr; scalar_t__ b_is_add; int vport_id; } ;
struct TYPE_3__ {int opaque_fid; } ;
struct ecore_hwfn {TYPE_1__ hw_info; } ;
typedef int init_data ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DMA_REGPAIR_LE (int ,scalar_t__) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,scalar_t__,int ,char*,unsigned long long,int ) ;
 int ECORE_MSG_SP ;
 int ECORE_NOTIMPL ;
 scalar_t__ ECORE_RFS_NTUPLE_QID_RSS ;
 int ECORE_SPQ_MODE_CB ;
 int ECORE_SPQ_MODE_EBLOCK ;
 int ECORE_SUCCESS ;
 int ETH_RAMROD_GFT_UPDATE_FILTER ;
 int GFT_ADD_FILTER ;
 int GFT_DELETE_FILTER ;
 void* OSAL_CPU_TO_LE16 (int ) ;
 int OSAL_MEMSET (struct ecore_sp_init_data*,int ,int) ;
 void* OSAL_NULL ;
 int PROTOCOLID_ETH ;
 int ecore_fw_l2_queue (struct ecore_hwfn*,scalar_t__,int *) ;
 int ecore_fw_vport (struct ecore_hwfn*,int ,scalar_t__*) ;
 int ecore_sp_init_request (struct ecore_hwfn*,struct ecore_spq_entry**,int ,int ,struct ecore_sp_init_data*) ;
 int ecore_spq_get_cid (struct ecore_hwfn*) ;
 int ecore_spq_post (struct ecore_hwfn*,struct ecore_spq_entry*,void*) ;

enum _ecore_status_t
ecore_configure_rfs_ntuple_filter(struct ecore_hwfn *p_hwfn,
      struct ecore_spq_comp_cb *p_cb,
      struct ecore_ntuple_filter_params *p_params)
{
 struct rx_update_gft_filter_data *p_ramrod = OSAL_NULL;
 struct ecore_spq_entry *p_ent = OSAL_NULL;
 struct ecore_sp_init_data init_data;
 u16 abs_rx_q_id = 0;
 u8 abs_vport_id = 0;
 enum _ecore_status_t rc = ECORE_NOTIMPL;

 rc = ecore_fw_vport(p_hwfn, p_params->vport_id, &abs_vport_id);
 if (rc != ECORE_SUCCESS)
  return rc;

 if (p_params->qid != ECORE_RFS_NTUPLE_QID_RSS) {
  rc = ecore_fw_l2_queue(p_hwfn, p_params->qid, &abs_rx_q_id);
  if (rc != ECORE_SUCCESS)
   return rc;
 }


 OSAL_MEMSET(&init_data, 0, sizeof(init_data));
 init_data.cid = ecore_spq_get_cid(p_hwfn);

 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;

 if (p_cb) {
  init_data.comp_mode = ECORE_SPQ_MODE_CB;
  init_data.p_comp_data = p_cb;
 } else {
  init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;
 }

 rc = ecore_sp_init_request(p_hwfn, &p_ent,
       ETH_RAMROD_GFT_UPDATE_FILTER,
       PROTOCOLID_ETH, &init_data);
 if (rc != ECORE_SUCCESS)
  return rc;

 p_ramrod = &p_ent->ramrod.rx_update_gft;

 DMA_REGPAIR_LE(p_ramrod->pkt_hdr_addr, p_params->addr);
 p_ramrod->pkt_hdr_length = OSAL_CPU_TO_LE16(p_params->length);

 if (p_params->qid != ECORE_RFS_NTUPLE_QID_RSS) {
  p_ramrod->rx_qid_valid = 1;
  p_ramrod->rx_qid = OSAL_CPU_TO_LE16(abs_rx_q_id);
 }

 p_ramrod->flow_id_valid = 0;
 p_ramrod->flow_id = 0;

 p_ramrod->vport_id = OSAL_CPU_TO_LE16 ((u16)abs_vport_id);
 p_ramrod->filter_action = p_params->b_is_add ? GFT_ADD_FILTER
           : GFT_DELETE_FILTER;

 DP_VERBOSE(p_hwfn, ECORE_MSG_SP,
     "V[%0x], Q[%04x] - %s filter from 0x%llx [length %04xb]\n",
     abs_vport_id, abs_rx_q_id,
     p_params->b_is_add ? "Adding" : "Removing",
     (unsigned long long)p_params->addr, p_params->length);

 return ecore_spq_post(p_hwfn, p_ent, OSAL_NULL);
}
