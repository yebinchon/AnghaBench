
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cqe_responder {scalar_t__ status; int rq_cons; } ;
struct qlnxr_qp {int dummy; } ;
struct qlnxr_dev {int * ha; } ;
struct qlnxr_cq {int dummy; } ;
struct ib_wc {int dummy; } ;
typedef int qlnx_host_t ;


 int QL_DPRINT12 (int *,char*,...) ;
 scalar_t__ RDMA_CQE_RESP_STS_WORK_REQUEST_FLUSHED_ERR ;
 int consume_cqe (struct qlnxr_cq*) ;
 int process_resp_flush (struct qlnxr_qp*,int,struct ib_wc*,int ) ;
 int process_resp_one (struct qlnxr_dev*,struct qlnxr_qp*,struct qlnxr_cq*,struct ib_wc*,struct rdma_cqe_responder*) ;
 int try_consume_resp_cqe (struct qlnxr_cq*,struct qlnxr_qp*,struct rdma_cqe_responder*,int*) ;

__attribute__((used)) static int
qlnxr_poll_cq_resp(struct qlnxr_dev *dev,
 struct qlnxr_qp *qp,
 struct qlnxr_cq *cq,
 int num_entries,
 struct ib_wc *wc,
 struct rdma_cqe_responder *resp,
 int *update)
{
 int cnt;
 qlnx_host_t *ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 if (resp->status == RDMA_CQE_RESP_STS_WORK_REQUEST_FLUSHED_ERR) {
  cnt = process_resp_flush(qp, num_entries, wc,
    resp->rq_cons);
  try_consume_resp_cqe(cq, qp, resp, update);
 } else {
  cnt = process_resp_one(dev, qp, cq, wc, resp);
  consume_cqe(cq);
  *update |= 1;
 }

 QL_DPRINT12(ha, "exit cnt = 0x%x\n", cnt);
 return cnt;
}
