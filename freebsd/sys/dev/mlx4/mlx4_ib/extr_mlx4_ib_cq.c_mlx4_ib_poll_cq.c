
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx4_ib_qp {int dummy; } ;
struct mlx4_ib_dev {TYPE_3__* dev; } ;
struct TYPE_4__ {int device; } ;
struct mlx4_ib_cq {int lock; int mcq; TYPE_1__ ibcq; } ;
struct ib_wc {int dummy; } ;
struct ib_cq {int dummy; } ;
struct TYPE_6__ {TYPE_2__* persist; } ;
struct TYPE_5__ {int state; } ;


 int MLX4_DEVICE_STATE_INTERNAL_ERROR ;
 int mlx4_cq_set_ci (int *) ;
 scalar_t__ mlx4_ib_poll_one (struct mlx4_ib_cq*,struct mlx4_ib_qp**,struct ib_wc*) ;
 int mlx4_ib_poll_sw_comp (struct mlx4_ib_cq*,int,struct ib_wc*,int*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mlx4_ib_cq* to_mcq (struct ib_cq*) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 scalar_t__ unlikely (int) ;

int mlx4_ib_poll_cq(struct ib_cq *ibcq, int num_entries, struct ib_wc *wc)
{
 struct mlx4_ib_cq *cq = to_mcq(ibcq);
 struct mlx4_ib_qp *cur_qp = ((void*)0);
 unsigned long flags;
 int npolled;
 struct mlx4_ib_dev *mdev = to_mdev(cq->ibcq.device);

 spin_lock_irqsave(&cq->lock, flags);
 if (unlikely(mdev->dev->persist->state &
       MLX4_DEVICE_STATE_INTERNAL_ERROR)) {
  mlx4_ib_poll_sw_comp(cq, num_entries, wc, &npolled);
  goto out;
 }

 for (npolled = 0; npolled < num_entries; ++npolled) {
  if (mlx4_ib_poll_one(cq, &cur_qp, wc + npolled))
   break;
 }

 mlx4_cq_set_ci(&cq->mcq);

out:
 spin_unlock_irqrestore(&cq->lock, flags);

 return npolled;
}
