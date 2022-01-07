
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_qp_attr {int qp_state; } ;
struct ib_qp {int dummy; } ;


 int EINVAL ;
 int IB_QPS_ERR ;
 int IB_QP_STATE ;
 int ib_modify_qp (struct ib_qp*,struct ib_qp_attr*,int ) ;

__attribute__((used)) static int iwcm_modify_qp_err(struct ib_qp *qp)
{
 struct ib_qp_attr qp_attr;

 if (!qp)
  return -EINVAL;

 qp_attr.qp_state = IB_QPS_ERR;
 return ib_modify_qp(qp, &qp_attr, IB_QP_STATE);
}
