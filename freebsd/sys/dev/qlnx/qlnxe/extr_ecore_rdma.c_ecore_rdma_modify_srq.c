
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_8__ {void* opaque_fid; void* srq_idx; } ;
struct rdma_srq_modify_ramrod_data {void* wqe_limit; TYPE_4__ srq_id; } ;
struct TYPE_6__ {struct rdma_srq_modify_ramrod_data rdma_modify_srq; } ;
struct ecore_spq_entry {TYPE_2__ ramrod; } ;
struct ecore_sp_init_data {int comp_mode; int opaque_fid; } ;
struct ecore_rdma_modify_srq_in_params {int is_xrc; int srq_id; int wqe_limit; } ;
struct TYPE_7__ {int opaque_fid; } ;
struct ecore_hwfn {TYPE_3__ hw_info; TYPE_1__* p_rdma_info; } ;
typedef int init_data ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_5__ {int proto; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int ) ;
 int ECORE_MSG_RDMA ;
 int ECORE_SPQ_MODE_EBLOCK ;
 int ECORE_SUCCESS ;
 void* OSAL_CPU_TO_LE16 (int ) ;
 int OSAL_MEMSET (struct ecore_sp_init_data*,int ,int) ;
 int OSAL_NULL ;
 int RDMA_RAMROD_MODIFY_SRQ ;
 int ecore_rdma_get_fw_srq_id (struct ecore_hwfn*,int ,int ) ;
 int ecore_sp_init_request (struct ecore_hwfn*,struct ecore_spq_entry**,int ,int ,struct ecore_sp_init_data*) ;
 int ecore_spq_post (struct ecore_hwfn*,struct ecore_spq_entry*,int ) ;

enum _ecore_status_t
ecore_rdma_modify_srq(void *rdma_cxt,
        struct ecore_rdma_modify_srq_in_params *in_params)
{
 struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
 struct rdma_srq_modify_ramrod_data *p_ramrod;
 struct ecore_sp_init_data init_data;
 struct ecore_spq_entry *p_ent;
 u16 opaque_fid, fw_srq_id;
 enum _ecore_status_t rc;

 OSAL_MEMSET(&init_data, 0, sizeof(init_data));
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

 rc = ecore_sp_init_request(p_hwfn, &p_ent,
       RDMA_RAMROD_MODIFY_SRQ,
       p_hwfn->p_rdma_info->proto, &init_data);
 if (rc != ECORE_SUCCESS)
  return rc;

 p_ramrod = &p_ent->ramrod.rdma_modify_srq;

 fw_srq_id = ecore_rdma_get_fw_srq_id(p_hwfn, in_params->srq_id,
          in_params->is_xrc);
 p_ramrod->srq_id.srq_idx = OSAL_CPU_TO_LE16(fw_srq_id);
 opaque_fid = p_hwfn->hw_info.opaque_fid;
 p_ramrod->srq_id.opaque_fid = OSAL_CPU_TO_LE16(opaque_fid);
 p_ramrod->wqe_limit = OSAL_CPU_TO_LE16(in_params->wqe_limit);

 rc = ecore_spq_post(p_hwfn, p_ent, OSAL_NULL);
 if (rc != ECORE_SUCCESS)
  return rc;

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "modified SRQ id = %x, is_xrc=%u\n",
     in_params->srq_id, in_params->is_xrc);

 return rc;
}
