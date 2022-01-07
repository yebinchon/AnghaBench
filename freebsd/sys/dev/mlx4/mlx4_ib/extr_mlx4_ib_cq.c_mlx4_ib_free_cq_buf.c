
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_dev {int dev; } ;
struct mlx4_ib_cq_buf {int entry_size; int buf; } ;


 int mlx4_buf_free (int ,int,int *) ;

__attribute__((used)) static void mlx4_ib_free_cq_buf(struct mlx4_ib_dev *dev, struct mlx4_ib_cq_buf *buf, int cqe)
{
 mlx4_buf_free(dev->dev, (cqe + 1) * buf->entry_size, &buf->buf);
}
