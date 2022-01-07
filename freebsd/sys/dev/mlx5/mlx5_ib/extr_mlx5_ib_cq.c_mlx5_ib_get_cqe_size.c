
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int dummy; } ;
struct mlx5_ib_cq {int cqe_size; } ;
struct ib_cq {int dummy; } ;


 struct mlx5_ib_cq* to_mcq (struct ib_cq*) ;

int mlx5_ib_get_cqe_size(struct mlx5_ib_dev *dev, struct ib_cq *ibcq)
{
 struct mlx5_ib_cq *cq;

 if (!ibcq)
  return 128;

 cq = to_mcq(ibcq);
 return cq->cqe_size;
}
