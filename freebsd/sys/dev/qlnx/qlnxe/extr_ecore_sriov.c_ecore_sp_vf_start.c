
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_10__ {scalar_t__* minor_ver_arr; int * major_ver_arr; } ;
struct vf_start_ramrod_data {TYPE_5__ hsi_fp_ver; int personality; int opaque_fid; int vf_id; } ;
struct TYPE_8__ {scalar_t__ eth_fp_hsi_minor; } ;
struct TYPE_9__ {TYPE_3__ vfdev_info; } ;
struct ecore_vf_info {int abs_vf_id; TYPE_4__ acquire; int opaque_fid; int concrete_fid; } ;
struct TYPE_6__ {struct vf_start_ramrod_data vf_start; } ;
struct ecore_spq_entry {TYPE_1__ ramrod; } ;
struct ecore_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct TYPE_7__ {int personality; } ;
struct ecore_hwfn {TYPE_2__ hw_info; } ;
typedef int init_data ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int COMMON_RAMROD_VF_START ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int ,scalar_t__,...) ;
 int ECORE_INVAL ;
 int ECORE_MSG_IOV ;
 int ECORE_NOTIMPL ;



 int ECORE_SPQ_MODE_EBLOCK ;
 int ECORE_SUCCESS ;
 int ETH_HSI_VER_MAJOR ;
 scalar_t__ ETH_HSI_VER_MINOR ;
 scalar_t__ ETH_HSI_VER_NO_PKT_LEN_TUNN ;
 size_t ETH_VER_KEY ;
 int GET_FIELD (int ,int ) ;
 int OSAL_CPU_TO_LE16 (int ) ;
 int OSAL_MEMSET (struct ecore_sp_init_data*,int ,int) ;
 void* OSAL_NULL ;
 int PERSONALITY_ETH ;
 int PERSONALITY_RDMA_AND_ETH ;
 int PROTOCOLID_COMMON ;
 int PXP_CONCRETE_FID_VFID ;
 int ecore_sp_init_request (struct ecore_hwfn*,struct ecore_spq_entry**,int ,int ,struct ecore_sp_init_data*) ;
 int ecore_spq_get_cid (struct ecore_hwfn*) ;
 int ecore_spq_post (struct ecore_hwfn*,struct ecore_spq_entry*,void*) ;

__attribute__((used)) static enum _ecore_status_t ecore_sp_vf_start(struct ecore_hwfn *p_hwfn,
           struct ecore_vf_info *p_vf)
{
 struct vf_start_ramrod_data *p_ramrod = OSAL_NULL;
 struct ecore_spq_entry *p_ent = OSAL_NULL;
 struct ecore_sp_init_data init_data;
 enum _ecore_status_t rc = ECORE_NOTIMPL;
 u8 fp_minor;


 OSAL_MEMSET(&init_data, 0, sizeof(init_data));
 init_data.cid = ecore_spq_get_cid(p_hwfn);
 init_data.opaque_fid = p_vf->opaque_fid;
 init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

 rc = ecore_sp_init_request(p_hwfn, &p_ent,
       COMMON_RAMROD_VF_START,
       PROTOCOLID_COMMON, &init_data);
 if (rc != ECORE_SUCCESS)
  return rc;

 p_ramrod = &p_ent->ramrod.vf_start;

 p_ramrod->vf_id = GET_FIELD(p_vf->concrete_fid, PXP_CONCRETE_FID_VFID);
 p_ramrod->opaque_fid = OSAL_CPU_TO_LE16(p_vf->opaque_fid);

 switch (p_hwfn->hw_info.personality) {
 case 130:
  p_ramrod->personality = PERSONALITY_ETH;
  break;
 case 128:
 case 129:
  p_ramrod->personality = PERSONALITY_RDMA_AND_ETH;
  break;
 default:
  DP_NOTICE(p_hwfn, 1, "Unknown VF personality %d\n",
     p_hwfn->hw_info.personality);
  return ECORE_INVAL;
 }

 fp_minor = p_vf->acquire.vfdev_info.eth_fp_hsi_minor;
 if (fp_minor > ETH_HSI_VER_MINOR &&
     fp_minor != ETH_HSI_VER_NO_PKT_LEN_TUNN) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
      "VF [%d] - Requested fp hsi %02x.%02x which is slightly newer than PF's %02x.%02x; Configuring PFs version\n",
      p_vf->abs_vf_id,
      ETH_HSI_VER_MAJOR, fp_minor,
      ETH_HSI_VER_MAJOR, ETH_HSI_VER_MINOR);
  fp_minor = ETH_HSI_VER_MINOR;
 }

 p_ramrod->hsi_fp_ver.major_ver_arr[ETH_VER_KEY] = ETH_HSI_VER_MAJOR;
 p_ramrod->hsi_fp_ver.minor_ver_arr[ETH_VER_KEY] = fp_minor;

 DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
     "VF[%d] - Starting using HSI %02x.%02x\n",
     p_vf->abs_vf_id, ETH_HSI_VER_MAJOR, fp_minor);

 return ecore_spq_post(p_hwfn, p_ent, OSAL_NULL);
}
