
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rdma_destroy_cq_ramrod_data {int output_params_addr; } ;
struct rdma_destroy_cq_output_params {int cnq_num; } ;
struct TYPE_5__ {struct rdma_destroy_cq_ramrod_data rdma_destroy_cq; } ;
struct ecore_spq_entry {TYPE_2__ ramrod; } ;
struct ecore_sp_init_data {int cid; int comp_mode; int opaque_fid; } ;
struct ecore_rdma_destroy_cq_out_params {int num_cq_notif; } ;
struct ecore_rdma_destroy_cq_in_params {int icid; } ;
struct TYPE_4__ {int opaque_fid; } ;
struct ecore_hwfn {int p_dev; TYPE_3__* p_rdma_info; TYPE_1__ hw_info; } ;
typedef int init_data ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef int dma_addr_t ;
struct TYPE_6__ {int lock; int proto; int cq_map; } ;


 int DMA_REGPAIR_LE (int ,int ) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int) ;
 int ECORE_MSG_RDMA ;
 int ECORE_NOMEM ;
 int ECORE_SPQ_MODE_EBLOCK ;
 int ECORE_SUCCESS ;
 scalar_t__ OSAL_DMA_ALLOC_COHERENT (int ,int *,int) ;
 int OSAL_DMA_FREE_COHERENT (int ,struct rdma_destroy_cq_output_params*,int ,int) ;
 int OSAL_LE16_TO_CPU (int ) ;
 int OSAL_MEMSET (struct ecore_sp_init_data*,int ,int) ;
 int OSAL_NULL ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 int RDMA_RAMROD_DESTROY_CQ ;
 int ecore_bmap_release_id (struct ecore_hwfn*,int *,int) ;
 int ecore_cxt_get_proto_cid_start (struct ecore_hwfn*,int ) ;
 int ecore_sp_init_request (struct ecore_hwfn*,struct ecore_spq_entry**,int ,int ,struct ecore_sp_init_data*) ;
 int ecore_spq_post (struct ecore_hwfn*,struct ecore_spq_entry*,int ) ;

enum _ecore_status_t ecore_rdma_destroy_cq(void *rdma_cxt,
   struct ecore_rdma_destroy_cq_in_params *in_params,
   struct ecore_rdma_destroy_cq_out_params *out_params)
{
 struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
 struct rdma_destroy_cq_output_params *p_ramrod_res;
 struct rdma_destroy_cq_ramrod_data *p_ramrod;
 struct ecore_sp_init_data init_data;
 struct ecore_spq_entry *p_ent;
 dma_addr_t ramrod_res_phys;
 enum _ecore_status_t rc = ECORE_NOMEM;

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "icid = %08x\n", in_params->icid);

 p_ramrod_res = (struct rdma_destroy_cq_output_params *)
   OSAL_DMA_ALLOC_COHERENT(p_hwfn->p_dev, &ramrod_res_phys,
    sizeof(struct rdma_destroy_cq_output_params));
 if (!p_ramrod_res)
 {
  DP_NOTICE(p_hwfn, 0,
     "ecore destroy cq failed: cannot allocate memory (ramrod)\n");
  return rc;
 }


 OSAL_MEMSET(&init_data, 0, sizeof(init_data));
 init_data.cid = in_params->icid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;


 rc = ecore_sp_init_request(p_hwfn, &p_ent,
       RDMA_RAMROD_DESTROY_CQ,
       p_hwfn->p_rdma_info->proto, &init_data);
 if (rc != ECORE_SUCCESS)
  goto err;

 p_ramrod = &p_ent->ramrod.rdma_destroy_cq;
 DMA_REGPAIR_LE(p_ramrod->output_params_addr, ramrod_res_phys);

 rc = ecore_spq_post(p_hwfn, p_ent, OSAL_NULL);
 if (rc != ECORE_SUCCESS)
  goto err;

 out_params->num_cq_notif =
  OSAL_LE16_TO_CPU(p_ramrod_res->cnq_num);

 OSAL_DMA_FREE_COHERENT(p_hwfn->p_dev, p_ramrod_res, ramrod_res_phys,
          sizeof(struct rdma_destroy_cq_output_params));


 OSAL_SPIN_LOCK(&p_hwfn->p_rdma_info->lock);

 ecore_bmap_release_id(p_hwfn,
         &p_hwfn->p_rdma_info->cq_map,
  (in_params->icid - ecore_cxt_get_proto_cid_start(
   p_hwfn, p_hwfn->p_rdma_info->proto)));

 OSAL_SPIN_UNLOCK(&p_hwfn->p_rdma_info->lock);

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "Destroyed CQ, rc = %d\n", rc);
 return rc;

err:
 OSAL_DMA_FREE_COHERENT(p_hwfn->p_dev, p_ramrod_res, ramrod_res_phys,
          sizeof(struct rdma_destroy_cq_output_params));

 return rc;
}
