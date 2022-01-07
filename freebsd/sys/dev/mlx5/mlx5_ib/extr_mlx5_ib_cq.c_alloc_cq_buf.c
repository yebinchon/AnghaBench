
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int mdev; } ;
struct mlx5_ib_cq_buf {int cqe_size; int nent; int buf; } ;


 int PAGE_SIZE ;
 int mlx5_buf_alloc (int ,int,int,int *) ;

__attribute__((used)) static int alloc_cq_buf(struct mlx5_ib_dev *dev, struct mlx5_ib_cq_buf *buf,
   int nent, int cqe_size)
{
 int err;

 err = mlx5_buf_alloc(dev->mdev, nent * cqe_size,
     2 * PAGE_SIZE, &buf->buf);
 if (err)
  return err;

 buf->cqe_size = cqe_size;
 buf->nent = nent;

 return 0;
}
