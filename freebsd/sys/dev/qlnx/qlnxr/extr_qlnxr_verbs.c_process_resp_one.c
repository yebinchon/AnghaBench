
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct rdma_cqe_responder {int dummy; } ;
struct TYPE_4__ {size_t cons; int pbl; } ;
struct qlnxr_qp {TYPE_2__ rq; TYPE_1__* rqe_wr_id; } ;
struct qlnxr_dev {int * ha; } ;
struct qlnxr_cq {int dummy; } ;
struct ib_wc {int dummy; } ;
typedef int qlnx_host_t ;
struct TYPE_3__ {int wqe_size; int wr_id; } ;


 int QL_DPRINT12 (int *,char*) ;
 int __process_resp_one (struct qlnxr_dev*,struct qlnxr_qp*,struct qlnxr_cq*,struct ib_wc*,struct rdma_cqe_responder*,int ) ;
 int ecore_chain_consume (int *) ;
 int qlnxr_inc_sw_cons (TYPE_2__*) ;

__attribute__((used)) static int
process_resp_one(struct qlnxr_dev *dev,
 struct qlnxr_qp *qp,
 struct qlnxr_cq *cq,
 struct ib_wc *wc,
 struct rdma_cqe_responder *resp)
{
 qlnx_host_t *ha = dev->ha;
 u64 wr_id = qp->rqe_wr_id[qp->rq.cons].wr_id;

 QL_DPRINT12(ha, "enter\n");

 __process_resp_one(dev, qp, cq, wc, resp, wr_id);

 while (qp->rqe_wr_id[qp->rq.cons].wqe_size--)
  ecore_chain_consume(&qp->rq.pbl);
 qlnxr_inc_sw_cons(&qp->rq);

 QL_DPRINT12(ha, "exit\n");
 return 1;
}
