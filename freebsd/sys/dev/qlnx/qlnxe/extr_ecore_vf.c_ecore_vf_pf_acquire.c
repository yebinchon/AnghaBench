
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vf_sw_info ;
typedef union pfvf_tlvs {int dummy; } pfvf_tlvs ;
typedef scalar_t__ u8 ;
struct TYPE_11__ {char* eth_fp_hsi_major; int capabilities; void* eth_fp_hsi_minor; int fw_engineering; int fw_revision; int fw_minor; int fw_major; int driver_version; int os_type; int opaque_fid; } ;
struct vf_pf_resc_request {int num_cids; int num_vlan_filters; int num_mac_filters; void* num_sbs; void* num_txqs; void* num_rxqs; } ;
struct vfpf_acquire_tlv {TYPE_3__ vfdev_info; int bulletin_size; int bulletin_addr; struct vf_pf_resc_request resc_request; } ;
struct pf_vf_pfdev_info {int capabilities; char* major_fp_hsi; int minor_fp_hsi; int chip_num; scalar_t__ chip_rev; int dev_type; } ;
struct TYPE_13__ {scalar_t__ num_txqs; scalar_t__ num_rxqs; scalar_t__ num_cids; } ;
struct TYPE_12__ {scalar_t__ status; } ;
struct pfvf_acquire_resp_tlv {struct pf_vf_pfdev_info pfdev_info; int bulletin_size; TYPE_5__ resc; TYPE_4__ hdr; } ;
struct TYPE_10__ {int size; int phys; } ;
struct ecore_vf_iov {int b_pre_fp_hsi; TYPE_2__ bulletin; int acquire_resp; struct ecore_vf_acquire_sw_info* pf2vf_reply; int offset; scalar_t__ b_doorbell_bar; } ;
struct ecore_vf_acquire_sw_info {int driver_version; int os_type; struct pfvf_acquire_resp_tlv acquire_resp; } ;
struct TYPE_9__ {int opaque_fid; } ;
struct ecore_hwfn {TYPE_7__* p_dev; TYPE_1__ hw_info; struct ecore_vf_iov* vf_iov_info; } ;
struct channel_list_end_tlv {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_14__ {int chip_num; int num_hwfns; scalar_t__ chip_rev; int type; } ;


 int CHANNEL_TLV_ACQUIRE ;
 int CHANNEL_TLV_LIST_END ;
 scalar_t__ CHIP_REV_IS_A0 (TYPE_7__*) ;
 int DP_ERR (struct ecore_hwfn*,char*,scalar_t__) ;
 int DP_INFO (struct ecore_hwfn*,char*,...) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,...) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*) ;
 int ECORE_AGAIN ;
 int ECORE_ETH_VF_DEFAULT_NUM_CIDS ;
 int ECORE_ETH_VF_MAX_NUM_CIDS ;
 int ECORE_ETH_VF_NUM_MAC_FILTERS ;
 int ECORE_ETH_VF_NUM_VLAN_FILTERS ;
 int ECORE_INVAL ;
 scalar_t__ ECORE_IS_BB (TYPE_7__*) ;
 void* ECORE_MAX_VF_CHAINS_PER_PF ;
 int ECORE_MSG_IOV ;
 int ECORE_SUCCESS ;
 char* ETH_HSI_VER_MAJOR ;
 void* ETH_HSI_VER_MINOR ;
 int FW_ENGINEERING_VERSION ;
 int FW_MAJOR_VERSION ;
 int FW_MINOR_VERSION ;
 int FW_REVISION_VERSION ;
 scalar_t__ IS_LEAD_HWFN (struct ecore_hwfn*) ;
 int OSAL_MEMCPY (int *,struct pfvf_acquire_resp_tlv*,int) ;
 int OSAL_MEMSET (struct ecore_vf_acquire_sw_info*,int ,int) ;
 int OSAL_VF_FILL_ACQUIRE_RESC_REQ (struct ecore_hwfn*,struct vf_pf_resc_request*,struct ecore_vf_acquire_sw_info*) ;
 int OSAL_VF_UPDATE_ACQUIRE_RESC_RESP (struct ecore_hwfn*,TYPE_5__*) ;
 int PFVF_ACQUIRE_CAP_100G ;
 int PFVF_ACQUIRE_CAP_POST_FW_OVERRIDE ;
 int PFVF_ACQUIRE_CAP_QUEUE_QIDS ;
 scalar_t__ PFVF_STATUS_NOT_SUPPORTED ;
 scalar_t__ PFVF_STATUS_NO_RESOURCE ;
 scalar_t__ PFVF_STATUS_SUCCESS ;
 int VFPF_ACQUIRE_CAP_100G ;
 int VFPF_ACQUIRE_CAP_PHYSICAL_BAR ;
 int VFPF_ACQUIRE_CAP_PRE_FP_HSI ;
 int VFPF_ACQUIRE_CAP_QUEUE_QIDS ;
 int VF_ACQUIRE_THRESH ;
 int ecore_add_tlv (int *,int ,int) ;
 int ecore_send_msg2pf (struct ecore_hwfn*,scalar_t__*,int) ;
 int ecore_vf_pf_acquire_reduce_resc (struct ecore_hwfn*,struct vf_pf_resc_request*,TYPE_5__*) ;
 struct vfpf_acquire_tlv* ecore_vf_pf_prep (struct ecore_hwfn*,int ,int) ;
 int ecore_vf_pf_req_end (struct ecore_hwfn*,int) ;

__attribute__((used)) static enum _ecore_status_t ecore_vf_pf_acquire(struct ecore_hwfn *p_hwfn)
{
 struct ecore_vf_iov *p_iov = p_hwfn->vf_iov_info;
 struct pfvf_acquire_resp_tlv *resp = &p_iov->pf2vf_reply->acquire_resp;
 struct pf_vf_pfdev_info *pfdev_info = &resp->pfdev_info;
 struct ecore_vf_acquire_sw_info vf_sw_info;
 struct vf_pf_resc_request *p_resc;
 bool resources_acquired = 0;
 struct vfpf_acquire_tlv *req;
 int attempts = 0;
 enum _ecore_status_t rc = ECORE_SUCCESS;
 int eth_hsi_minor_ver;


 req = ecore_vf_pf_prep(p_hwfn, CHANNEL_TLV_ACQUIRE, sizeof(*req));
 p_resc = &req->resc_request;


 req->vfdev_info.opaque_fid = p_hwfn->hw_info.opaque_fid;

 p_resc->num_rxqs = ECORE_MAX_VF_CHAINS_PER_PF;
 p_resc->num_txqs = ECORE_MAX_VF_CHAINS_PER_PF;
 p_resc->num_sbs = ECORE_MAX_VF_CHAINS_PER_PF;
 p_resc->num_mac_filters = ECORE_ETH_VF_NUM_MAC_FILTERS;
 p_resc->num_vlan_filters = ECORE_ETH_VF_NUM_VLAN_FILTERS;
 p_resc->num_cids = ECORE_ETH_VF_DEFAULT_NUM_CIDS;

 OSAL_MEMSET(&vf_sw_info, 0, sizeof(vf_sw_info));
 OSAL_VF_FILL_ACQUIRE_RESC_REQ(p_hwfn, &req->resc_request, &vf_sw_info);

 req->vfdev_info.os_type = vf_sw_info.os_type;
 req->vfdev_info.driver_version = vf_sw_info.driver_version;
 req->vfdev_info.fw_major = FW_MAJOR_VERSION;
 req->vfdev_info.fw_minor = FW_MINOR_VERSION;
 req->vfdev_info.fw_revision = FW_REVISION_VERSION;
 req->vfdev_info.fw_engineering = FW_ENGINEERING_VERSION;
 req->vfdev_info.eth_fp_hsi_major = ETH_HSI_VER_MAJOR;
 req->vfdev_info.eth_fp_hsi_minor = ETH_HSI_VER_MINOR;


 req->vfdev_info.capabilities |= VFPF_ACQUIRE_CAP_100G;


 if (p_iov->b_doorbell_bar) {
  req->vfdev_info.capabilities |= VFPF_ACQUIRE_CAP_PHYSICAL_BAR |
      VFPF_ACQUIRE_CAP_QUEUE_QIDS;
  p_resc->num_cids = ECORE_ETH_VF_MAX_NUM_CIDS;
 }


 req->bulletin_addr = p_iov->bulletin.phys;
 req->bulletin_size = p_iov->bulletin.size;


 ecore_add_tlv(&p_iov->offset,
        CHANNEL_TLV_LIST_END,
        sizeof(struct channel_list_end_tlv));

 while (!resources_acquired) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV, "attempting to acquire resources\n");


  OSAL_MEMSET(p_iov->pf2vf_reply, 0,
       sizeof(union pfvf_tlvs));


  rc = ecore_send_msg2pf(p_hwfn,
           &resp->hdr.status,
           sizeof(*resp));
  if (rc != ECORE_SUCCESS)
   goto exit;


  OSAL_MEMCPY(&p_iov->acquire_resp,
       resp,
       sizeof(p_iov->acquire_resp));

  attempts++;

  if (resp->hdr.status == PFVF_STATUS_SUCCESS) {

   if (!(resp->pfdev_info.capabilities &
         PFVF_ACQUIRE_CAP_POST_FW_OVERRIDE)) {




    req->vfdev_info.capabilities |=
     VFPF_ACQUIRE_CAP_PRE_FP_HSI;
   }
   DP_VERBOSE(p_hwfn, ECORE_MSG_IOV, "resources acquired\n");
   resources_acquired = 1;
  }
  else if (resp->hdr.status == PFVF_STATUS_NO_RESOURCE &&
    attempts < VF_ACQUIRE_THRESH) {
   ecore_vf_pf_acquire_reduce_resc(p_hwfn, p_resc,
       &resp->resc);

  } else if (resp->hdr.status == PFVF_STATUS_NOT_SUPPORTED) {
   if (pfdev_info->major_fp_hsi &&
       (pfdev_info->major_fp_hsi != ETH_HSI_VER_MAJOR)) {
    DP_NOTICE(p_hwfn, 0,
       "PF uses an incompatible fastpath HSI %02x.%02x [VF requires %02x.%02x]. Please change to a VF driver using %02x.xx.\n",
       pfdev_info->major_fp_hsi,
       pfdev_info->minor_fp_hsi,
       ETH_HSI_VER_MAJOR, ETH_HSI_VER_MINOR,
       pfdev_info->major_fp_hsi);
    rc = ECORE_INVAL;
    goto exit;
   }

   if (!pfdev_info->major_fp_hsi) {
    if (req->vfdev_info.capabilities &
        VFPF_ACQUIRE_CAP_PRE_FP_HSI) {
     DP_NOTICE(p_hwfn, 0,
        "PF uses very old drivers. Please change to a VF driver using no later than 8.8.x.x.\n");
     rc = ECORE_INVAL;
     goto exit;
    } else {
     DP_INFO(p_hwfn,
      "PF is old - try re-acquire to see if it supports FW-version override\n");
     req->vfdev_info.capabilities |=
      VFPF_ACQUIRE_CAP_PRE_FP_HSI;
     continue;
    }
   }




   DP_NOTICE(p_hwfn, 0,
      "PF rejected acquisition by VF\n");
   rc = ECORE_INVAL;
   goto exit;
  } else {
   DP_ERR(p_hwfn, "PF returned error %d to VF acquisition request\n",
          resp->hdr.status);
   rc = ECORE_AGAIN;
   goto exit;
  }
 }


 if (req->vfdev_info.capabilities &
     VFPF_ACQUIRE_CAP_PRE_FP_HSI)
  p_iov->b_pre_fp_hsi = 1;





 if (!(resp->pfdev_info.capabilities &
       PFVF_ACQUIRE_CAP_QUEUE_QIDS))
  resp->resc.num_cids = resp->resc.num_rxqs +
          resp->resc.num_txqs;


 rc = OSAL_VF_UPDATE_ACQUIRE_RESC_RESP(p_hwfn, &resp->resc);
 if (rc) {
  DP_NOTICE(p_hwfn, 1,
     "VF_UPDATE_ACQUIRE_RESC_RESP Failed: status = 0x%x.\n",
     rc);
  rc = ECORE_AGAIN;
  goto exit;
 }



 p_iov->bulletin.size = resp->bulletin_size;


 p_hwfn->p_dev->type = resp->pfdev_info.dev_type;
 p_hwfn->p_dev->chip_rev = (u8) resp->pfdev_info.chip_rev;

 DP_INFO(p_hwfn, "Chip details - %s%d\n",
  ECORE_IS_BB(p_hwfn->p_dev) ? "BB" : "AH",
  CHIP_REV_IS_A0(p_hwfn->p_dev) ? 0 : 1);

 p_hwfn->p_dev->chip_num = pfdev_info->chip_num & 0xffff;


 if (IS_LEAD_HWFN(p_hwfn)) {
  if (resp->pfdev_info.capabilities & PFVF_ACQUIRE_CAP_100G) {
   DP_NOTICE(p_hwfn, 0, "100g VF\n");
   p_hwfn->p_dev->num_hwfns = 2;
  }
 }

 eth_hsi_minor_ver = ETH_HSI_VER_MINOR;

 if (!p_iov->b_pre_fp_hsi &&
     (eth_hsi_minor_ver) &&
     (resp->pfdev_info.minor_fp_hsi < ETH_HSI_VER_MINOR)) {
  DP_INFO(p_hwfn,
   "PF is using older fastpath HSI; %02x.%02x is configured\n",
   ETH_HSI_VER_MAJOR,
   resp->pfdev_info.minor_fp_hsi);
 }

exit:
 ecore_vf_pf_req_end(p_hwfn, rc);

 return rc;
}
