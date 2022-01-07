
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_ucm_create_id {int ps; int qp_type; } ;
typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;


 int EINVAL ;
 int IB_QPT_RC ;
 int IB_QPT_UD ;





__attribute__((used)) static int ucma_get_qp_type(struct rdma_ucm_create_id *cmd, enum ib_qp_type *qp_type)
{
 switch (cmd->ps) {
 case 129:
  *qp_type = IB_QPT_RC;
  return 0;
 case 128:
 case 130:
  *qp_type = IB_QPT_UD;
  return 0;
 case 131:
  *qp_type = cmd->qp_type;
  return 0;
 default:
  return -EINVAL;
 }
}
