
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int mdev; } ;
struct mlx5_ib_cq_buf {int buf; } ;


 int mlx5_buf_free (int ,int *) ;

__attribute__((used)) static void free_cq_buf(struct mlx5_ib_dev *dev, struct mlx5_ib_cq_buf *buf)
{
 mlx5_buf_free(dev->mdev, &buf->buf);
}
