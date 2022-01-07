
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_qp {scalar_t__ qp_type; int destroyed; int state; int qp_id; int refcnt; int sig; struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int * ha; } ;
struct ib_qp_attr {int qp_state; } ;
struct ib_qp {int dummy; } ;
typedef int qlnx_host_t ;


 int ECORE_ROCE_QP_STATE_ERR ;
 int ECORE_ROCE_QP_STATE_INIT ;
 int ECORE_ROCE_QP_STATE_RESET ;
 int IB_QPS_ERR ;
 scalar_t__ IB_QPT_GSI ;
 int IB_QP_STATE ;
 scalar_t__ QLNX_IS_ROCE (struct qlnxr_dev*) ;
 int QL_DPRINT12 (int *,char*,...) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 struct qlnxr_qp* get_qlnxr_qp (struct ib_qp*) ;
 int kfree (struct qlnxr_qp*) ;
 int qlnxr_destroy_gsi_qp (struct qlnxr_dev*) ;
 int qlnxr_free_qp_resources (struct qlnxr_dev*,struct qlnxr_qp*) ;
 int qlnxr_idr_remove (struct qlnxr_dev*,int ) ;
 int qlnxr_modify_qp (struct ib_qp*,struct ib_qp_attr*,int,int *) ;

int
qlnxr_destroy_qp(struct ib_qp *ibqp)
{
 struct qlnxr_qp *qp = get_qlnxr_qp(ibqp);
 struct qlnxr_dev *dev = qp->dev;
 int rc = 0;
 struct ib_qp_attr attr;
 int attr_mask = 0;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter qp = %p, qp_type=%d\n", qp, qp->qp_type);

 qp->destroyed = 1;

 if (QLNX_IS_ROCE(dev) && (qp->state != (ECORE_ROCE_QP_STATE_RESET |
      ECORE_ROCE_QP_STATE_ERR |
      ECORE_ROCE_QP_STATE_INIT))) {

  attr.qp_state = IB_QPS_ERR;
  attr_mask |= IB_QP_STATE;


  qlnxr_modify_qp(ibqp, &attr, attr_mask, ((void*)0));
 }

 if (qp->qp_type == IB_QPT_GSI)
  qlnxr_destroy_gsi_qp(dev);

 qp->sig = ~qp->sig;

 qlnxr_free_qp_resources(dev, qp);

 if (atomic_dec_and_test(&qp->refcnt)) {

  qlnxr_idr_remove(dev, qp->qp_id);
  kfree(qp);
 }

 QL_DPRINT12(ha, "exit\n");
 return rc;
}
