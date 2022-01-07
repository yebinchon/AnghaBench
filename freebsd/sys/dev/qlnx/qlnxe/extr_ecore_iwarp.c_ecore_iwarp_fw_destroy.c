
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ecore_spq_entry {int dummy; } ;
struct ecore_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct ecore_rdma_qp {int icid; } ;
struct TYPE_3__ {int opaque_fid; } ;
struct ecore_hwfn {TYPE_2__* p_rdma_info; TYPE_1__ hw_info; } ;
typedef int init_data ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_4__ {int proto; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int) ;
 int ECORE_MSG_RDMA ;
 int ECORE_SPQ_MODE_EBLOCK ;
 int ECORE_SUCCESS ;
 int IWARP_RAMROD_CMD_ID_DESTROY_QP ;
 int OSAL_MEMSET (struct ecore_sp_init_data*,int ,int) ;
 int OSAL_NULL ;
 int ecore_sp_init_request (struct ecore_hwfn*,struct ecore_spq_entry**,int ,int ,struct ecore_sp_init_data*) ;
 int ecore_spq_post (struct ecore_hwfn*,struct ecore_spq_entry*,int ) ;

enum _ecore_status_t
ecore_iwarp_fw_destroy(struct ecore_hwfn *p_hwfn,
         struct ecore_rdma_qp *qp)
{
 struct ecore_sp_init_data init_data;
 struct ecore_spq_entry *p_ent;
 enum _ecore_status_t rc;


 OSAL_MEMSET(&init_data, 0, sizeof(init_data));
 init_data.cid = qp->icid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

 rc = ecore_sp_init_request(p_hwfn, &p_ent,
       IWARP_RAMROD_CMD_ID_DESTROY_QP,
       p_hwfn->p_rdma_info->proto,
       &init_data);
 if (rc != ECORE_SUCCESS)
  return rc;

 rc = ecore_spq_post(p_hwfn, p_ent, OSAL_NULL);

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "QP(0x%x) rc = %d\n", qp->icid, rc);

 return rc;
}
