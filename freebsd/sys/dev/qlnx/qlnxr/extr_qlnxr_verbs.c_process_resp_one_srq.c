
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_3__ {int lo; int hi; } ;
struct rdma_cqe_responder {scalar_t__ status; TYPE_1__ srq_wr_id; } ;
struct TYPE_4__ {int wr_cons_cnt; } ;
struct qlnxr_srq {TYPE_2__ hw_srq; } ;
struct qlnxr_qp {int ibqp; int id; struct qlnxr_srq* srq; } ;
struct qlnxr_dev {int * ha; } ;
struct qlnxr_cq {int dummy; } ;
struct ib_wc {void* wr_id; int * qp; int src_qp; scalar_t__ byte_len; scalar_t__ vendor_err; int status; } ;
typedef int qlnx_host_t ;


 void* HILO_U64 (int ,int ) ;
 int IB_WC_WR_FLUSH_ERR ;
 int QL_DPRINT12 (int *,char*) ;
 scalar_t__ RDMA_CQE_RESP_STS_WORK_REQUEST_FLUSHED_ERR ;
 int __process_resp_one (struct qlnxr_dev*,struct qlnxr_qp*,struct qlnxr_cq*,struct ib_wc*,struct rdma_cqe_responder*,void*) ;

__attribute__((used)) static int
process_resp_one_srq(struct qlnxr_dev *dev,
 struct qlnxr_qp *qp,
 struct qlnxr_cq *cq,
 struct ib_wc *wc,
 struct rdma_cqe_responder *resp)
{
 struct qlnxr_srq *srq = qp->srq;
 u64 wr_id;
 qlnx_host_t *ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 wr_id = HILO_U64(resp->srq_wr_id.hi, resp->srq_wr_id.lo);

 if (resp->status == RDMA_CQE_RESP_STS_WORK_REQUEST_FLUSHED_ERR) {
  wc->status = IB_WC_WR_FLUSH_ERR;
  wc->vendor_err = 0;
  wc->wr_id = wr_id;
  wc->byte_len = 0;
  wc->src_qp = qp->id;
  wc->qp = &qp->ibqp;
  wc->wr_id = wr_id;
 } else {
  __process_resp_one(dev, qp, cq, wc, resp, wr_id);
 }




 srq->hw_srq.wr_cons_cnt++;

 QL_DPRINT12(ha, "exit\n");
 return 1;
}
