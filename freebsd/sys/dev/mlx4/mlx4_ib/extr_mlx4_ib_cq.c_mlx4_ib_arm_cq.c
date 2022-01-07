
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx4_ib_dev {int uar_lock; int uar_map; TYPE_3__* dev; } ;
struct TYPE_4__ {int device; } ;
struct mlx4_ib_cq {int mcq; TYPE_1__ ibcq; } ;
struct ib_cq {int dummy; } ;
typedef enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;
struct TYPE_6__ {TYPE_2__* persist; } ;
struct TYPE_5__ {int state; } ;


 int IB_CQ_SOLICITED ;
 int IB_CQ_SOLICITED_MASK ;
 int MLX4_CQ_DB_REQ_NOT ;
 int MLX4_CQ_DB_REQ_NOT_SOL ;
 int MLX4_DEVICE_STATE_INTERNAL_ERROR ;
 int MLX4_GET_DOORBELL_LOCK (int *) ;
 int mlx4_cq_arm (int *,int ,int ,int ) ;
 struct mlx4_ib_cq* to_mcq (struct ib_cq*) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 scalar_t__ unlikely (int) ;

int mlx4_ib_arm_cq(struct ib_cq *ibcq, enum ib_cq_notify_flags flags)
{
 struct mlx4_ib_cq *cq = to_mcq(ibcq);
 struct mlx4_ib_dev *mdev = to_mdev(cq->ibcq.device);

 if (unlikely(mdev->dev->persist->state &
       MLX4_DEVICE_STATE_INTERNAL_ERROR))
  return -1;

 mlx4_cq_arm(&cq->mcq,
      (flags & IB_CQ_SOLICITED_MASK) == IB_CQ_SOLICITED ?
      MLX4_CQ_DB_REQ_NOT_SOL : MLX4_CQ_DB_REQ_NOT,
      mdev->uar_map,
      MLX4_GET_DOORBELL_LOCK(&mdev->uar_lock));

 return 0;
}
