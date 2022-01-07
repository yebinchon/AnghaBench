
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx4_wqe_data_seg {int dummy; } ;
struct TYPE_4__ {int wqe_cnt; int max_gs; void* max_post; int wqe_shift; } ;
struct mlx4_ib_qp {TYPE_1__ rq; } ;
struct mlx4_ib_dev {TYPE_3__* dev; } ;
struct ib_qp_cap {scalar_t__ max_recv_wr; void* max_recv_sge; } ;
struct TYPE_5__ {scalar_t__ max_wqes; scalar_t__ max_sq_sg; void* max_rq_sg; } ;
struct TYPE_6__ {TYPE_2__ caps; } ;


 int EINVAL ;
 scalar_t__ MLX4_IB_SQ_MAX_SPARE ;
 int ilog2 (int) ;
 int max (unsigned int,void*) ;
 void* min (scalar_t__,void*) ;
 void* roundup_pow_of_two (int ) ;

__attribute__((used)) static int set_rq_size(struct mlx4_ib_dev *dev, struct ib_qp_cap *cap,
         int is_user, int has_rq, struct mlx4_ib_qp *qp)
{

 if (cap->max_recv_wr > dev->dev->caps.max_wqes - MLX4_IB_SQ_MAX_SPARE ||
     cap->max_recv_sge > min(dev->dev->caps.max_sq_sg, dev->dev->caps.max_rq_sg))
  return -EINVAL;

 if (!has_rq) {
  if (cap->max_recv_wr)
   return -EINVAL;

  qp->rq.wqe_cnt = qp->rq.max_gs = 0;
 } else {

  if (is_user && (!cap->max_recv_wr || !cap->max_recv_sge))
   return -EINVAL;

  qp->rq.wqe_cnt = roundup_pow_of_two(max(1U, cap->max_recv_wr));
  qp->rq.max_gs = roundup_pow_of_two(max(1U, cap->max_recv_sge));
  qp->rq.wqe_shift = ilog2(qp->rq.max_gs * sizeof (struct mlx4_wqe_data_seg));
 }


 if (is_user) {
  cap->max_recv_wr = qp->rq.max_post = qp->rq.wqe_cnt;
  cap->max_recv_sge = qp->rq.max_gs;
 } else {
  cap->max_recv_wr = qp->rq.max_post =
   min(dev->dev->caps.max_wqes - MLX4_IB_SQ_MAX_SPARE, qp->rq.wqe_cnt);
  cap->max_recv_sge = min(qp->rq.max_gs,
     min(dev->dev->caps.max_sq_sg,
         dev->dev->caps.max_rq_sg));
 }

 return 0;
}
