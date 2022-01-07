
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cqe_responder {int dummy; } ;
struct qlnxr_qp {int dummy; } ;
struct qlnxr_dev {int * ha; } ;
struct qlnxr_cq {int dummy; } ;
struct ib_wc {int dummy; } ;
typedef int qlnx_host_t ;


 int QL_DPRINT12 (int *,char*,...) ;
 int consume_cqe (struct qlnxr_cq*) ;
 int process_resp_one_srq (struct qlnxr_dev*,struct qlnxr_qp*,struct qlnxr_cq*,struct ib_wc*,struct rdma_cqe_responder*) ;

__attribute__((used)) static int
qlnxr_poll_cq_resp_srq(struct qlnxr_dev *dev,
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

 cnt = process_resp_one_srq(dev, qp, cq, wc, resp);
 consume_cqe(cq);
 *update |= 1;

 QL_DPRINT12(ha, "exit cnt = 0x%x\n", cnt);
 return cnt;
}
