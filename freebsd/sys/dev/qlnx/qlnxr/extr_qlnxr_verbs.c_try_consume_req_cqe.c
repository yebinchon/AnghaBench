
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_cqe_requester {int sq_cons; } ;
struct TYPE_2__ {scalar_t__ wqe_cons; } ;
struct qlnxr_qp {TYPE_1__ sq; } ;
struct qlnxr_cq {int dummy; } ;


 int consume_cqe (struct qlnxr_cq*) ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static void
try_consume_req_cqe(struct qlnxr_cq *cq, struct qlnxr_qp *qp,
 struct rdma_cqe_requester *req, int *update)
{
 if (le16_to_cpu(req->sq_cons) == qp->sq.wqe_cons) {
  consume_cqe(cq);
  *update |= 1;
 }
}
