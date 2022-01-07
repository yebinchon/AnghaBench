
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_qp {int dummy; } ;
struct qlnxr_dev {int gsi_qp_created; int ha; struct qlnxr_qp* gsi_qp; void* gsi_rqcq; void* gsi_sqcq; } ;
struct ib_qp_init_attr {int recv_cq; int send_cq; } ;


 int QL_DPRINT12 (int ,char*) ;
 void* get_qlnxr_cq (int ) ;

void
qlnxr_store_gsi_qp_cq(struct qlnxr_dev *dev,
  struct qlnxr_qp *qp,
  struct ib_qp_init_attr *attrs)
{
 QL_DPRINT12(dev->ha, "enter\n");

 dev->gsi_qp_created = 1;
 dev->gsi_sqcq = get_qlnxr_cq((attrs->send_cq));
 dev->gsi_rqcq = get_qlnxr_cq((attrs->recv_cq));
 dev->gsi_qp = qp;

 QL_DPRINT12(dev->ha, "exit\n");

 return;
}
