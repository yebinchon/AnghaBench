
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_8__ {void* lo; scalar_t__ hi; } ;
struct rdma_register_tid_ramrod_data {TYPE_4__ dif_runt_addr; TYPE_4__ dif_error_addr; scalar_t__ flags2; TYPE_4__ pbl_base; TYPE_4__ va; int length_lo; scalar_t__ length_hi; int pd; int key; void* itid; scalar_t__ flags1; scalar_t__ flags; } ;
struct TYPE_7__ {struct rdma_register_tid_ramrod_data rdma_register_tid; } ;
struct ecore_spq_entry {TYPE_3__ ramrod; } ;
struct ecore_sp_init_data {int comp_mode; int opaque_fid; } ;
struct ecore_rdma_register_tid_in_params {int itid; int pbl_two_level; int zbva; int phy_mr; int tid_type; int dma_mr; int page_size_log; int remote_read; int remote_write; int remote_atomic; int local_write; int local_read; int mw_bind; int pbl_page_size_log; int length; scalar_t__ fbo; int dif_runt_addr; int dif_error_addr; scalar_t__ dif_enabled; int pbl_ptr; int vaddr; int pd; int key; } ;
struct TYPE_5__ {int opaque_fid; } ;
struct ecore_hwfn {TYPE_2__* p_rdma_info; TYPE_1__ hw_info; } ;
typedef int init_data ;
typedef enum rdma_tid_type { ____Placeholder_rdma_tid_type } rdma_tid_type ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_6__ {scalar_t__ last_tid; int proto; } ;


 int DMA_LO_LE (int) ;
 int DMA_REGPAIR_LE (TYPE_4__,int ) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,scalar_t__) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int) ;
 int ECORE_INVAL ;
 int ECORE_MSG_RDMA ;




 int ECORE_SPQ_MODE_EBLOCK ;
 int ECORE_SUCCESS ;
 int ECORE_UNKNOWN_ERROR ;
 int OSAL_CPU_TO_LE16 (int ) ;
 void* OSAL_CPU_TO_LE32 (scalar_t__) ;
 int OSAL_MEMSET (struct ecore_sp_init_data*,int ,int) ;
 int RDMA_RAMROD_REGISTER_MR ;
 int RDMA_REGISTER_TID_RAMROD_DATA_DIF_ON_HOST_FLG ;
 int RDMA_REGISTER_TID_RAMROD_DATA_DMA_MR ;
 int RDMA_REGISTER_TID_RAMROD_DATA_ENABLE_MW_BIND ;
 int RDMA_REGISTER_TID_RAMROD_DATA_LOCAL_READ ;
 int RDMA_REGISTER_TID_RAMROD_DATA_LOCAL_WRITE ;
 int RDMA_REGISTER_TID_RAMROD_DATA_PAGE_SIZE_LOG ;
 int RDMA_REGISTER_TID_RAMROD_DATA_PBL_PAGE_SIZE_LOG ;
 int RDMA_REGISTER_TID_RAMROD_DATA_PHY_MR ;
 int RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_ATOMIC ;
 int RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_READ ;
 int RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_WRITE ;
 int RDMA_REGISTER_TID_RAMROD_DATA_TID_TYPE ;
 int RDMA_REGISTER_TID_RAMROD_DATA_TWO_LEVEL_PBL ;
 int RDMA_REGISTER_TID_RAMROD_DATA_ZERO_BASED ;
 scalar_t__ RDMA_RETURN_OK ;
 int RDMA_TID_FMR ;
 int RDMA_TID_MW_TYPE1 ;
 int RDMA_TID_MW_TYPE2A ;
 int RDMA_TID_REGISTERED_MR ;
 int SET_FIELD (scalar_t__,int ,int) ;
 int ecore_sp_init_request (struct ecore_hwfn*,struct ecore_spq_entry**,int ,int ,struct ecore_sp_init_data*) ;
 int ecore_spq_post (struct ecore_hwfn*,struct ecore_spq_entry*,scalar_t__*) ;

enum _ecore_status_t ecore_rdma_register_tid(void *rdma_cxt,
   struct ecore_rdma_register_tid_in_params *params)
{
 struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
 struct rdma_register_tid_ramrod_data *p_ramrod;
 struct ecore_sp_init_data init_data;
 struct ecore_spq_entry *p_ent;
 enum rdma_tid_type tid_type;
 u8 fw_return_code;
 enum _ecore_status_t rc;

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "itid = %08x\n", params->itid);


 OSAL_MEMSET(&init_data, 0, sizeof(init_data));
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

 rc = ecore_sp_init_request(p_hwfn, &p_ent, RDMA_RAMROD_REGISTER_MR,
       p_hwfn->p_rdma_info->proto, &init_data);
 if (rc != ECORE_SUCCESS) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "rc = %d\n", rc);
  return rc;
 }

 if (p_hwfn->p_rdma_info->last_tid < params->itid) {
  p_hwfn->p_rdma_info->last_tid = params->itid;
 }

 p_ramrod = &p_ent->ramrod.rdma_register_tid;

 p_ramrod->flags = 0;
 SET_FIELD(p_ramrod->flags,
    RDMA_REGISTER_TID_RAMROD_DATA_TWO_LEVEL_PBL,
    params->pbl_two_level);

 SET_FIELD(p_ramrod->flags,
    RDMA_REGISTER_TID_RAMROD_DATA_ZERO_BASED,
    params->zbva);

 SET_FIELD(p_ramrod->flags,
    RDMA_REGISTER_TID_RAMROD_DATA_PHY_MR,
    params->phy_mr);


 if (!(params->tid_type == 131) &&
     !(params->dma_mr))
  SET_FIELD(p_ramrod->flags,
     RDMA_REGISTER_TID_RAMROD_DATA_PAGE_SIZE_LOG,
     params->page_size_log - 12);

 SET_FIELD(p_ramrod->flags,
    RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_READ,
    params->remote_read);

 SET_FIELD(p_ramrod->flags,
    RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_WRITE,
    params->remote_write);

 SET_FIELD(p_ramrod->flags,
    RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_ATOMIC,
    params->remote_atomic);

 SET_FIELD(p_ramrod->flags,
    RDMA_REGISTER_TID_RAMROD_DATA_LOCAL_WRITE,
    params->local_write);

 SET_FIELD(p_ramrod->flags,
    RDMA_REGISTER_TID_RAMROD_DATA_LOCAL_READ,
    params->local_read);

 SET_FIELD(p_ramrod->flags,
    RDMA_REGISTER_TID_RAMROD_DATA_ENABLE_MW_BIND,
    params->mw_bind);

 SET_FIELD(p_ramrod->flags1,
    RDMA_REGISTER_TID_RAMROD_DATA_PBL_PAGE_SIZE_LOG,
    params->pbl_page_size_log - 12);

 SET_FIELD(p_ramrod->flags2,
    RDMA_REGISTER_TID_RAMROD_DATA_DMA_MR,
    params->dma_mr);

 switch (params->tid_type)
 {
 case 128:
  tid_type = RDMA_TID_REGISTERED_MR;
  break;
 case 131:
  tid_type = RDMA_TID_FMR;
  break;
 case 130:
  tid_type = RDMA_TID_MW_TYPE1;
  break;
 case 129:
  tid_type = RDMA_TID_MW_TYPE2A;
  break;
 default:
  rc = ECORE_INVAL;
  DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "rc = %d\n", rc);
  return rc;
 }
 SET_FIELD(p_ramrod->flags1,
    RDMA_REGISTER_TID_RAMROD_DATA_TID_TYPE,
    tid_type);

 p_ramrod->itid = OSAL_CPU_TO_LE32(params->itid);
 p_ramrod->key = params->key;
 p_ramrod->pd = OSAL_CPU_TO_LE16(params->pd);
 p_ramrod->length_hi = (u8)(params->length >> 32);
 p_ramrod->length_lo = DMA_LO_LE(params->length);
 if (params->zbva)
 {



  p_ramrod->va.hi = 0;
  p_ramrod->va.lo = OSAL_CPU_TO_LE32(params->fbo);
 } else {
  DMA_REGPAIR_LE(p_ramrod->va, params->vaddr);
 }
 DMA_REGPAIR_LE(p_ramrod->pbl_base, params->pbl_ptr);


 if (params->dif_enabled) {
  SET_FIELD(p_ramrod->flags2,
     RDMA_REGISTER_TID_RAMROD_DATA_DIF_ON_HOST_FLG, 1);
  DMA_REGPAIR_LE(p_ramrod->dif_error_addr,
          params->dif_error_addr);
  DMA_REGPAIR_LE(p_ramrod->dif_runt_addr, params->dif_runt_addr);
 }

 rc = ecore_spq_post(p_hwfn, p_ent, &fw_return_code);
 if (rc)
  return rc;

 if (fw_return_code != RDMA_RETURN_OK) {
  DP_NOTICE(p_hwfn, 1, "fw_return_code = %d\n", fw_return_code);
  return ECORE_UNKNOWN_ERROR;
 }

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "Register TID, rc = %d\n", rc);
 return rc;
}
