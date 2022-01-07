
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_srq {int db; int buf; int wrid; } ;
struct mlx5_ib_dev {int mdev; } ;


 int kfree (int ) ;
 int mlx5_buf_free (int ,int *) ;
 int mlx5_db_free (int ,int *) ;

__attribute__((used)) static void destroy_srq_kernel(struct mlx5_ib_dev *dev, struct mlx5_ib_srq *srq)
{
 kfree(srq->wrid);
 mlx5_buf_free(dev->mdev, &srq->buf);
 mlx5_db_free(dev->mdev, &srq->db);
}
