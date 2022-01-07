
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_ib_qp {int has_rq; } ;
struct ib_qp_init_attr {scalar_t__ qp_type; scalar_t__ srq; } ;


 scalar_t__ IB_QPT_XRC_INI ;
 scalar_t__ IB_QPT_XRC_TGT ;
 int MLX5_NON_ZERO_RQ ;
 int MLX5_SRQ_RQ ;
 int MLX5_ZERO_LEN_RQ ;

__attribute__((used)) static u32 get_rx_type(struct mlx5_ib_qp *qp, struct ib_qp_init_attr *attr)
{
 if (attr->srq || (attr->qp_type == IB_QPT_XRC_TGT) ||
     (attr->qp_type == IB_QPT_XRC_INI))
  return MLX5_SRQ_RQ;
 else if (!qp->has_rq)
  return MLX5_ZERO_LEN_RQ;
 else
  return MLX5_NON_ZERO_RQ;
}
