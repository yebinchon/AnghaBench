
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ecore_spq_entry {int dummy; } ;
struct ecore_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct TYPE_2__ {int opaque_fid; } ;
struct ecore_hwfn {TYPE_1__ hw_info; int p_dev; } ;
typedef int init_data ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_ERR (struct ecore_hwfn*,char*,...) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ) ;
 int ECORE_INVAL ;
 int ECORE_MSG_RDMA ;
 int ECORE_ROCE_ICID_TO_QP (int ) ;
 int ECORE_SPQ_MODE_EBLOCK ;
 int ECORE_SUCCESS ;
 int OSAL_MEMSET (struct ecore_sp_init_data*,int ,int) ;
 int OSAL_NULL ;
 int PROTOCOLID_ROCE ;
 int ROCE_RAMROD_DESTROY_UD_QP ;
 int ecore_roce_free_qp (struct ecore_hwfn*,int ) ;
 int ecore_sp_init_request (struct ecore_hwfn*,struct ecore_spq_entry**,int ,int ,struct ecore_sp_init_data*) ;
 int ecore_spq_post (struct ecore_hwfn*,struct ecore_spq_entry*,int ) ;

enum _ecore_status_t ecore_roce_destroy_ud_qp(void *rdma_cxt, u16 cid)
{
 struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
 struct ecore_sp_init_data init_data;
 struct ecore_spq_entry *p_ent;
 enum _ecore_status_t rc;

 if (!rdma_cxt) {
  DP_ERR(p_hwfn->p_dev,
         "destroy ud qp failed due to NULL rdma_cxt\n");
  return ECORE_INVAL;
 }


 OSAL_MEMSET(&init_data, 0, sizeof(init_data));
 init_data.cid = cid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;
 rc = ecore_sp_init_request(p_hwfn, &p_ent, ROCE_RAMROD_DESTROY_UD_QP,
       PROTOCOLID_ROCE, &init_data);
 if (rc != ECORE_SUCCESS)
  goto err;

 rc = ecore_spq_post(p_hwfn, p_ent, OSAL_NULL);
 if (rc != ECORE_SUCCESS)
  goto err;

 ecore_roce_free_qp(p_hwfn, ECORE_ROCE_ICID_TO_QP(cid));

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "freed a ud qp with cid=%d\n", cid);

 return ECORE_SUCCESS;

err:
 DP_ERR(p_hwfn, "failed destroying a ud qp with cid=%d\n", cid);

 return rc;
}
