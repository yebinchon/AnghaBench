
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_cq_buf {int buf; } ;


 void* mlx5_buf_offset (int *,int) ;

__attribute__((used)) static void *get_cqe_from_buf(struct mlx5_ib_cq_buf *buf, int n, int size)
{
 return mlx5_buf_offset(&buf->buf, n * size);
}
