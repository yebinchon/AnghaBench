
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int dummy; } ;
struct mlx5_ib_cq {int * resize_buf; } ;


 int free_cq_buf (struct mlx5_ib_dev*,int *) ;

__attribute__((used)) static void un_resize_kernel(struct mlx5_ib_dev *dev, struct mlx5_ib_cq *cq)
{
 free_cq_buf(dev, cq->resize_buf);
 cq->resize_buf = ((void*)0);
}
