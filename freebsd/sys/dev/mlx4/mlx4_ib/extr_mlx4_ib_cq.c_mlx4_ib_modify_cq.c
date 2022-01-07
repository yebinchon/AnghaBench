
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx4_ib_dev {int dev; } ;
struct mlx4_ib_cq {int mcq; } ;
struct ib_cq {int device; } ;


 int mlx4_cq_modify (int ,int *,int ,int ) ;
 struct mlx4_ib_cq* to_mcq (struct ib_cq*) ;
 struct mlx4_ib_dev* to_mdev (int ) ;

int mlx4_ib_modify_cq(struct ib_cq *cq, u16 cq_count, u16 cq_period)
{
 struct mlx4_ib_cq *mcq = to_mcq(cq);
 struct mlx4_ib_dev *dev = to_mdev(cq->device);

 return mlx4_cq_modify(dev->dev, &mcq->mcq, cq_count, cq_period);
}
