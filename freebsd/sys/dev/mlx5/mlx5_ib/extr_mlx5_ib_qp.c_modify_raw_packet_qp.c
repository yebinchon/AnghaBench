
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_modify_raw_qp_param {int operation; int set_mask; } ;
struct mlx5_ib_sq {int dummy; } ;
struct mlx5_ib_rq {int dummy; } ;
struct mlx5_ib_raw_packet_qp {struct mlx5_ib_sq sq; struct mlx5_ib_rq rq; } ;
struct TYPE_4__ {scalar_t__ wqe_cnt; } ;
struct TYPE_3__ {scalar_t__ wqe_cnt; } ;
struct mlx5_ib_qp {TYPE_2__ sq; TYPE_1__ rq; struct mlx5_ib_raw_packet_qp raw_packet_qp; } ;
struct mlx5_ib_dev {int mdev; } ;


 int EINVAL ;







 int MLX5_RQC_STATE_ERR ;
 int MLX5_RQC_STATE_RDY ;
 int MLX5_RQC_STATE_RST ;
 int MLX5_SQC_STATE_ERR ;
 int MLX5_SQC_STATE_RDY ;
 int MLX5_SQC_STATE_RST ;
 int WARN_ON (int) ;
 int modify_raw_packet_qp_rq (struct mlx5_ib_dev*,struct mlx5_ib_rq*,int,struct mlx5_modify_raw_qp_param const*) ;
 int modify_raw_packet_qp_sq (int ,struct mlx5_ib_sq*,int) ;
 int modify_raw_packet_tx_affinity (int ,struct mlx5_ib_sq*,int ) ;

__attribute__((used)) static int modify_raw_packet_qp(struct mlx5_ib_dev *dev, struct mlx5_ib_qp *qp,
    const struct mlx5_modify_raw_qp_param *raw_qp_param,
    u8 tx_affinity)
{
 struct mlx5_ib_raw_packet_qp *raw_packet_qp = &qp->raw_packet_qp;
 struct mlx5_ib_rq *rq = &raw_packet_qp->rq;
 struct mlx5_ib_sq *sq = &raw_packet_qp->sq;
 int rq_state;
 int sq_state;
 int err;

 switch (raw_qp_param->operation) {
 case 130:
  rq_state = MLX5_RQC_STATE_RDY;
  sq_state = MLX5_SQC_STATE_RDY;
  break;
 case 134:
  rq_state = MLX5_RQC_STATE_ERR;
  sq_state = MLX5_SQC_STATE_ERR;
  break;
 case 133:
  rq_state = MLX5_RQC_STATE_RST;
  sq_state = MLX5_SQC_STATE_RST;
  break;
 case 132:
 case 131:
 case 129:
 case 128:
  if (raw_qp_param->set_mask)
   return -EINVAL;
  else
   return 0;
 default:
  WARN_ON(1);
  return -EINVAL;
 }

 if (qp->rq.wqe_cnt) {
  err = modify_raw_packet_qp_rq(dev, rq, rq_state, raw_qp_param);
  if (err)
   return err;
 }

 if (qp->sq.wqe_cnt) {
  if (tx_affinity) {
   err = modify_raw_packet_tx_affinity(dev->mdev, sq,
           tx_affinity);
   if (err)
    return err;
  }

  return modify_raw_packet_qp_sq(dev->mdev, sq, sq_state);
 }

 return 0;
}
