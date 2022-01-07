
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ecore_spq_entry {int dummy; } ;
struct ecore_sp_init_data {int cid; int comp_mode; int opaque_fid; } ;
struct ecore_rdma_create_qp_out_params {int icid; int qp_id; } ;
struct TYPE_2__ {int opaque_fid; } ;
struct ecore_hwfn {TYPE_1__ hw_info; int p_dev; } ;
typedef int init_data ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_ERR (int ,char*,void*,struct ecore_rdma_create_qp_out_params*) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,...) ;
 int ECORE_INVAL ;
 int ECORE_MSG_RDMA ;
 int ECORE_ROCE_QP_TO_ICID (int) ;
 int ECORE_SPQ_MODE_EBLOCK ;
 int ECORE_SUCCESS ;
 int OSAL_MEMSET (struct ecore_sp_init_data*,int ,int) ;
 int OSAL_NULL ;
 int PROTOCOLID_ROCE ;
 int ROCE_RAMROD_CREATE_UD_QP ;
 int ecore_roce_alloc_qp_idx (struct ecore_hwfn*,int*) ;
 int ecore_roce_free_qp (struct ecore_hwfn*,int) ;
 int ecore_sp_init_request (struct ecore_hwfn*,struct ecore_spq_entry**,int ,int ,struct ecore_sp_init_data*) ;
 int ecore_spq_post (struct ecore_hwfn*,struct ecore_spq_entry*,int ) ;

enum _ecore_status_t ecore_roce_create_ud_qp(void *rdma_cxt,
   struct ecore_rdma_create_qp_out_params *out_params)
{
 struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
 struct ecore_sp_init_data init_data;
 struct ecore_spq_entry *p_ent;
 enum _ecore_status_t rc;
 u16 icid, qp_idx;

 if (!rdma_cxt || !out_params) {
  DP_ERR(p_hwfn->p_dev,
         "ecore roce create ud qp failed due to NULL entry (rdma_cxt=%p, out=%p)\n",
         rdma_cxt, out_params);
  return ECORE_INVAL;
 }

 rc = ecore_roce_alloc_qp_idx(p_hwfn, &qp_idx);
 if (rc != ECORE_SUCCESS)
  goto err;

 icid = ECORE_ROCE_QP_TO_ICID(qp_idx);


 OSAL_MEMSET(&init_data, 0, sizeof(init_data));
 init_data.cid = icid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;
 rc = ecore_sp_init_request(p_hwfn, &p_ent, ROCE_RAMROD_CREATE_UD_QP,
       PROTOCOLID_ROCE, &init_data);
 if (rc != ECORE_SUCCESS)
  goto err1;

 rc = ecore_spq_post(p_hwfn, p_ent, OSAL_NULL);
 if (rc != ECORE_SUCCESS)
  goto err1;

 out_params->icid = icid;
 out_params->qp_id = ((0xFF << 16) | icid);

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "created a ud qp with icid=%d\n",
     icid);

 return ECORE_SUCCESS;

err1:
 ecore_roce_free_qp(p_hwfn, qp_idx);

err:
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "failed creating a ud qp\n");

 return rc;
}
