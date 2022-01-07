
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qlnxr_dev {TYPE_3__* ha; int rdma_ctx; } ;
struct TYPE_6__ {int umem; int pbl_tbl; int pbl_info; } ;
struct qlnxr_cq {int destroyed; scalar_t__ cq_type; int icid; int sig; TYPE_2__ q; int pbl; } ;
struct ib_cq {TYPE_1__* uobject; int device; } ;
struct ecore_rdma_destroy_cq_out_params {int dummy; } ;
struct ecore_rdma_destroy_cq_in_params {int icid; } ;
struct TYPE_7__ {int cdev; } ;
typedef TYPE_3__ qlnx_host_t ;
struct TYPE_5__ {scalar_t__ context; } ;


 scalar_t__ QLNXR_CQ_TYPE_GSI ;
 int QL_DPRINT12 (TYPE_3__*,char*,int ) ;
 int ecore_chain_free (int *,int *) ;
 int ecore_rdma_destroy_cq (int ,struct ecore_rdma_destroy_cq_in_params*,struct ecore_rdma_destroy_cq_out_params*) ;
 struct qlnxr_cq* get_qlnxr_cq (struct ib_cq*) ;
 struct qlnxr_dev* get_qlnxr_dev (int ) ;
 int ib_umem_release (int ) ;
 int kfree (struct qlnxr_cq*) ;
 int qlnxr_free_pbl (struct qlnxr_dev*,int *,int ) ;

int
qlnxr_destroy_cq(struct ib_cq *ibcq)
{
 struct qlnxr_dev *dev = get_qlnxr_dev((ibcq->device));
 struct ecore_rdma_destroy_cq_out_params oparams;
 struct ecore_rdma_destroy_cq_in_params iparams;
 struct qlnxr_cq *cq = get_qlnxr_cq(ibcq);
 int rc = 0;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter cq_id = %d\n", cq->icid);

 cq->destroyed = 1;
 if (cq->cq_type != QLNXR_CQ_TYPE_GSI) {

  iparams.icid = cq->icid;

  rc = ecore_rdma_destroy_cq(dev->rdma_ctx, &iparams, &oparams);

  if (rc) {
   QL_DPRINT12(ha, "ecore_rdma_destroy_cq failed cq_id = %d\n",
    cq->icid);
   return rc;
  }

  QL_DPRINT12(ha, "free cq->pbl cq_id = %d\n", cq->icid);
  ecore_chain_free(&dev->ha->cdev, &cq->pbl);
 }

 if (ibcq->uobject && ibcq->uobject->context) {
  qlnxr_free_pbl(dev, &cq->q.pbl_info, cq->q.pbl_tbl);
  ib_umem_release(cq->q.umem);
 }

 cq->sig = ~cq->sig;

 kfree(cq);

 QL_DPRINT12(ha, "exit cq_id = %d\n", cq->icid);

 return rc;
}
