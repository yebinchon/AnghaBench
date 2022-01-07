
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ureq ;
struct qlnxr_ucontext {int dummy; } ;
struct TYPE_6__ {int num_pbes; } ;
struct TYPE_8__ {TYPE_3__* pbl_tbl; TYPE_2__ pbl_info; } ;
struct qlnxr_qp {int ecore_qp; int icid; int qp_id; TYPE_4__ urq; int srq; TYPE_4__ usq; } ;
struct qlnxr_pd {int dummy; } ;
struct qlnxr_dev {int rdma_ctx; int * ha; } ;
struct qlnxr_create_qp_ureq {int rq_pbl_ptr; int rq_num_pages; int sq_pbl_ptr; int sq_num_pages; int qp_handle_hi; int qp_handle_lo; int rq_len; int rq_addr; int sq_len; int sq_addr; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_qp_init_attr {int dummy; } ;
struct ib_pd {TYPE_1__* uobject; } ;
struct ecore_rdma_destroy_qp_out_params {int dummy; } ;
struct ecore_rdma_create_qp_out_params {int icid; int qp_id; } ;
struct ecore_rdma_create_qp_in_params {int rq_pbl_ptr; int rq_num_pages; int sq_pbl_ptr; int sq_num_pages; int qp_handle_hi; int qp_handle_lo; int rq_len; int rq_addr; int sq_len; int sq_addr; } ;
typedef int qlnx_host_t ;
typedef int in_params ;
struct TYPE_7__ {int pa; } ;
struct TYPE_5__ {struct ib_ucontext* context; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ QLNX_IS_IWARP (struct qlnxr_dev*) ;
 int QLNX_IS_ROCE (struct qlnxr_dev*) ;
 int QL_DPRINT11 (int *,char*,...) ;
 int QL_DPRINT12 (int *,char*,...) ;
 int ecore_rdma_create_qp (int ,struct qlnxr_create_qp_ureq*,struct ecore_rdma_create_qp_out_params*) ;
 int ecore_rdma_destroy_qp (int ,int ,struct ecore_rdma_destroy_qp_out_params*) ;
 struct qlnxr_pd* get_qlnxr_pd (struct ib_pd*) ;
 struct qlnxr_ucontext* get_qlnxr_ucontext (struct ib_ucontext*) ;
 int ib_copy_from_udata (struct qlnxr_create_qp_ureq*,struct ib_udata*,int) ;
 int memset (struct qlnxr_create_qp_ureq*,int ,int) ;
 int qlnxr_cleanup_user (struct qlnxr_dev*,struct qlnxr_qp*) ;
 int qlnxr_copy_qp_uresp (struct qlnxr_dev*,struct qlnxr_qp*,struct ib_udata*) ;
 int qlnxr_init_common_qp_in_params (struct qlnxr_dev*,struct qlnxr_pd*,struct qlnxr_qp*,struct ib_qp_init_attr*,int,struct qlnxr_create_qp_ureq*) ;
 int qlnxr_init_user_queue (struct ib_ucontext*,struct qlnxr_dev*,TYPE_4__*,int ,int ,int ,int ,int) ;
 int qlnxr_iwarp_populate_user_qp (struct qlnxr_dev*,struct qlnxr_qp*,struct ecore_rdma_create_qp_out_params*) ;
 int qlnxr_qp_user_print (struct qlnxr_dev*,struct qlnxr_qp*) ;

__attribute__((used)) static int
qlnxr_create_user_qp(struct qlnxr_dev *dev,
 struct qlnxr_qp *qp,
 struct ib_pd *ibpd,
 struct ib_udata *udata,
 struct ib_qp_init_attr *attrs)
{
 struct ecore_rdma_destroy_qp_out_params d_out_params;
 struct ecore_rdma_create_qp_in_params in_params;
 struct ecore_rdma_create_qp_out_params out_params;
 struct qlnxr_pd *pd = get_qlnxr_pd(ibpd);
 struct ib_ucontext *ib_ctx = ((void*)0);
 struct qlnxr_ucontext *ctx = ((void*)0);
 struct qlnxr_create_qp_ureq ureq;
 int alloc_and_init = QLNX_IS_ROCE(dev);
 int rc = -EINVAL;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 ib_ctx = ibpd->uobject->context;
 ctx = get_qlnxr_ucontext(ib_ctx);

 memset(&ureq, 0, sizeof(ureq));
 rc = ib_copy_from_udata(&ureq, udata, sizeof(ureq));

 if (rc) {
  QL_DPRINT11(ha, "ib_copy_from_udata failed [%d]\n", rc);
  return rc;
 }


 rc = qlnxr_init_user_queue(ib_ctx, dev, &qp->usq, ureq.sq_addr,
      ureq.sq_len, 0, 0,
      alloc_and_init);
 if (rc) {
  QL_DPRINT11(ha, "qlnxr_init_user_queue failed [%d]\n", rc);
  return rc;
 }

 if (!qp->srq) {

  rc = qlnxr_init_user_queue(ib_ctx, dev, &qp->urq, ureq.rq_addr,
       ureq.rq_len, 0, 0,
       alloc_and_init);

  if (rc) {
   QL_DPRINT11(ha, "qlnxr_init_user_queue failed [%d]\n", rc);
   return rc;
  }
 }

 memset(&in_params, 0, sizeof(in_params));
 qlnxr_init_common_qp_in_params(dev, pd, qp, attrs, 0, &in_params);
 in_params.qp_handle_lo = ureq.qp_handle_lo;
 in_params.qp_handle_hi = ureq.qp_handle_hi;
 in_params.sq_num_pages = qp->usq.pbl_info.num_pbes;
 in_params.sq_pbl_ptr = qp->usq.pbl_tbl->pa;

 if (!qp->srq) {
  in_params.rq_num_pages = qp->urq.pbl_info.num_pbes;
  in_params.rq_pbl_ptr = qp->urq.pbl_tbl->pa;
 }

 qp->ecore_qp = ecore_rdma_create_qp(dev->rdma_ctx, &in_params, &out_params);

 if (!qp->ecore_qp) {
  rc = -ENOMEM;
  QL_DPRINT11(ha, "ecore_rdma_create_qp failed\n");
  goto err1;
 }

 if (QLNX_IS_IWARP(dev))
  qlnxr_iwarp_populate_user_qp(dev, qp, &out_params);

 qp->qp_id = out_params.qp_id;
 qp->icid = out_params.icid;

 rc = qlnxr_copy_qp_uresp(dev, qp, udata);

 if (rc) {
  QL_DPRINT11(ha, "qlnxr_copy_qp_uresp failed\n");
  goto err;
 }

 qlnxr_qp_user_print(dev, qp);

 QL_DPRINT12(ha, "exit\n");
 return 0;
err:
 rc = ecore_rdma_destroy_qp(dev->rdma_ctx, qp->ecore_qp, &d_out_params);

 if (rc)
  QL_DPRINT12(ha, "fatal fault\n");

err1:
 qlnxr_cleanup_user(dev, qp);

 QL_DPRINT12(ha, "exit[%d]\n", rc);
 return rc;
}
